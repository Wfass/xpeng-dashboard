.class public Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;
.super Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;
.source "SeatViewModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$SeatMassagerTimer;,
        Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;
    }
.end annotation


# static fields
.field static final COUNTDOWN_TIME:J = 0xdbba0L

.field public static final DEFAULT_POSITION:[I

.field public static final MSMT_CTRL_FOLD:I = 0x1

.field public static final MSMT_CTRL_STOP:I = 0x3

.field public static final MSMT_CTRL_STOW_ENTER:I = 0x1

.field public static final MSMT_CTRL_STOW_RESTORE:I = 0x2

.field public static final MSMT_CTRL_STOW_STOP:I = 0x3

.field public static final MSMT_CTRL_UNFOLD:I = 0x2

.field public static final MSMT_FOLD_ACTIVATED:I = 0x2

.field public static final MSMT_FOLD_PENDING:I = 0x1

.field public static final MSMT_HEAD_AUTO_ADJ:I = 0x2

.field public static final MSMT_HEAD_INITAL_ADJ:I = 0x3

.field public static final MSMT_HEAD_MANUAL_ADJ:I = 0x1

.field public static final MSMT_HEAD_STOP:I = 0x0

.field public static final MSMT_STOWFUN_STOP:I = 0x5

.field public static final MSMT_STOW_ACTIVATED:I = 0x2

.field public static final MSMT_STOW_IN_PAUSE:I = 0x6

.field public static final MSMT_STOW_PENDING:I = 0x1

.field public static final MSMT_STOW_STATE_FULLY_FOLED:I = 0x1

.field public static final MSMT_STOW_STATE_NOT_FULLY_FOLED:I = 0x2

.field public static final MSMT_STOW_STATE_Reserved:I = 0x3

.field public static final MSMT_STOW_STATE_UNKNOWN:I = 0x0

.field public static final MSMT_TILT_STATE_FULLY_FOLED:I = 0x2

.field public static final MSMT_TILT_STATE_HALF_FOLED:I = 0x1

.field public static final MSMT_TILT_STATE_UNKNOWN:I = 0x0

.field public static final MSMT_TILT_STOP:I = 0x5

.field public static final MSMT_TL_FOLD_IN_PAUSE:I = 0x7

.field public static final MSMT_TR_FOLD_IN_PAUSE:I = 0x8

.field public static final MSMT_UNFOLD_ACTIVATED:I = 0x4

.field public static final MSMT_UNFOLD_PENDING:I = 0x3

.field public static final MSMT_UNSTOW_ACTIVATED:I = 0x4

.field public static final MSMT_UNSTOW_PENDING:I = 0x3

.field public static final MSM_EASYENTRY_ENTERED:I = 0x4

.field public static final MSM_EASYENTRY_PENDING:I = 0x3

.field public static final MSM_FOLD_INACTIVE:I = 0x0

.field public static final MSM_FUNCTION_INACTIVE:I = 0x0

.field public static final MSM_FUNCTION_STOP:I = 0x5

.field public static final MSM_MODE_CTRL_ENTER:I = 0x1

.field public static final MSM_MODE_CTRL_EXIT:I = 0x2

.field public static final MSM_MODE_CTRL_STOP:I = 0x3

.field public static final MSM_SEAT_AUTO_ADJ:I = 0x2

.field public static final MSM_SEAT_AVOIDANCE_ADJ:I = 0x6

.field public static final MSM_SEAT_EASYENTRY_ADJ:I = 0x4

.field public static final MSM_SEAT_INITAL_ADJ:I = 0x3

.field public static final MSM_SEAT_MANUAL_ADJ:I = 0x1

.field public static final MSM_SEAT_STOP:I = 0x0

.field public static final MSM_SEAT_ZEROGRAVITY_ADJ:I = 0x5

.field public static final MSM_STATE_DEFAULT:I = 0x3

.field public static final MSM_STATE_EASY_ENTRY:I = 0x2

.field public static final MSM_STATE_OTHER:I = 0x0

.field public static final MSM_STATE_ZERO_GRAVITY:I = 0x1

.field public static final MSM_STOWFUN_INACTIVE:I = 0x0

.field public static final MSM_ZEROGRAV_ENTERED:I = 0x2

.field public static final MSM_ZEROGRAV_PENDING:I = 0x1

.field private static final SEAT_ADJUST_INTERVAL_TIME:J = 0x32L

.field private static final SEAT_ADJUST_MAX_COUNT:J = 0x3e8L

.field public static final SEAT_ANGLE:I = 0x64

.field private static final SEAT_CONTROL_DISABLE_SPEED:I = 0x3

.field public static final SEAT_HEAD_HEIGHT:I = 0x28

.field public static final SEAT_HEAD_HOR:I = 0x32

.field public static final SEAT_HOR:I = 0x1a

.field public static final SEAT_LEG_HEIGHT:I = 0x0

.field public static final SEAT_LEG_HOR:I = 0x0

.field protected static final SEAT_RESTORE_TILT_POS:I = 0x32

.field private static final SEAT_SAVE_INTERVAL:J = 0x1f4L

.field private static final SEAT_SPEECH_HOR_ADJUST_COUNT:J = 0x28L

.field private static final SEAT_SPEECH_TILT_ADJUST_COUNT:J = 0x40L

.field private static final SEAT_SPEECH_VER_ADJUST_COUNT:J = 0x1aL

.field public static final SEAT_TILT:I = 0x3d

.field public static final SecRowLegHorLimit:I = 0x44

.field public static final SecRowLegVerLimitMax:I = 0x34

.field public static final SecRowLegVerLimitMin:I = 0x24

.field public static showSecRowLTEasyErrData:Z

.field public static showSecRowLTZeroErrData:Z

.field public static showSecRowRTEasyErrData:Z

.field public static showSecRowRTZeroErrData:Z

.field public static showTrdRowLTFoldErrData:Z

.field public static showTrdRowRTFoldErrData:Z

.field public static showTrdRowStowErrData:Z


# instance fields
.field private final mBackBeltWaring:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDriverSeatAdjustTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;

.field private final mDriverSeatCushion:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final mDriverSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

.field private final mDriverSeatHorz:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDriverSeatLeg:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDriverSeatOccupied:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected mDriverSeatSavedPos:[I

.field private final mDriverSeatTilt:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDriverSeatVert:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mDropDownRun:Ljava/lang/Runnable;

.field private final mDrvHeadrestNormal:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mDrvLumbData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mDrvMassageData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatMassage;",
            ">;"
        }
    .end annotation
.end field

.field private final mDrvMassageTimeData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDrvMassageTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$SeatMassagerTimer;

.field private final mDrvRearMassageData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatMassage;",
            ">;"
        }
    .end annotation
.end field

.field private final mDrvRearMassageTimeData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDrvRearMassageTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$SeatMassagerTimer;

.field private final mDrvRhythmData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatRhythm;",
            ">;"
        }
    .end annotation
.end field

.field private final mDrvSeatAntiFatiguePreviewData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mDrvSeatAntiFatigueStatus:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDrvSeatAntiFatigueSwData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mDrvSeatDropDownShowData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mDrvSeatLumbRelaxStatus:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatLumbRelax;",
            ">;"
        }
    .end annotation
.end field

.field private final mDrvSeatMoveStData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mDrvSeatSbrData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mDvrBeltWarn:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mEsbConfigMode:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mEsbMode:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mInPsnSelectProcessData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mInRLSelectProcessData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mInRRSelectProcessData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsDriverSeatManualMoving:Z

.field protected mIsDrvRestoreSafeChairBack:Z

.field protected mIsPsnRestoreSafeChairBack:Z

.field private mIsPsnSeatControlByBossKey:Z

.field private mIsPsnSeatManualMoving:Z

.field private mIsRearLeftSeatManualMoving:Z

.field private mIsRearRightSeatManualMoving:Z

.field private mIsTrdRowLeftSeatManualMoving:Z

.field private mIsTrdRowMidSeatManualMoving:Z

.field private mIsTrdRowRightSeatManualMoving:Z

.field private final mMcuIgState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPsnBeltWarn:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected mPsnDropDownRun:Ljava/lang/Runnable;

.field private final mPsnHeadrestNormal:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mPsnLumbData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mPsnMassageData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatMassage;",
            ">;"
        }
    .end annotation
.end field

.field private final mPsnMassageTimeData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mPsnMassageTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$SeatMassagerTimer;

.field private final mPsnRearMassageData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatMassage;",
            ">;"
        }
    .end annotation
.end field

.field private final mPsnRearMassageTimeData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mPsnRearMassageTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$SeatMassagerTimer;

.field private final mPsnRhythmData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatRhythm;",
            ">;"
        }
    .end annotation
.end field

.field private mPsnSeatAdjustTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;

.field private final mPsnSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

.field private final mPsnSeatDropDownShowData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mPsnSeatHorz:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPsnSeatLeg:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPsnSeatLumbRelaxStatus:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatLumbRelax;",
            ">;"
        }
    .end annotation
.end field

.field private final mPsnSeatMoveStData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mPsnSeatNameData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPsnSeatOccupied:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected mPsnSeatSavedPos:[I

.field private final mPsnSeatSbrData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mPsnSeatTilt:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPsnSeatVer:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final mPsnSeatWelcomeMode:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mPsnSrsEnableData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected mRLDropDownRun:Ljava/lang/Runnable;

.field private final mRLSeatLeg:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mRLSeatSavedPos:[I

.field private final mRLSeatTilt:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mRLStopMoveRun:Ljava/lang/Runnable;

.field protected mRRDropDownRun:Ljava/lang/Runnable;

.field private final mRRSeatLeg:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mRRSeatSavedPos:[I

.field private final mRRSeatTilt:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mRRStopMoveRun:Ljava/lang/Runnable;

.field private final mRearLeftSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

.field private final mRearRightSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

.field private mRearSeatLeftAdjustTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;

.field private mRearSeatRightAdjustTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;

.field private final mRearSeatSbrData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected final mRearSeatWelcomeMode:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mRlSeatOccupied:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mRmSeatOccupied:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mRrSeatOccupied:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mSavePsnPosTask:Ljava/lang/Runnable;

.field protected mSeatControlHandler:Landroid/os/Handler;

.field private mSeatCtrOsdTime:J

.field private final mSeatDrvRestoreSuccess:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mSeatDrvSaveSuccess:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mSeatLumbShowData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mSeatPsnHabitIndex:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSeatPsnRestoreSuccess:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mSeatPsnSaveSuccess:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mSeatPsnSeatEqualMemoryData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mSeatRLHabitIndex:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSeatRLRestoreSuccess:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mSeatRLSaveSuccess:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mSeatRRHabitIndex:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSeatRRRestoreSuccess:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mSeatRRSaveSuccess:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mSeatRlSeatEqualMemoryData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mSeatRrSeatEqualMemoryData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSeatWelcomeMode:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mSecLeftBeltWarningData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mSecMidBeltWarningData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mSecRightBeltWaringData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mSecRowLTEasyErrData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSecRowLTZeroErrData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSecRowLtEzOrZeroGStatus:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSecRowLtNameData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSecRowLtSeatAngle:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSecRowLtSeatHeadHeig:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSecRowLtSeatHeadHorz:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSecRowLtSeatHorz:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSecRowLtSeatLeSuHeig:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSecRowLtSeatMoveStatusData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSecRowLtStopMove:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mSecRowRTEasyErrData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSecRowRTZeroErrData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSecRowRtEzOrZeroGStatus:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSecRowRtNameData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSecRowRtSeatAngle:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSecRowRtSeatHeadHeig:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSecRowRtSeatHeadHorz:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSecRowRtSeatHorz:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSecRowRtSeatLeSuHeig:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSecRowRtSeatMoveStatusData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSecRowRtStopMove:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mTlSeatOccupied:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmSeatOccupied:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrSeatOccupied:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrdLeftBeltWarningData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrdMidBeltWarningData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrdRightBeltWarningData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrdRowLTFoldErrData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTrdRowLeftAdjustTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;

.field private final mTrdRowLeftSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

.field private final mTrdRowLtFoldStatus:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrdRowLtSeatFoldSuccessStatus:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrdRowLtSeatHeadVerticalPos:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrdRowLtSeatTiltPos:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTrdRowMidAdjustTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;

.field private final mTrdRowMidSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

.field private final mTrdRowMidSeatHeadVerticalPos:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrdRowRTFoldErrData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTrdRowRightAdjustTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;

.field private final mTrdRowRightSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

.field private final mTrdRowRtFoldStatus:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrdRowRtSeatFoldSuccessStatus:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrdRowRtSeatHeadVerticalPos:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrdRowRtSeatTiltPos:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrdRowStowErrData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrdRowStowInPause:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrdRowStowStatus:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrdRowStowSuccessStatus:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final resumeDrvRestoreSafeChairRun:Ljava/lang/Runnable;

.field private final resumePsnRestoreSafeChairRun:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 75
    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    const/4 v0, 0x1

    .line 130
    sput-boolean v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->showSecRowLTEasyErrData:Z

    .line 131
    sput-boolean v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->showSecRowLTZeroErrData:Z

    .line 132
    sput-boolean v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->showSecRowRTEasyErrData:Z

    .line 133
    sput-boolean v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->showSecRowRTZeroErrData:Z

    .line 134
    sput-boolean v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->showTrdRowLTFoldErrData:Z

    .line 135
    sput-boolean v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->showTrdRowRTFoldErrData:Z

    .line 136
    sput-boolean v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->showTrdRowStowErrData:Z

    return-void

    :array_0
    .array-data 4
        0x1a
        0x64
        0x3d
        0x0
        0x0
        0x28
        0x32
    .end array-data
.end method

.method public constructor <init>()V
    .locals 12

    .line 528
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;-><init>()V

    .line 141
    new-instance v0, Lcom/xiaopeng/carcontrol/bean/Seat;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/xiaopeng/carcontrol/bean/Seat;-><init>(Z)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    .line 146
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatOccupied:Landroidx/lifecycle/MutableLiveData;

    .line 147
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatHorz:Landroidx/lifecycle/MutableLiveData;

    .line 148
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatVert:Landroidx/lifecycle/MutableLiveData;

    .line 149
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatTilt:Landroidx/lifecycle/MutableLiveData;

    .line 150
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatLeg:Landroidx/lifecycle/MutableLiveData;

    .line 151
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatCushion:Landroidx/lifecycle/MutableLiveData;

    .line 153
    new-instance v0, Lcom/xiaopeng/carcontrol/bean/Seat;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/xiaopeng/carcontrol/bean/Seat;-><init>(Z)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    .line 154
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatOccupied:Landroidx/lifecycle/MutableLiveData;

    .line 155
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatHorz:Landroidx/lifecycle/MutableLiveData;

    .line 156
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatVer:Landroidx/lifecycle/MutableLiveData;

    .line 157
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatTilt:Landroidx/lifecycle/MutableLiveData;

    .line 158
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatLeg:Landroidx/lifecycle/MutableLiveData;

    .line 160
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRLSeatTilt:Landroidx/lifecycle/MutableLiveData;

    .line 161
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRRSeatTilt:Landroidx/lifecycle/MutableLiveData;

    .line 162
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRLSeatLeg:Landroidx/lifecycle/MutableLiveData;

    .line 163
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRRSeatLeg:Landroidx/lifecycle/MutableLiveData;

    .line 164
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowLtSeatHorz:Landroidx/lifecycle/MutableLiveData;

    .line 165
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowLtSeatLeSuHeig:Landroidx/lifecycle/MutableLiveData;

    .line 166
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowLtSeatHeadHorz:Landroidx/lifecycle/MutableLiveData;

    .line 167
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowLtSeatHeadHeig:Landroidx/lifecycle/MutableLiveData;

    .line 168
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowRtSeatHorz:Landroidx/lifecycle/MutableLiveData;

    .line 169
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowRtSeatLeSuHeig:Landroidx/lifecycle/MutableLiveData;

    .line 170
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowRtSeatHeadHorz:Landroidx/lifecycle/MutableLiveData;

    .line 171
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowRtSeatHeadHeig:Landroidx/lifecycle/MutableLiveData;

    .line 172
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowLtSeatAngle:Landroidx/lifecycle/MutableLiveData;

    .line 173
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowRtSeatAngle:Landroidx/lifecycle/MutableLiveData;

    .line 174
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowLtEzOrZeroGStatus:Landroidx/lifecycle/MutableLiveData;

    .line 175
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowRtEzOrZeroGStatus:Landroidx/lifecycle/MutableLiveData;

    .line 176
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowLtStopMove:Landroidx/lifecycle/MutableLiveData;

    .line 177
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowRtStopMove:Landroidx/lifecycle/MutableLiveData;

    .line 178
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowLtFoldStatus:Landroidx/lifecycle/MutableLiveData;

    .line 179
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowRtFoldStatus:Landroidx/lifecycle/MutableLiveData;

    .line 180
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowStowStatus:Landroidx/lifecycle/MutableLiveData;

    .line 181
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowStowSuccessStatus:Landroidx/lifecycle/MutableLiveData;

    .line 182
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowLtSeatFoldSuccessStatus:Landroidx/lifecycle/MutableLiveData;

    .line 183
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowRtSeatFoldSuccessStatus:Landroidx/lifecycle/MutableLiveData;

    .line 184
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowLtSeatTiltPos:Landroidx/lifecycle/MutableLiveData;

    .line 185
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowRtSeatTiltPos:Landroidx/lifecycle/MutableLiveData;

    .line 186
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowLtSeatHeadVerticalPos:Landroidx/lifecycle/MutableLiveData;

    .line 187
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowRtSeatHeadVerticalPos:Landroidx/lifecycle/MutableLiveData;

    .line 188
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowMidSeatHeadVerticalPos:Landroidx/lifecycle/MutableLiveData;

    .line 190
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowLtSeatMoveStatusData:Landroidx/lifecycle/MutableLiveData;

    .line 191
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowRtSeatMoveStatusData:Landroidx/lifecycle/MutableLiveData;

    .line 193
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowLTEasyErrData:Landroidx/lifecycle/MutableLiveData;

    .line 194
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowLTZeroErrData:Landroidx/lifecycle/MutableLiveData;

    .line 195
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowRTEasyErrData:Landroidx/lifecycle/MutableLiveData;

    .line 196
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowRTZeroErrData:Landroidx/lifecycle/MutableLiveData;

    .line 197
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowLTFoldErrData:Landroidx/lifecycle/MutableLiveData;

    .line 198
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowRTFoldErrData:Landroidx/lifecycle/MutableLiveData;

    .line 199
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowStowErrData:Landroidx/lifecycle/MutableLiveData;

    .line 200
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatNameData:Landroidx/lifecycle/MutableLiveData;

    .line 201
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowLtNameData:Landroidx/lifecycle/MutableLiveData;

    .line 202
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowRtNameData:Landroidx/lifecycle/MutableLiveData;

    .line 229
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatPsnHabitIndex:Landroidx/lifecycle/MutableLiveData;

    .line 230
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatRLHabitIndex:Landroidx/lifecycle/MutableLiveData;

    .line 231
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatRRHabitIndex:Landroidx/lifecycle/MutableLiveData;

    .line 233
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatPsnSeatEqualMemoryData:Landroidx/lifecycle/MutableLiveData;

    .line 234
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatRlSeatEqualMemoryData:Landroidx/lifecycle/MutableLiveData;

    .line 235
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatRrSeatEqualMemoryData:Landroidx/lifecycle/MutableLiveData;

    .line 237
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatDrvRestoreSuccess:Landroidx/lifecycle/MutableLiveData;

    .line 238
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatPsnRestoreSuccess:Landroidx/lifecycle/MutableLiveData;

    .line 239
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatRLRestoreSuccess:Landroidx/lifecycle/MutableLiveData;

    .line 240
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatRRRestoreSuccess:Landroidx/lifecycle/MutableLiveData;

    .line 246
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatDrvSaveSuccess:Landroidx/lifecycle/MutableLiveData;

    .line 247
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatPsnSaveSuccess:Landroidx/lifecycle/MutableLiveData;

    .line 248
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatRLSaveSuccess:Landroidx/lifecycle/MutableLiveData;

    .line 249
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatRRSaveSuccess:Landroidx/lifecycle/MutableLiveData;

    .line 372
    new-instance v0, Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-direct {v0, v2}, Lcom/xiaopeng/carcontrol/bean/Seat;-><init>(Z)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearLeftSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    .line 373
    new-instance v0, Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-direct {v0, v2}, Lcom/xiaopeng/carcontrol/bean/Seat;-><init>(Z)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearRightSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    .line 374
    new-instance v0, Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-direct {v0, v2}, Lcom/xiaopeng/carcontrol/bean/Seat;-><init>(Z)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowLeftSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    .line 375
    new-instance v0, Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-direct {v0, v2}, Lcom/xiaopeng/carcontrol/bean/Seat;-><init>(Z)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowRightSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    .line 376
    new-instance v0, Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-direct {v0, v2}, Lcom/xiaopeng/carcontrol/bean/Seat;-><init>(Z)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowMidSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    .line 378
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRlSeatOccupied:Landroidx/lifecycle/MutableLiveData;

    .line 379
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRmSeatOccupied:Landroidx/lifecycle/MutableLiveData;

    .line 380
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRrSeatOccupied:Landroidx/lifecycle/MutableLiveData;

    .line 381
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTlSeatOccupied:Landroidx/lifecycle/MutableLiveData;

    .line 382
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTmSeatOccupied:Landroidx/lifecycle/MutableLiveData;

    .line 383
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrSeatOccupied:Landroidx/lifecycle/MutableLiveData;

    .line 384
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDvrBeltWarn:Landroidx/lifecycle/MutableLiveData;

    .line 385
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnBeltWarn:Landroidx/lifecycle/MutableLiveData;

    .line 387
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDrvHeadrestNormal:Landroidx/lifecycle/MutableLiveData;

    .line 388
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnHeadrestNormal:Landroidx/lifecycle/MutableLiveData;

    .line 389
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMcuIgState:Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x0

    .line 391
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatAdjustTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;

    .line 392
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatAdjustTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;

    .line 393
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearSeatLeftAdjustTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;

    .line 394
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearSeatRightAdjustTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;

    .line 395
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowLeftAdjustTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;

    .line 396
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowRightAdjustTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;

    .line 397
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowMidAdjustTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;

    .line 398
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsDriverSeatManualMoving:Z

    .line 399
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsPsnSeatManualMoving:Z

    .line 400
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsPsnSeatControlByBossKey:Z

    .line 401
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsRearLeftSeatManualMoving:Z

    .line 402
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsRearRightSeatManualMoving:Z

    .line 403
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsTrdRowLeftSeatManualMoving:Z

    .line 404
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsTrdRowRightSeatManualMoving:Z

    .line 405
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsTrdRowMidSeatManualMoving:Z

    .line 407
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatWelcomeMode:Landroidx/lifecycle/MutableLiveData;

    .line 408
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatWelcomeMode:Landroidx/lifecycle/MutableLiveData;

    .line 409
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearSeatWelcomeMode:Landroidx/lifecycle/MutableLiveData;

    .line 411
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mBackBeltWaring:Landroidx/lifecycle/MutableLiveData;

    .line 412
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSrsEnableData:Landroidx/lifecycle/MutableLiveData;

    .line 414
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecLeftBeltWarningData:Landroidx/lifecycle/MutableLiveData;

    .line 415
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecMidBeltWarningData:Landroidx/lifecycle/MutableLiveData;

    .line 416
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRightBeltWaringData:Landroidx/lifecycle/MutableLiveData;

    .line 417
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdLeftBeltWarningData:Landroidx/lifecycle/MutableLiveData;

    .line 418
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdMidBeltWarningData:Landroidx/lifecycle/MutableLiveData;

    .line 419
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRightBeltWarningData:Landroidx/lifecycle/MutableLiveData;

    .line 421
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDrvSeatDropDownShowData:Landroidx/lifecycle/MutableLiveData;

    .line 422
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatDropDownShowData:Landroidx/lifecycle/MutableLiveData;

    .line 424
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDrvMassageData:Landroidx/lifecycle/MutableLiveData;

    .line 425
    new-instance v3, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v3}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDrvRearMassageData:Landroidx/lifecycle/MutableLiveData;

    .line 426
    new-instance v4, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v4}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnMassageData:Landroidx/lifecycle/MutableLiveData;

    .line 427
    new-instance v5, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v5}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnRearMassageData:Landroidx/lifecycle/MutableLiveData;

    .line 429
    new-instance v6, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v6}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v6, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDrvMassageTimeData:Landroidx/lifecycle/MutableLiveData;

    .line 430
    new-instance v6, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v6}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v6, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDrvRearMassageTimeData:Landroidx/lifecycle/MutableLiveData;

    .line 431
    new-instance v6, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v6}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v6, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnMassageTimeData:Landroidx/lifecycle/MutableLiveData;

    .line 432
    new-instance v6, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v6}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v6, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnRearMassageTimeData:Landroidx/lifecycle/MutableLiveData;

    .line 435
    new-instance v6, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v6}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v6, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDrvRhythmData:Landroidx/lifecycle/MutableLiveData;

    .line 436
    new-instance v7, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v7}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v7, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnRhythmData:Landroidx/lifecycle/MutableLiveData;

    .line 438
    new-instance v8, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v8}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v8, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mInPsnSelectProcessData:Landroidx/lifecycle/MutableLiveData;

    .line 443
    new-instance v8, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v8}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v8, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mInRLSelectProcessData:Landroidx/lifecycle/MutableLiveData;

    .line 448
    new-instance v8, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v8}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v8, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mInRRSelectProcessData:Landroidx/lifecycle/MutableLiveData;

    .line 453
    new-instance v8, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v8}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v8, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowStowInPause:Landroidx/lifecycle/MutableLiveData;

    .line 456
    new-instance v8, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v8}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v8, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDrvSeatSbrData:Landroidx/lifecycle/MutableLiveData;

    .line 461
    new-instance v8, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v8}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v8, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatSbrData:Landroidx/lifecycle/MutableLiveData;

    .line 466
    new-instance v8, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v8}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v8, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearSeatSbrData:Landroidx/lifecycle/MutableLiveData;

    .line 480
    new-instance v8, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v8}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v8, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mEsbMode:Landroidx/lifecycle/MutableLiveData;

    .line 481
    new-instance v8, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v8}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v8, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mEsbConfigMode:Landroidx/lifecycle/MutableLiveData;

    .line 482
    new-instance v8, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v8}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v8, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDrvLumbData:Landroidx/lifecycle/MutableLiveData;

    .line 483
    new-instance v8, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v8}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v8, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnLumbData:Landroidx/lifecycle/MutableLiveData;

    .line 484
    new-instance v8, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v8}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v8, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatLumbShowData:Landroidx/lifecycle/MutableLiveData;

    .line 486
    new-instance v8, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v8}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v8, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDrvSeatMoveStData:Landroidx/lifecycle/MutableLiveData;

    .line 487
    new-instance v8, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v8}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v8, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatMoveStData:Landroidx/lifecycle/MutableLiveData;

    .line 488
    new-instance v8, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v8}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v8, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDrvSeatAntiFatigueSwData:Landroidx/lifecycle/MutableLiveData;

    .line 489
    new-instance v8, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v8}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v8, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDrvSeatAntiFatigueStatus:Landroidx/lifecycle/MutableLiveData;

    .line 490
    new-instance v8, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v8}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v8, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDrvSeatAntiFatiguePreviewData:Landroidx/lifecycle/MutableLiveData;

    .line 491
    new-instance v8, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v8}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v8, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDrvSeatLumbRelaxStatus:Landroidx/lifecycle/MutableLiveData;

    .line 492
    new-instance v8, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v8}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v8, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatLumbRelaxStatus:Landroidx/lifecycle/MutableLiveData;

    .line 511
    new-instance v8, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$1;

    invoke-direct {v8, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$1;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;)V

    iput-object v8, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->resumeDrvRestoreSafeChairRun:Ljava/lang/Runnable;

    .line 518
    new-instance v8, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$2;

    invoke-direct {v8, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$2;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;)V

    iput-object v8, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->resumePsnRestoreSafeChairRun:Ljava/lang/Runnable;

    .line 1396
    new-instance v8, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$FGmQtHBFlmGFkIW1D3o7BP2Fb-s;

    invoke-direct {v8, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$FGmQtHBFlmGFkIW1D3o7BP2Fb-s;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;)V

    iput-object v8, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSavePsnPosTask:Ljava/lang/Runnable;

    .line 3221
    new-instance v8, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$kWC9zBSDuijmX3XqHqaxq1ci5mk;

    invoke-direct {v8, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$kWC9zBSDuijmX3XqHqaxq1ci5mk;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;)V

    iput-object v8, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDropDownRun:Ljava/lang/Runnable;

    .line 3280
    new-instance v8, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$Pd4YAsLPqG9bLnlWckItN_30wpY;

    invoke-direct {v8, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$Pd4YAsLPqG9bLnlWckItN_30wpY;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;)V

    iput-object v8, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnDropDownRun:Ljava/lang/Runnable;

    .line 3332
    new-instance v8, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$i7ypt3Ou5k2ZmWFm_RqZbdgvbv0;

    invoke-direct {v8, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$i7ypt3Ou5k2ZmWFm_RqZbdgvbv0;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;)V

    iput-object v8, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRLDropDownRun:Ljava/lang/Runnable;

    .line 3346
    new-instance v8, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$S5AdPHef9GuRRQFYkBFLYJAgLjM;

    invoke-direct {v8, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$S5AdPHef9GuRRQFYkBFLYJAgLjM;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;)V

    iput-object v8, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRLStopMoveRun:Ljava/lang/Runnable;

    .line 3362
    new-instance v8, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$f6qB_F8EFOgmHOq_ZG1WK4Z8GKk;

    invoke-direct {v8, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$f6qB_F8EFOgmHOq_ZG1WK4Z8GKk;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;)V

    iput-object v8, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRRDropDownRun:Ljava/lang/Runnable;

    .line 3376
    new-instance v8, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$E0RdhuGxU14-DzxHkP3mfBHTKEQ;

    invoke-direct {v8, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$E0RdhuGxU14-DzxHkP3mfBHTKEQ;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;)V

    iput-object v8, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRRStopMoveRun:Ljava/lang/Runnable;

    .line 530
    iget-object v8, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatHorzPos()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/xiaopeng/carcontrol/bean/Seat;->setSeatHorzValue(I)V

    .line 531
    iget-object v8, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatVerPos()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/xiaopeng/carcontrol/bean/Seat;->setSeatVertValue(I)V

    .line 532
    iget-object v8, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatTiltPos()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/xiaopeng/carcontrol/bean/Seat;->setSeatTiltValue(I)V

    .line 533
    iget-object v8, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatLegPos()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/xiaopeng/carcontrol/bean/Seat;->setSeatLegValue(I)V

    const-string v8, "isSupportMsmP"

    .line 535
    invoke-static {v8}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 536
    iget-object v8, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPSeatHorzPos()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/xiaopeng/carcontrol/bean/Seat;->setSeatHorzValue(I)V

    .line 538
    iget-object v8, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPSeatTiltPos()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/xiaopeng/carcontrol/bean/Seat;->setSeatTiltValue(I)V

    .line 540
    :cond_0
    new-instance v8, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatMassage;

    iget-object v9, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    .line 541
    invoke-interface {v9, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getMassagerEffectId(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    .line 542
    invoke-interface {v10, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getMassagerIntensity(I)I

    move-result v10

    iget-object v11, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    .line 543
    invoke-interface {v11, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->isMassagerRunning(I)Z

    move-result v11

    invoke-direct {v8, v2, v9, v10, v11}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatMassage;-><init>(ILjava/lang/String;IZ)V

    .line 540
    invoke-virtual {v0, v8}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 544
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatMassage;

    iget-object v8, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    .line 545
    invoke-interface {v8, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getMassagerEffectId(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    .line 546
    invoke-interface {v9, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getMassagerIntensity(I)I

    move-result v9

    iget-object v10, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    .line 547
    invoke-interface {v10, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->isMassagerRunning(I)Z

    move-result v10

    invoke-direct {v0, v1, v8, v9, v10}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatMassage;-><init>(ILjava/lang/String;IZ)V

    .line 544
    invoke-virtual {v4, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 548
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatMassage;

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    const/4 v8, 0x2

    .line 549
    invoke-interface {v4, v8}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getMassagerEffectId(I)Ljava/lang/String;

    move-result-object v4

    iget-object v9, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    .line 550
    invoke-interface {v9, v8}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getMassagerIntensity(I)I

    move-result v9

    iget-object v10, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    .line 551
    invoke-interface {v10, v8}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->isMassagerRunning(I)Z

    move-result v10

    invoke-direct {v0, v8, v4, v9, v10}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatMassage;-><init>(ILjava/lang/String;IZ)V

    .line 548
    invoke-virtual {v3, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 552
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatMassage;

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    const/4 v4, 0x3

    .line 553
    invoke-interface {v3, v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getMassagerEffectId(I)Ljava/lang/String;

    move-result-object v3

    iget-object v8, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    .line 554
    invoke-interface {v8, v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getMassagerIntensity(I)I

    move-result v8

    iget-object v9, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    .line 555
    invoke-interface {v9, v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->isMassagerRunning(I)Z

    move-result v9

    invoke-direct {v0, v4, v3, v8, v9}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatMassage;-><init>(ILjava/lang/String;IZ)V

    .line 552
    invoke-virtual {v5, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 557
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatRhythm;

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    .line 558
    invoke-interface {v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getRhythmMode()I

    move-result v3

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    .line 559
    invoke-interface {v4, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getRhythmIntensity(I)I

    move-result v4

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    .line 560
    invoke-interface {v5, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->isRhythmRunning(I)Z

    move-result v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatRhythm;-><init>(IIIZ)V

    .line 557
    invoke-virtual {v6, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 561
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatRhythm;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    .line 562
    invoke-interface {v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getRhythmMode()I

    move-result v2

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    .line 563
    invoke-interface {v3, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getRhythmIntensity(I)I

    move-result v3

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    .line 564
    invoke-interface {v4, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->isRhythmRunning(I)Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatRhythm;-><init>(IIIZ)V

    .line 561
    invoke-virtual {v7, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 566
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->registerCallback(Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;)V

    .line 567
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->registerCallback(Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;)V

    .line 568
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mBcmCallback:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController$Callback;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->registerCallback(Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlTrdRowLeftSeat()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;)Lcom/xiaopeng/carcontrol/bean/Seat;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowLeftSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;)Lcom/xiaopeng/carcontrol/bean/Seat;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearRightSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlPsnSeat()V

    return-void
.end method

.method static synthetic access$1200(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;)Lcom/xiaopeng/carcontrol/bean/Seat;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDrvMassageTimeData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnMassageTimeData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDrvRearMassageTimeData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnRearMassageTimeData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlTrdRowRightSeat()V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;)Lcom/xiaopeng/carcontrol/bean/Seat;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowRightSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlTrdRowMidSeat()V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;)Lcom/xiaopeng/carcontrol/bean/Seat;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowMidSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    return-object p0
.end method

.method static synthetic access$600(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlRearLeftSeat()V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;)Lcom/xiaopeng/carcontrol/bean/Seat;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearLeftSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    return-object p0
.end method

.method static synthetic access$800(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlDriverSeat()V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlRearRightSeat()V

    return-void
.end method

.method private calculateWelcomeModeGoOffPosition()I
    .locals 5

    .line 3638
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getDSeatHorzPos()I

    move-result v0

    const/16 v1, 0x19

    if-le v0, v1, :cond_1

    const/16 v2, 0x2d

    if-le v0, v2, :cond_0

    add-int/lit8 v1, v0, -0x14

    .line 3641
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkEnterWelcomeModeGoOff start new SeatHorzPos: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", curSeatHorzPos: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 3644
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkEnterWelcomeModeGoOff curSeatHorzPos: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", do not need adjust seat"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0
.end method

.method private controlDriverSeat()V
    .locals 5

    .line 946
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingType()I

    move-result v0

    .line 947
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingDirection()I

    move-result v1

    .line 948
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "controlType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",direction "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v2, 0x2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 979
    :pswitch_0
    invoke-direct {p0, v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isCanSetSeatPos(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 980
    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDSeatCushionMove(II)V

    goto :goto_0

    .line 982
    :cond_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlDriverSeatEnd(I)V

    goto :goto_0

    .line 990
    :pswitch_1
    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDSeatLumbVerMove(II)V

    goto :goto_0

    .line 986
    :pswitch_2
    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDSeatLumbHorzMove(II)V

    goto :goto_0

    .line 972
    :pswitch_3
    invoke-direct {p0, v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isCanSetSeatPos(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 973
    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDSeatLegMove(II)V

    goto :goto_0

    .line 975
    :cond_1
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlDriverSeatEnd(I)V

    goto :goto_0

    .line 965
    :pswitch_4
    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isCanSetSeatPosForTilt(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 966
    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDSeatTiltMove(II)V

    goto :goto_0

    .line 968
    :cond_2
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlDriverSeatEnd(I)V

    goto :goto_0

    .line 958
    :pswitch_5
    invoke-direct {p0, v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isCanSetSeatPos(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 959
    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDSeatVerMove(II)V

    goto :goto_0

    .line 961
    :cond_3
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlDriverSeatEnd(I)V

    goto :goto_0

    .line 951
    :pswitch_6
    invoke-direct {p0, v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isCanSetSeatPos(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 952
    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDSeatHorzMove(II)V

    goto :goto_0

    .line 954
    :cond_4
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlDriverSeatEnd(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private controlDriverSeatStart(Z)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isSpeech"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1076
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsDriverSeatManualMoving:Z

    .line 1077
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatAdjustTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;

    if-eqz v1, :cond_0

    .line 1078
    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->cancel()V

    const/4 v1, 0x0

    .line 1079
    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatAdjustTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;

    .line 1081
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingType()I

    move-result v1

    .line 1082
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingDirection()I

    move-result v2

    const-wide/16 v3, 0x3e8

    .line 1084
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "start controlType "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",direction "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-wide/16 v5, 0x28

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 1115
    :pswitch_0
    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDSeatCushionMove(II)V

    if-eqz p1, :cond_1

    goto :goto_0

    .line 1129
    :pswitch_1
    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDSeatLumbVerMove(II)V

    if-eqz p1, :cond_1

    goto :goto_0

    .line 1122
    :pswitch_2
    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDSeatLumbHorzMove(II)V

    if-eqz p1, :cond_1

    goto :goto_0

    .line 1108
    :pswitch_3
    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDSeatLegMove(II)V

    if-eqz p1, :cond_1

    goto :goto_0

    .line 1101
    :pswitch_4
    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDSeatTiltMove(II)V

    if-eqz p1, :cond_1

    goto :goto_0

    .line 1094
    :pswitch_5
    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDSeatVerMove(II)V

    if-eqz p1, :cond_1

    goto :goto_0

    .line 1087
    :pswitch_6
    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDSeatHorzMove(II)V

    if-eqz p1, :cond_1

    :goto_0
    move-wide v3, v5

    .line 1139
    :cond_1
    :goto_1
    new-instance p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$q44saSeeL6lovYTDFexVHLSqu_E;

    invoke-direct {p1, p0, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$q44saSeeL6lovYTDFexVHLSqu_E;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;J)V

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private controlPsnSeat()V
    .locals 3

    .line 1146
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingType()I

    move-result v0

    .line 1147
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingDirection()I

    move-result v1

    const/4 v2, 0x2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1170
    :pswitch_0
    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPSeatLumbVerMove(II)V

    goto :goto_0

    .line 1167
    :pswitch_1
    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPSeatLumbHorzMove(II)V

    goto :goto_0

    .line 1163
    :pswitch_2
    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPSeatLegMove(II)V

    goto :goto_0

    .line 1159
    :pswitch_3
    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPSeatTiltMove(II)V

    goto :goto_0

    .line 1155
    :pswitch_4
    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPSeatVerMove(II)V

    goto :goto_0

    .line 1151
    :pswitch_5
    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPSeatHorzMove(II)V

    :goto_0
    return-void

    nop

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

.method private controlPsnSeatStart(Z)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isSpeech"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1179
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsPsnSeatManualMoving:Z

    .line 1181
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatAdjustTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;

    if-eqz v1, :cond_0

    .line 1182
    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->cancel()V

    const/4 v1, 0x0

    .line 1183
    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatAdjustTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;

    .line 1185
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingType()I

    move-result v1

    .line 1186
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingDirection()I

    move-result v2

    const-wide/16 v3, 0x3e8

    .line 1188
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "controlPsnSeatStart, controlType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", direction: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v5, 0x1a

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 1226
    :pswitch_0
    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPSeatLumbVerMove(II)V

    if-eqz p1, :cond_1

    goto :goto_0

    .line 1219
    :pswitch_1
    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPSeatLumbHorzMove(II)V

    if-eqz p1, :cond_1

    goto :goto_0

    .line 1212
    :pswitch_2
    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPSeatLegMove(II)V

    if-eqz p1, :cond_1

    goto :goto_0

    .line 1206
    :pswitch_3
    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPSeatTiltMove(II)V

    if-eqz p1, :cond_1

    const-wide/16 v3, 0x40

    goto :goto_1

    .line 1199
    :pswitch_4
    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPSeatVerMove(II)V

    if-eqz p1, :cond_1

    :goto_0
    move-wide v3, v5

    goto :goto_1

    .line 1192
    :pswitch_5
    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPSeatHorzMove(II)V

    if-eqz p1, :cond_1

    const-wide/16 v3, 0x28

    .line 1237
    :cond_1
    :goto_1
    new-instance p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$xn2e5RB-Y5h0yRx2aQi5p1qkAls;

    invoke-direct {p1, p0, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$xn2e5RB-Y5h0yRx2aQi5p1qkAls;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;J)V

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

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

.method private controlRearLeftSeat()V
    .locals 5

    .line 3813
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearLeftSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingType()I

    move-result v0

    .line 3814
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearLeftSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingDirection()I

    move-result v1

    .line 3815
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "controlType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",direction "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v2, 0x2

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 3840
    :pswitch_1
    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatHeadRestHorzMove(II)V

    goto :goto_0

    .line 3837
    :pswitch_2
    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatHeadRestVerMove(II)V

    goto :goto_0

    .line 3828
    :pswitch_3
    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatLegVerMove(II)V

    goto :goto_0

    .line 3834
    :pswitch_4
    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatLumbVerMove(II)V

    goto :goto_0

    .line 3831
    :pswitch_5
    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatLumbHorzMove(II)V

    goto :goto_0

    .line 3825
    :pswitch_6
    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatLegMove(II)V

    goto :goto_0

    .line 3818
    :pswitch_7
    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatTiltMove(II)V

    goto :goto_0

    .line 3821
    :pswitch_8
    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeaHorzMove(II)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private controlRearLeftSeatStart(Z)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isSpeech"
        }
    .end annotation

    const/4 v0, 0x1

    .line 3690
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsRearLeftSeatManualMoving:Z

    .line 3691
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearSeatLeftAdjustTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;

    if-eqz v1, :cond_0

    .line 3692
    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->cancel()V

    const/4 v1, 0x0

    .line 3693
    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearSeatLeftAdjustTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;

    .line 3695
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearLeftSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingType()I

    move-result v1

    .line 3696
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearLeftSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingDirection()I

    move-result v2

    const-wide/16 v3, 0x3e8

    .line 3698
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "start controlType "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",direction "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-wide/16 v5, 0x28

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 3745
    :pswitch_1
    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatHeadRestHorzMove(II)V

    if-eqz p1, :cond_1

    goto :goto_0

    .line 3739
    :pswitch_2
    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatHeadRestVerMove(II)V

    if-eqz p1, :cond_1

    goto :goto_0

    .line 3721
    :pswitch_3
    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatLegVerMove(II)V

    if-eqz p1, :cond_1

    goto :goto_0

    .line 3733
    :pswitch_4
    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatLumbVerMove(II)V

    if-eqz p1, :cond_1

    goto :goto_0

    .line 3727
    :pswitch_5
    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatLumbHorzMove(II)V

    if-eqz p1, :cond_1

    goto :goto_0

    .line 3714
    :pswitch_6
    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatLegMove(II)V

    if-eqz p1, :cond_1

    goto :goto_0

    .line 3707
    :pswitch_7
    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatTiltMove(II)V

    if-eqz p1, :cond_1

    goto :goto_0

    .line 3701
    :pswitch_8
    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeaHorzMove(II)V

    if-eqz p1, :cond_1

    :goto_0
    move-wide v3, v5

    .line 3754
    :cond_1
    :goto_1
    new-instance p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$8IHs5MTls3s2G0gwNOKzLWqRFZA;

    invoke-direct {p1, p0, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$8IHs5MTls3s2G0gwNOKzLWqRFZA;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;J)V

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private controlRearRightSeat()V
    .locals 5

    .line 4002
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearRightSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingType()I

    move-result v0

    .line 4003
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearRightSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingDirection()I

    move-result v1

    .line 4004
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "controlType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",direction "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v2, 0x2

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 4030
    :pswitch_1
    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatHeadRestHorzMove(II)V

    goto :goto_0

    .line 4027
    :pswitch_2
    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatHeadRestVerMove(II)V

    goto :goto_0

    .line 4018
    :pswitch_3
    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatLegVerMove(II)V

    goto :goto_0

    .line 4024
    :pswitch_4
    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatLumbVerMove(II)V

    goto :goto_0

    .line 4021
    :pswitch_5
    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatLumbHorzMove(II)V

    goto :goto_0

    .line 4014
    :pswitch_6
    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatLegMove(II)V

    goto :goto_0

    .line 4010
    :pswitch_7
    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatTiltMove(II)V

    goto :goto_0

    .line 4007
    :pswitch_8
    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeaHorzMove(II)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private controlRearRightSeatStart(Z)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isSpeech"
        }
    .end annotation

    const/4 v0, 0x1

    .line 3879
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsRearRightSeatManualMoving:Z

    .line 3880
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearSeatRightAdjustTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;

    if-eqz v1, :cond_0

    .line 3881
    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->cancel()V

    const/4 v1, 0x0

    .line 3882
    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearSeatRightAdjustTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;

    .line 3884
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearRightSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingType()I

    move-result v1

    .line 3885
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearRightSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingDirection()I

    move-result v2

    const-wide/16 v3, 0x3e8

    .line 3887
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "start controlType "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",direction "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-wide/16 v5, 0x28

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 3934
    :pswitch_1
    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatHeadRestHorzMove(II)V

    if-eqz p1, :cond_1

    goto :goto_0

    .line 3928
    :pswitch_2
    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatHeadRestVerMove(II)V

    if-eqz p1, :cond_1

    goto :goto_0

    .line 3910
    :pswitch_3
    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatLegVerMove(II)V

    if-eqz p1, :cond_1

    goto :goto_0

    .line 3922
    :pswitch_4
    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatLumbVerMove(II)V

    if-eqz p1, :cond_1

    goto :goto_0

    .line 3916
    :pswitch_5
    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatLumbHorzMove(II)V

    if-eqz p1, :cond_1

    goto :goto_0

    .line 3903
    :pswitch_6
    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatLegMove(II)V

    if-eqz p1, :cond_1

    goto :goto_0

    .line 3896
    :pswitch_7
    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatTiltMove(II)V

    if-eqz p1, :cond_1

    goto :goto_0

    .line 3890
    :pswitch_8
    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeaHorzMove(II)V

    if-eqz p1, :cond_1

    :goto_0
    move-wide v3, v5

    .line 3943
    :cond_1
    :goto_1
    new-instance p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$a5gZnhiqotZfXv_oWLin74gNTSk;

    invoke-direct {p1, p0, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$a5gZnhiqotZfXv_oWLin74gNTSk;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;J)V

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private controlTrdRowLeftSeat()V
    .locals 5

    .line 4129
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowLeftSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingType()I

    move-result v0

    .line 4130
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowLeftSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingDirection()I

    move-result v1

    .line 4131
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "controlType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",direction "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq v0, v2, :cond_1

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 4137
    :cond_0
    invoke-virtual {p0, v3, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowLeftSeatHeadVerMove(II)V

    goto :goto_0

    .line 4134
    :cond_1
    invoke-virtual {p0, v3, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowLeftSeatTiltMove(II)V

    :goto_0
    return-void
.end method

.method private controlTrdRowLeftSeatStart(Z)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isSpeech"
        }
    .end annotation

    const/4 v0, 0x1

    .line 4065
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsTrdRowLeftSeatManualMoving:Z

    .line 4066
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowLeftAdjustTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;

    if-eqz v1, :cond_0

    .line 4067
    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->cancel()V

    const/4 v1, 0x0

    .line 4068
    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowLeftAdjustTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;

    .line 4070
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowLeftSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingType()I

    move-result v1

    .line 4071
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowLeftSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingDirection()I

    move-result v2

    const-wide/16 v3, 0x3e8

    .line 4073
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "start controlType "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",direction "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v5, 0x3

    const-wide/16 v6, 0x28

    if-eq v1, v5, :cond_2

    const/16 v5, 0x8

    if-eq v1, v5, :cond_1

    goto :goto_1

    .line 4082
    :cond_1
    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowLeftSeatHeadVerMove(II)V

    if-eqz p1, :cond_3

    goto :goto_0

    .line 4076
    :cond_2
    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowLeftSeatTiltMove(II)V

    if-eqz p1, :cond_3

    :goto_0
    move-wide v3, v6

    .line 4091
    :cond_3
    :goto_1
    new-instance p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$nh6k5nzVj5fQYDXHfs3ku9VyQ2Q;

    invoke-direct {p1, p0, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$nh6k5nzVj5fQYDXHfs3ku9VyQ2Q;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;J)V

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private controlTrdRowMidSeat()V
    .locals 5

    .line 4333
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowMidSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingType()I

    move-result v0

    .line 4334
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowMidSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingDirection()I

    move-result v1

    .line 4335
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "controlType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",direction "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 4338
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowMidSeatHeadVerMove(II)V

    :goto_0
    return-void
.end method

.method private controlTrdRowMidSeatStart(Z)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isSpeech"
        }
    .end annotation

    const/4 v0, 0x1

    .line 4278
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsTrdRowMidSeatManualMoving:Z

    .line 4279
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowMidAdjustTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;

    if-eqz v1, :cond_0

    .line 4280
    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->cancel()V

    const/4 v1, 0x0

    .line 4281
    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowMidAdjustTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;

    .line 4283
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowMidSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingType()I

    move-result v1

    .line 4284
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowMidSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingDirection()I

    move-result v2

    const-wide/16 v3, 0x3e8

    .line 4286
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "start controlType "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",direction "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v5, 0x8

    if-eq v1, v5, :cond_1

    goto :goto_0

    .line 4289
    :cond_1
    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowMidSeatHeadVerMove(II)V

    if-eqz p1, :cond_2

    const-wide/16 v3, 0x28

    .line 4298
    :cond_2
    :goto_0
    new-instance p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$dNNvWKkjAkiyKhwDlpsx95Cb9aQ;

    invoke-direct {p1, p0, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$dNNvWKkjAkiyKhwDlpsx95Cb9aQ;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;J)V

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private controlTrdRowRightSeat()V
    .locals 5

    .line 4238
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowRightSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingType()I

    move-result v0

    .line 4239
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowRightSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingDirection()I

    move-result v1

    .line 4240
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "controlType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",direction "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq v0, v2, :cond_1

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 4246
    :cond_0
    invoke-virtual {p0, v3, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowRightSeatHeadVerMove(II)V

    goto :goto_0

    .line 4243
    :cond_1
    invoke-virtual {p0, v3, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowRightSeatTiltMove(II)V

    :goto_0
    return-void
.end method

.method private controlTrdRowRightSeatStart(Z)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isSpeech"
        }
    .end annotation

    const/4 v0, 0x1

    .line 4174
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsTrdRowRightSeatManualMoving:Z

    .line 4175
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowRightAdjustTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;

    if-eqz v1, :cond_0

    .line 4176
    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->cancel()V

    const/4 v1, 0x0

    .line 4177
    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowRightAdjustTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;

    .line 4179
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowRightSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingType()I

    move-result v1

    .line 4180
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowRightSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingDirection()I

    move-result v2

    const-wide/16 v3, 0x3e8

    .line 4182
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "start controlType "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",direction "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v5, 0x3

    const-wide/16 v6, 0x28

    if-eq v1, v5, :cond_2

    const/16 v5, 0x8

    if-eq v1, v5, :cond_1

    goto :goto_1

    .line 4191
    :cond_1
    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowRightSeatHeadVerMove(II)V

    if-eqz p1, :cond_3

    goto :goto_0

    .line 4185
    :cond_2
    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowRightSeatTiltMove(II)V

    if-eqz p1, :cond_3

    :goto_0
    move-wide v3, v6

    .line 4200
    :cond_3
    :goto_1
    new-instance p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$D0rDNVAdIxLMLBDMDVIVnZQkGkI;

    invoke-direct {p1, p0, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$D0rDNVAdIxLMLBDMDVIVnZQkGkI;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;J)V

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private handleDropDownMenu()V
    .locals 4

    .line 3175
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isSupportMsm()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3176
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    const-string v1, "handlerDropDownMenu NOT SUPPORT MSMD"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3179
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsDriverSeatManualMoving:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsSeatUiCtrlResume:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isWelcomeModeState()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3180
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatControlHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 3181
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatControlHandler:Landroid/os/Handler;

    .line 3183
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatControlHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDropDownRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3184
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatControlHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDropDownRun:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3186
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " handlerDropDownMenu mIsDriverSeatManualMoving="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsDriverSeatManualMoving:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsSeatUiCtrlResume="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsSeatUiCtrlResume:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3188
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatControlHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 3189
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDropDownRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private handlePSeatPosChange()V
    .locals 6

    .line 2301
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipPsnSeatControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/space/VipPsnSeatControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipPsnSeatControl;->getSeatStatus()Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->Normal:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    if-ne v0, v1, :cond_0

    .line 2302
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->getSeatStatus()Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->Normal:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    if-ne v0, v1, :cond_0

    .line 2303
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;->getSeatStatus()Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->Normal:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2304
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getPSeatHorzPos()I

    move-result v1

    .line 2305
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getPSeatTiltPos()I

    move-result v2

    .line 2306
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handlePSeatPosChange: current vip psn seat status is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", current psn pos is ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], mIsPsnSeatManualMoving="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsPsnSeatManualMoving:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2309
    iget-boolean v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsPsnSeatManualMoving:Z

    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    .line 2310
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/Seat;->setSeatHorzValue(I)V

    .line 2311
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/bean/Seat;->setSeatTiltValue(I)V

    .line 2312
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatControlHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 2313
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatControlHandler:Landroid/os/Handler;

    .line 2315
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatControlHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSavePsnPosTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2316
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatControlHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSavePsnPosTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method private handlePsnDropDownMenu()V
    .locals 4

    const-string v0, "isSupportMsmP"

    .line 3261
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3262
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    const-string v1, "handlerPsnDropDownMenu NOT SUPPORT MSMP"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3265
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsPsnSeatManualMoving:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsSeatUiCtrlResume:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isPsnWelcomeModeState()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3266
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatControlHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 3267
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatControlHandler:Landroid/os/Handler;

    .line 3269
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatControlHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnDropDownRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3270
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatControlHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnDropDownRun:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3272
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " handlerPsnDropDownMenu mIsPsnSeatManualMoving="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsPsnSeatManualMoving:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsSeatUiCtrlResume="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsSeatUiCtrlResume:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3274
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatControlHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 3275
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnDropDownRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private handleRLDropDownMenu()V
    .locals 4

    const-string v0, "isSupportRearSeatCtrl"

    .line 3312
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3313
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    const-string v1, "handleRLDropDownMenu NOT SUPPORT RearSeatCtrl"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3316
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsRearLeftSeatManualMoving:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsSeatUiCtrlResume:Z

    if-nez v0, :cond_2

    .line 3317
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->seatSaveOutMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isInCosmeticSpace()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isInViceMeditation()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3318
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatControlHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 3319
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatControlHandler:Landroid/os/Handler;

    .line 3321
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatControlHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRLDropDownRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3322
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatControlHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRLDropDownRun:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3324
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " handleRLDropDownMenu mIsRearLeftSeatManualMoving="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsPsnSeatManualMoving:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsSeatUiCtrlResume="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsSeatUiCtrlResume:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3326
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatControlHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 3327
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRLDropDownRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private handleRRDropDownMenu()V
    .locals 4

    const-string v0, "isSupportRearSeatCtrl"

    .line 3351
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3352
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    const-string v1, "handleRLDropDownMenu NOT SUPPORT RearSeatCtrl"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3355
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatControlHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 3356
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatControlHandler:Landroid/os/Handler;

    .line 3358
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatControlHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRRDropDownRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3359
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatControlHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRRDropDownRun:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private headrestNotice()V
    .locals 3

    .line 4351
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->vip_seat_restore_toast:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    .line 4352
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->vip_seat_restore_toast:I

    .line 4353
    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/App;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 4352
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;Z)Ljava/lang/String;

    return-void
.end method

.method private isCanSetSeatPos(II)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "direction",
            "controlType"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v2, :cond_1

    if-eq p2, v0, :cond_1

    const/4 v3, 0x3

    if-eq p2, v3, :cond_1

    const/4 v3, 0x4

    if-eq p2, v3, :cond_1

    const/4 v3, 0x7

    if-eq p2, v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    const-string v3, "isSupportDrvCushion"

    .line 1035
    invoke-static {v3}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    :cond_1
    const-string v3, "isSupportMsmD"

    .line 1032
    invoke-static {v3}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    :goto_0
    if-eqz v3, :cond_6

    .line 1041
    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSeatPosByDirection(I)I

    move-result p2

    if-ltz p2, :cond_5

    const/16 v3, 0x64

    if-le p2, v3, :cond_2

    goto :goto_1

    :cond_2
    if-ne p1, v2, :cond_3

    const/16 v3, 0x62

    if-lt p2, v3, :cond_4

    :cond_3
    if-ne p1, v0, :cond_5

    if-le p2, v0, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    :goto_1
    return v1

    :cond_6
    return v2
.end method

.method private isInCosmeticSpace()Z
    .locals 3

    .line 3212
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mScenarioController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController;

    const-string v1, "cosmetic_space_mode"

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController;->getUserScenarioStatus(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method private isInViceMeditation()Z
    .locals 3

    .line 3202
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mScenarioController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController;

    const-string v1, "meditation_passenger_seat_mode"

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController;->getUserScenarioStatus(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method static synthetic lambda$setRhythmMode$25(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "finalPath"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 4900
    invoke-static {p0, v0, v1}, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->play(Ljava/lang/String;ZI)V

    return-void
.end method

.method static synthetic lambda$showEasyErrToast$6()V
    .locals 3

    const-string v0, "/system/media/audio/xiaopeng/cdu/wav/CDU_fail.wav"

    const/4 v1, 0x1

    const/4 v2, 0x3

    .line 2128
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->play(Ljava/lang/String;ZI)V

    return-void
.end method

.method static synthetic lambda$showTrdFoldErrToast$7()V
    .locals 3

    const-string v0, "/system/media/audio/xiaopeng/cdu/wav/CDU_fail.wav"

    const/4 v1, 0x1

    const/4 v2, 0x3

    .line 2218
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->play(Ljava/lang/String;ZI)V

    return-void
.end method

.method static synthetic lambda$showTrdStowErrToast$8()V
    .locals 3

    const-string v0, "/system/media/audio/xiaopeng/cdu/wav/CDU_fail.wav"

    const/4 v1, 0x1

    const/4 v2, 0x3

    .line 2293
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->play(Ljava/lang/String;ZI)V

    return-void
.end method

.method static synthetic lambda$showZeroErrToast$5()V
    .locals 3

    const-string v0, "/system/media/audio/xiaopeng/cdu/wav/CDU_fail.wav"

    const/4 v1, 0x1

    const/4 v2, 0x3

    .line 2032
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->play(Ljava/lang/String;ZI)V

    return-void
.end method

.method static synthetic lambda$startRhythm$24(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "finalPath"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 4747
    invoke-static {p0, v0, v1}, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->play(Ljava/lang/String;ZI)V

    return-void
.end method

.method private makeMassagerIds(I)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4358
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    .line 4360
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 4361
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x2

    .line 4362
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x3

    .line 4363
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4365
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0
.end method

.method private makeRhythmIds(I)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4757
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    .line 4759
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 4760
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4762
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0
.end method

.method private showEasyErrToast(IIIZ)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "status",
            "screenId",
            "source",
            "isLeftZero"
        }
    .end annotation

    .line 2074
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showEasyErrToast: status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,screenId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,source = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v0, 0x12

    const/4 v1, 0x2

    if-ne p3, v1, :cond_1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 2092
    :pswitch_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p3, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_easy_error_text4:I

    invoke-static {p3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 2096
    :pswitch_1
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p3, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_easy_error_text5:I

    invoke-static {p3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 2089
    :pswitch_2
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p3, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_easy_error_text2:I

    invoke-static {p3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 2083
    :pswitch_3
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p3, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_zero_error_text2:I

    invoke-static {p3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 2086
    :pswitch_4
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p3, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_zero_error_text5:I

    invoke-static {p3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 2079
    :pswitch_5
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p3, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_zero_error_text1:I

    invoke-static {p3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 2099
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p3, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_easy_error_text6:I

    invoke-static {p3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_1
    const/4 v2, 0x1

    if-ne p3, v2, :cond_4

    .line 2103
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    if-eqz p4, :cond_2

    const/4 p4, 0x3

    goto :goto_0

    :cond_2
    const/4 p4, 0x4

    :goto_0
    const-string v3, "voicePosition"

    .line 2104
    invoke-virtual {p3, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eq p1, v0, :cond_3

    packed-switch p1, :pswitch_data_1

    goto :goto_1

    .line 2115
    :pswitch_6
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p4, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_easy_error_text4:I

    invoke-static {p4}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;I)V

    .line 2116
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_easy_error_text4:I

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2, p3}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;ZLandroid/os/Bundle;)Ljava/lang/String;

    goto :goto_1

    .line 2111
    :pswitch_7
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p4, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_easy_error_text5:I

    invoke-static {p4}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;I)V

    .line 2112
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_easy_error_text5:I

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2, p3}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;ZLandroid/os/Bundle;)Ljava/lang/String;

    goto :goto_1

    .line 2107
    :pswitch_8
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p4, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_easy_error_text2:I

    invoke-static {p4}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;I)V

    .line 2108
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_easy_error_text2:I

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2, p3}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;ZLandroid/os/Bundle;)Ljava/lang/String;

    goto :goto_1

    .line 2128
    :pswitch_9
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$M7zhqLurCfCiHvzDnD9bMuO2Abs;->INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$M7zhqLurCfCiHvzDnD9bMuO2Abs;

    invoke-static {v1, p1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;)V

    goto :goto_1

    .line 2119
    :cond_3
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p4, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_easy_error_text6:I

    invoke-static {p4}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;I)V

    .line 2120
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_easy_error_text6:I

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2, p3}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;ZLandroid/os/Bundle;)Ljava/lang/String;

    :cond_4
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private showSeatDisableToast()V
    .locals 2

    .line 2909
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_cdu_control_disable:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void
.end method

.method private showTrdFoldErrToast(IIIZ)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "status",
            "screenId",
            "source",
            "isLeftZero"
        }
    .end annotation

    .line 2170
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showTrdFoldErrToast: status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,screenId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,source = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v0, 0x12

    const/4 v1, 0x2

    if-ne p3, v1, :cond_1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 2184
    :pswitch_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p3, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_fold_error_text2:I

    invoke-static {p3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 2188
    :pswitch_1
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p3, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_easy_error_text5:I

    invoke-static {p3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 2181
    :pswitch_2
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p3, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_fold_error_text1:I

    invoke-static {p3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 2178
    :pswitch_3
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p3, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_zero_error_text2:I

    invoke-static {p3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 2174
    :pswitch_4
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p3, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_zero_error_text5:I

    invoke-static {p3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 2191
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p3, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_fold_error_text3:I

    invoke-static {p3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_1
    const/4 v2, 0x1

    if-ne p3, v2, :cond_4

    .line 2195
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    if-eqz p4, :cond_2

    const/16 p4, 0x15

    goto :goto_0

    :cond_2
    const/16 p4, 0x16

    :goto_0
    const-string v3, "voicePosition"

    .line 2196
    invoke-virtual {p3, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eq p1, v0, :cond_3

    packed-switch p1, :pswitch_data_1

    goto :goto_1

    .line 2207
    :pswitch_5
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p4, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_fold_error_text2:I

    invoke-static {p4}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;I)V

    .line 2208
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_fold_error_text2:I

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2, p3}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;ZLandroid/os/Bundle;)Ljava/lang/String;

    goto :goto_1

    .line 2203
    :pswitch_6
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p4, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_easy_error_text5:I

    invoke-static {p4}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;I)V

    .line 2204
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_easy_error_text5:I

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2, p3}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;ZLandroid/os/Bundle;)Ljava/lang/String;

    goto :goto_1

    .line 2199
    :pswitch_7
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p4, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_fold_error_text1:I

    invoke-static {p4}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;I)V

    .line 2200
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_fold_error_text1:I

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2, p3}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;ZLandroid/os/Bundle;)Ljava/lang/String;

    goto :goto_1

    .line 2218
    :pswitch_8
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$8s8mei45_c7VewjC6ikFKCayWH8;->INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$8s8mei45_c7VewjC6ikFKCayWH8;

    invoke-static {v1, p1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;)V

    goto :goto_1

    .line 2211
    :cond_3
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p4, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_fold_error_text3:I

    invoke-static {p4}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;I)V

    .line 2212
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_fold_error_text3:I

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2, p3}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;ZLandroid/os/Bundle;)Ljava/lang/String;

    :cond_4
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private showTrdStowErrToast(III)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "status",
            "screenId",
            "source"
        }
    .end annotation

    .line 2245
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showTrdStowErrToast: status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,screenId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,source = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 2262
    :pswitch_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p3, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_stow_error_text3:I

    invoke-static {p3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 2256
    :pswitch_1
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p3, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_stow_error_text1:I

    invoke-static {p3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 2266
    :pswitch_2
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p3, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_easy_error_text5:I

    invoke-static {p3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 2259
    :pswitch_3
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p3, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_stow_error_text2:I

    invoke-static {p3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 2253
    :pswitch_4
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p3, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_zero_error_text2:I

    invoke-static {p3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 2249
    :pswitch_5
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p3, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_zero_error_text5:I

    invoke-static {p3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p3, v1, :cond_1

    .line 2270
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const/16 v2, 0x19

    const-string v3, "voicePosition"

    .line 2271
    invoke-virtual {p3, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 2286
    :pswitch_6
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_stow_error_text3:I

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;I)V

    .line 2287
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_stow_error_text3:I

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1, p3}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;ZLandroid/os/Bundle;)Ljava/lang/String;

    goto :goto_0

    .line 2282
    :pswitch_7
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_stow_error_text1:I

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;I)V

    .line 2283
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_stow_error_text1:I

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1, p3}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;ZLandroid/os/Bundle;)Ljava/lang/String;

    goto :goto_0

    .line 2278
    :pswitch_8
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_easy_error_text5:I

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;I)V

    .line 2279
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_easy_error_text5:I

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1, p3}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;ZLandroid/os/Bundle;)Ljava/lang/String;

    goto :goto_0

    .line 2274
    :pswitch_9
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_stow_error_text2:I

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;I)V

    .line 2275
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_stow_error_text2:I

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1, p3}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;ZLandroid/os/Bundle;)Ljava/lang/String;

    goto :goto_0

    .line 2293
    :pswitch_a
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$vzpuD19SfWBTywUQprv0eqR4Ap0;->INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$vzpuD19SfWBTywUQprv0eqR4Ap0;

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method private showZeroErrToast(IIIZ)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "status",
            "screenId",
            "source",
            "isLeftZero"
        }
    .end annotation

    .line 1979
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showZeroErrToast: status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,screenId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,source = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v0, 0x10

    const/16 v1, 0xf

    const/4 v2, 0x2

    if-ne p3, v2, :cond_2

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 1998
    :pswitch_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p3, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_zero_error_text3:I

    invoke-static {p3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1995
    :pswitch_1
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p3, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_zero_error_text4:I

    invoke-static {p3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1992
    :pswitch_2
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p3, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_zero_error_text2:I

    invoke-static {p3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1988
    :pswitch_3
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p3, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_zero_error_text5:I

    invoke-static {p3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1985
    :pswitch_4
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p3, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_zero_error_text1:I

    invoke-static {p3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 2004
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p3, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_zero_error_text7:I

    invoke-static {p3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 2001
    :cond_1
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p3, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_zero_error_text6:I

    invoke-static {p3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_2
    const/4 v3, 0x1

    if-ne p3, v3, :cond_6

    .line 2008
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    if-eqz p4, :cond_3

    const/4 p4, 0x3

    goto :goto_0

    :cond_3
    const/4 p4, 0x4

    :goto_0
    const-string v4, "voicePosition"

    .line 2009
    invoke-virtual {p3, v4, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eq p1, v1, :cond_5

    if-eq p1, v0, :cond_4

    packed-switch p1, :pswitch_data_1

    goto :goto_1

    .line 2016
    :pswitch_5
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p4, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_zero_error_text3:I

    invoke-static {p4}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;I)V

    .line 2017
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_zero_error_text3:I

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v3, p3}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;ZLandroid/os/Bundle;)Ljava/lang/String;

    goto :goto_1

    .line 2012
    :pswitch_6
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p4, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_zero_error_text4:I

    invoke-static {p4}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;I)V

    .line 2013
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_zero_error_text4:I

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v3, p3}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;ZLandroid/os/Bundle;)Ljava/lang/String;

    goto :goto_1

    .line 2032
    :pswitch_7
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$TQk0rdSOapRhz_inRPObSqjoOYU;->INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$TQk0rdSOapRhz_inRPObSqjoOYU;

    invoke-static {v2, p1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;)V

    goto :goto_1

    .line 2024
    :cond_4
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p4, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_zero_error_text7:I

    invoke-static {p4}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;I)V

    .line 2025
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_zero_error_text7:I

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v3, p3}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;ZLandroid/os/Bundle;)Ljava/lang/String;

    goto :goto_1

    .line 2020
    :cond_5
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p4, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_zero_error_text6:I

    invoke-static {p4}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;I)V

    .line 2021
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_zero_error_text6:I

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v3, p3}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;ZLandroid/os/Bundle;)Ljava/lang/String;

    :cond_6
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private updateMassageData(ILjava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4565
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnRearMassageData:Landroidx/lifecycle/MutableLiveData;

    goto :goto_0

    .line 4562
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDrvRearMassageData:Landroidx/lifecycle/MutableLiveData;

    goto :goto_0

    .line 4559
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnMassageData:Landroidx/lifecycle/MutableLiveData;

    goto :goto_0

    .line 4556
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDrvMassageData:Landroidx/lifecycle/MutableLiveData;

    :goto_0
    if-nez p1, :cond_4

    return-void

    .line 4575
    :cond_4
    invoke-virtual {p1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatMassage;

    if-nez v2, :cond_5

    return-void

    .line 4580
    :cond_5
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 4581
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4582
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4583
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x0

    sparse-switch v6, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v6, "running"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_2

    :cond_6
    move v5, v0

    goto :goto_2

    :sswitch_1
    const-string v6, "intensity"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_2

    :cond_7
    move v5, v1

    goto :goto_2

    :sswitch_2
    const-string v6, "effectId"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_2

    :cond_8
    move v5, v7

    :goto_2
    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 4591
    :pswitch_0
    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatMassage;->isRunning()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-static {v3}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 4592
    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatMassage;->getIndex()I

    move-result v4

    invoke-direct {p0, v4, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->updateMassageTimer(IZ)V

    goto :goto_3

    .line 4593
    :cond_9
    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatMassage;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {v3}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 4594
    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatMassage;->getIndex()I

    move-result v4

    invoke-direct {p0, v4, v7}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->updateMassageTimer(IZ)V

    .line 4596
    :cond_a
    :goto_3
    invoke-static {v3}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatMassage;->setRunning(Z)V

    goto :goto_1

    .line 4588
    :pswitch_1
    invoke-static {v3}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatMassage;->setIntensity(I)V

    goto :goto_1

    .line 4585
    :pswitch_2
    invoke-virtual {v2, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatMassage;->setEffect(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4602
    :cond_b
    invoke-virtual {p1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3ca15d74 -> :sswitch_2
        0x1dc31833 -> :sswitch_1
        0x5c6f15bf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateMassageTimer(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "isRunning"
        }
    .end annotation

    const-string v0, "isSupportMassageTimeDisplay"

    .line 4644
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_a

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 4682
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnRearMassageTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$SeatMassagerTimer;

    if-eqz p1, :cond_2

    .line 4683
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$SeatMassagerTimer;->cancel()V

    :cond_2
    if-eqz p2, :cond_d

    .line 4686
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnRearMassageTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$SeatMassagerTimer;

    if-nez p1, :cond_3

    .line 4687
    new-instance p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$SeatMassagerTimer;

    invoke-direct {p1, p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$SeatMassagerTimer;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;I)V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnRearMassageTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$SeatMassagerTimer;

    .line 4689
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnRearMassageTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$SeatMassagerTimer;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$SeatMassagerTimer;->start()Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;

    goto :goto_0

    .line 4671
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDrvRearMassageTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$SeatMassagerTimer;

    if-eqz p1, :cond_5

    .line 4672
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$SeatMassagerTimer;->cancel()V

    :cond_5
    if-eqz p2, :cond_d

    .line 4675
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDrvRearMassageTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$SeatMassagerTimer;

    if-nez p1, :cond_6

    .line 4676
    new-instance p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$SeatMassagerTimer;

    invoke-direct {p1, p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$SeatMassagerTimer;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;I)V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDrvRearMassageTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$SeatMassagerTimer;

    .line 4678
    :cond_6
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDrvRearMassageTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$SeatMassagerTimer;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$SeatMassagerTimer;->start()Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;

    goto :goto_0

    .line 4660
    :cond_7
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnMassageTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$SeatMassagerTimer;

    if-eqz p1, :cond_8

    .line 4661
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$SeatMassagerTimer;->cancel()V

    :cond_8
    if-eqz p2, :cond_d

    .line 4664
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnMassageTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$SeatMassagerTimer;

    if-nez p1, :cond_9

    .line 4665
    new-instance p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$SeatMassagerTimer;

    invoke-direct {p1, p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$SeatMassagerTimer;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;I)V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnMassageTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$SeatMassagerTimer;

    .line 4667
    :cond_9
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnMassageTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$SeatMassagerTimer;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$SeatMassagerTimer;->start()Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;

    goto :goto_0

    .line 4649
    :cond_a
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDrvMassageTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$SeatMassagerTimer;

    if-eqz p1, :cond_b

    .line 4650
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$SeatMassagerTimer;->cancel()V

    :cond_b
    if-eqz p2, :cond_d

    .line 4653
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDrvMassageTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$SeatMassagerTimer;

    if-nez p1, :cond_c

    .line 4654
    new-instance p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$SeatMassagerTimer;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$SeatMassagerTimer;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;I)V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDrvMassageTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$SeatMassagerTimer;

    .line 4656
    :cond_c
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDrvMassageTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$SeatMassagerTimer;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$SeatMassagerTimer;->start()Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;

    :cond_d
    :goto_0
    return-void
.end method

.method private updateRhythmData(ILjava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4794
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnRhythmData:Landroidx/lifecycle/MutableLiveData;

    goto :goto_0

    .line 4791
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDrvRhythmData:Landroidx/lifecycle/MutableLiveData;

    :goto_0
    if-nez p1, :cond_2

    return-void

    .line 4804
    :cond_2
    invoke-virtual {p1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatRhythm;

    if-nez v1, :cond_3

    return-void

    .line 4810
    :cond_3
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    move v3, v2

    :cond_4
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 4811
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4812
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4813
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v7, "running"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_2

    :cond_5
    const/4 v6, 0x2

    goto :goto_2

    :sswitch_1
    const-string v7, "intensity"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_2

    :cond_6
    move v6, v0

    goto :goto_2

    :sswitch_2
    const-string v7, "mode"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_2

    :cond_7
    move v6, v2

    :goto_2
    packed-switch v6, :pswitch_data_0

    goto :goto_1

    .line 4829
    :pswitch_0
    invoke-static {v4}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 4830
    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatRhythm;->isRunning()Z

    move-result v5

    if-eq v4, v5, :cond_4

    .line 4831
    invoke-virtual {v1, v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatRhythm;->setRunning(Z)V

    goto :goto_3

    .line 4822
    :pswitch_1
    invoke-static {v4}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 4823
    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatRhythm;->getIntensity()I

    move-result v5

    if-eq v4, v5, :cond_4

    .line 4824
    invoke-virtual {v1, v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatRhythm;->setIntensity(I)V

    goto :goto_3

    .line 4815
    :pswitch_2
    invoke-static {v4}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 4816
    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatRhythm;->getMode()I

    move-result v5

    if-eq v4, v5, :cond_4

    .line 4817
    invoke-virtual {v1, v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatRhythm;->setMode(I)V

    :goto_3
    move v3, v0

    goto :goto_1

    :cond_8
    if-eqz v3, :cond_9

    .line 4840
    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_9
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x3339a3 -> :sswitch_2
        0x1dc31833 -> :sswitch_1
        0x5c6f15bf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public cancelDrvDropDown()V
    .locals 2

    .line 3195
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatControlHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 3196
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatControlHandler:Landroid/os/Handler;

    .line 3198
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatControlHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDropDownRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected controlDriverSeatAuto([I)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1249
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsDriverSeatManualMoving:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1250
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    const-string v0, "controlDriverSeatAuto failed, the seat is still being adjusted"

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1253
    :cond_0
    aget v3, p1, v1

    const/4 v0, 0x1

    aget v4, p1, v0

    const/4 v1, 0x2

    aget v5, p1, v1

    const/4 v1, 0x3

    aget v6, p1, v1

    const/4 v1, 0x4

    aget v7, p1, v1

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDrvSeatAllPositions(IIIII)V

    return v0
.end method

.method public controlDriverSeatEnd(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 792
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingType()I

    move-result v0

    .line 793
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "controlDriverSeatEnd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",adjustType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mIsDriverSeatManualMoving:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsDriverSeatManualMoving:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 796
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsDriverSeatManualMoving:Z

    if-eqz v1, :cond_1

    if-ne v0, p1, :cond_1

    .line 797
    iput-boolean v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsDriverSeatManualMoving:Z

    .line 798
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/carcontrol/bean/Seat;->setAdjustingType(I)V

    .line 800
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatAdjustTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;

    if-eqz p1, :cond_0

    .line 801
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->cancel()V

    const/4 p1, 0x0

    .line 802
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatAdjustTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;

    .line 805
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingDirection()I

    move-result p1

    .line 806
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "end controlType "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",direction "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x3

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 825
    :pswitch_0
    invoke-virtual {p0, v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDSeatCushionMove(II)V

    goto :goto_0

    .line 833
    :pswitch_1
    invoke-virtual {p0, v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDSeatLumbVerMove(II)V

    goto :goto_0

    .line 829
    :pswitch_2
    invoke-virtual {p0, v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDSeatLumbHorzMove(II)V

    goto :goto_0

    .line 821
    :pswitch_3
    invoke-virtual {p0, v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDSeatLegMove(II)V

    goto :goto_0

    .line 817
    :pswitch_4
    invoke-virtual {p0, v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDSeatTiltMove(II)V

    goto :goto_0

    .line 813
    :pswitch_5
    invoke-virtual {p0, v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDSeatVerMove(II)V

    goto :goto_0

    .line 809
    :pswitch_6
    invoke-virtual {p0, v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDSeatHorzMove(II)V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public controlDriverSeatStart(II)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "controlType",
            "direction"
        }
    .end annotation

    const/4 v0, 0x1

    .line 753
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlDriverSeatStart(III)Z

    move-result p1

    return p1
.end method

.method public controlDriverSeatStart(III)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "controlType",
            "direction",
            "controlLocus"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne p3, v2, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    move p3, v1

    .line 763
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingType()I

    move-result v2

    if-nez v2, :cond_1

    .line 766
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v2, p1, p2}, Lcom/xiaopeng/carcontrol/bean/Seat;->setAdjustingParam(II)V

    goto :goto_1

    .line 767
    :cond_1
    iget-boolean v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsDriverSeatManualMoving:Z

    const-string v4, " not finished"

    const-string v5, "controlDriverSeatStart failed, adjust "

    if-eqz v3, :cond_3

    if-ne v2, p1, :cond_2

    if-eqz p3, :cond_3

    .line 768
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1

    :cond_3
    if-eqz v3, :cond_4

    .line 772
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 775
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlDriverSeatEnd(I)V

    move v1, v0

    .line 777
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v2, p1, p2}, Lcom/xiaopeng/carcontrol/bean/Seat;->setAdjustingParam(II)V

    if-eqz v1, :cond_5

    const/4 p1, 0x2

    .line 779
    new-instance p2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$7qTjIIRzgYJ5PHm-kl0EFF3J0eM;

    invoke-direct {p2, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$7qTjIIRzgYJ5PHm-kl0EFF3J0eM;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;)V

    const-wide/16 v1, 0x64

    invoke-static {p1, p2, v1, v2}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    goto :goto_2

    .line 782
    :cond_5
    invoke-direct {p0, p3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlDriverSeatStart(Z)V

    :goto_2
    return v0
.end method

.method protected controlPsnSeatAuto([I)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1258
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsPsnSeatManualMoving:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1259
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    const-string v0, "controlPsnSeatAuto failed, the seat is still being adjusted"

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1262
    :cond_0
    aget v0, p1, v1

    const/4 v1, 0x1

    aget v2, p1, v1

    const/4 v3, 0x2

    aget v3, p1, v3

    const/4 v4, 0x3

    aget p1, p1, v4

    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPsnSeatAllPositions(IIII)V

    return v1
.end method

.method public controlPsnSeatEnd(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 899
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingType()I

    move-result v0

    .line 900
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "controlPsnSeatEnd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",adjustType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mIsPsnSeatManualMoving:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsPsnSeatManualMoving:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 903
    iput-boolean v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsPsnSeatControlByBossKey:Z

    .line 904
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsPsnSeatManualMoving:Z

    if-eqz v1, :cond_1

    if-ne v0, p1, :cond_1

    .line 905
    iput-boolean v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsPsnSeatManualMoving:Z

    .line 906
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/carcontrol/bean/Seat;->setAdjustingType(I)V

    .line 908
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatAdjustTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;

    if-eqz p1, :cond_0

    .line 909
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->cancel()V

    const/4 p1, 0x0

    .line 910
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatAdjustTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;

    .line 913
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingDirection()I

    move-result p1

    const/4 v1, 0x3

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 936
    :pswitch_0
    invoke-virtual {p0, v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPSeatLumbVerMove(II)V

    goto :goto_0

    .line 932
    :pswitch_1
    invoke-virtual {p0, v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPSeatLumbHorzMove(II)V

    goto :goto_0

    .line 928
    :pswitch_2
    invoke-virtual {p0, v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPSeatLegMove(II)V

    goto :goto_0

    .line 924
    :pswitch_3
    invoke-virtual {p0, v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPSeatTiltMove(II)V

    goto :goto_0

    .line 920
    :pswitch_4
    invoke-virtual {p0, v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPSeatVerMove(II)V

    goto :goto_0

    .line 916
    :pswitch_5
    invoke-virtual {p0, v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPSeatHorzMove(II)V

    :cond_1
    :goto_0
    return-void

    nop

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

.method public controlPsnSeatStart(II)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "controlType",
            "direction"
        }
    .end annotation

    const/4 v0, 0x1

    .line 850
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlPsnSeatStart(III)Z

    move-result p1

    return p1
.end method

.method public controlPsnSeatStart(III)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "controlType",
            "direction",
            "controlLocus"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p3, v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const/4 v4, 0x3

    if-ne p3, v4, :cond_1

    move p3, v1

    goto :goto_1

    :cond_1
    move p3, v2

    .line 863
    :goto_1
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingType()I

    move-result v4

    if-nez v4, :cond_2

    .line 866
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v4, p1, p2}, Lcom/xiaopeng/carcontrol/bean/Seat;->setAdjustingParam(II)V

    goto :goto_2

    .line 867
    :cond_2
    iget-boolean v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsPsnSeatControlByBossKey:Z

    if-eqz v5, :cond_3

    if-nez v3, :cond_3

    .line 868
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    const-string p2, "controlPsnSeatStart failed, seat is being controlled by boss key"

    invoke-static {p1, p2, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return v2

    .line 870
    :cond_3
    iget-boolean v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsPsnSeatManualMoving:Z

    if-eqz v5, :cond_5

    if-ne v4, p1, :cond_4

    if-eqz p3, :cond_5

    .line 871
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    const-string p2, "controlPsnSeatStart failed, seat is being controlled"

    invoke-static {p1, p2, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return v2

    :cond_5
    if-eqz v5, :cond_6

    .line 874
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "controlPsnSeatStart failed, adjust "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " not finished"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 877
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingType()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlPsnSeatEnd(I)V

    move v2, v1

    :cond_6
    :goto_2
    if-eqz v3, :cond_7

    .line 880
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsPsnSeatControlByBossKey:Z

    .line 882
    :cond_7
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v3, p1, p2}, Lcom/xiaopeng/carcontrol/bean/Seat;->setAdjustingParam(II)V

    if-eqz v2, :cond_8

    .line 884
    new-instance p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$OyGd2I1Xi8MYGiwtcXTus0RPAXI;

    invoke-direct {p1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$OyGd2I1Xi8MYGiwtcXTus0RPAXI;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;)V

    const-wide/16 p2, 0x64

    invoke-static {v0, p1, p2, p3}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    goto :goto_3

    .line 887
    :cond_8
    invoke-direct {p0, p3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlPsnSeatStart(Z)V

    :goto_3
    return v1
.end method

.method public controlRearLeftSeatEnd(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 3766
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearLeftSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingType()I

    move-result v0

    .line 3767
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "controlRearLeftSeatEnd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",adjustType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mIsRearLeftSeatManualMoving:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsRearLeftSeatManualMoving:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3770
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsRearLeftSeatManualMoving:Z

    if-eqz v1, :cond_1

    if-ne v0, p1, :cond_1

    .line 3771
    iput-boolean v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsRearLeftSeatManualMoving:Z

    .line 3772
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearLeftSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/carcontrol/bean/Seat;->setAdjustingType(I)V

    .line 3774
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearSeatLeftAdjustTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;

    if-eqz p1, :cond_0

    .line 3775
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->cancel()V

    const/4 p1, 0x0

    .line 3776
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearSeatLeftAdjustTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;

    .line 3779
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearLeftSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingDirection()I

    move-result p1

    .line 3780
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "end controlType "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",direction "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x3

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 3806
    :pswitch_1
    invoke-virtual {p0, v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatHeadRestHorzMove(II)V

    goto :goto_0

    .line 3803
    :pswitch_2
    invoke-virtual {p0, v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatHeadRestVerMove(II)V

    goto :goto_0

    .line 3794
    :pswitch_3
    invoke-virtual {p0, v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatLegVerMove(II)V

    goto :goto_0

    .line 3800
    :pswitch_4
    invoke-virtual {p0, v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatLumbVerMove(II)V

    goto :goto_0

    .line 3797
    :pswitch_5
    invoke-virtual {p0, v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatLumbHorzMove(II)V

    goto :goto_0

    .line 3790
    :pswitch_6
    invoke-virtual {p0, v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatLegMove(II)V

    goto :goto_0

    .line 3786
    :pswitch_7
    invoke-virtual {p0, v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatTiltMove(II)V

    goto :goto_0

    .line 3783
    :pswitch_8
    invoke-virtual {p0, v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeaHorzMove(II)V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public controlRearLeftSeatStart(II)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "controlType",
            "direction"
        }
    .end annotation

    const/4 v0, 0x1

    .line 3666
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlRearLeftSeatStart(III)Z

    move-result p1

    return p1
.end method

.method public controlRearLeftSeatStart(III)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "controlType",
            "direction",
            "controlLocus"
        }
    .end annotation

    .line 3670
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearLeftSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne p3, v3, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    move p3, v2

    :goto_0
    if-nez v0, :cond_1

    .line 3674
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearLeftSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/bean/Seat;->setAdjustingParam(II)V

    goto :goto_1

    .line 3675
    :cond_1
    iget-boolean p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsRearLeftSeatManualMoving:Z

    const-string v3, " not finished"

    const-string v4, "controlRearLeftSeatStart failed, adjust "

    if-eqz p2, :cond_3

    if-ne v0, p1, :cond_2

    if-eqz p3, :cond_3

    .line 3676
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return v2

    :cond_3
    if-eqz p2, :cond_4

    .line 3681
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return v2

    .line 3685
    :cond_4
    :goto_1
    invoke-direct {p0, p3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlRearLeftSeatStart(Z)V

    return v1
.end method

.method public controlRearRightSeatEnd(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 3955
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearRightSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingType()I

    move-result v0

    .line 3956
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "controlRearRightSeatEnd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",adjustType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mIsRearRightSeatManualMoving:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsRearRightSeatManualMoving:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3959
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsRearRightSeatManualMoving:Z

    if-eqz v1, :cond_1

    if-ne v0, p1, :cond_1

    .line 3960
    iput-boolean v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsRearRightSeatManualMoving:Z

    .line 3961
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearRightSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/carcontrol/bean/Seat;->setAdjustingType(I)V

    .line 3963
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearSeatRightAdjustTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;

    if-eqz p1, :cond_0

    .line 3964
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->cancel()V

    const/4 p1, 0x0

    .line 3965
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearSeatRightAdjustTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;

    .line 3968
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearRightSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingDirection()I

    move-result p1

    .line 3969
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "end controlType "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",direction "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x3

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 3995
    :pswitch_1
    invoke-virtual {p0, v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatHeadRestHorzMove(II)V

    goto :goto_0

    .line 3992
    :pswitch_2
    invoke-virtual {p0, v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatHeadRestVerMove(II)V

    goto :goto_0

    .line 3983
    :pswitch_3
    invoke-virtual {p0, v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatLegVerMove(II)V

    goto :goto_0

    .line 3989
    :pswitch_4
    invoke-virtual {p0, v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatLumbVerMove(II)V

    goto :goto_0

    .line 3986
    :pswitch_5
    invoke-virtual {p0, v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatLumbHorzMove(II)V

    goto :goto_0

    .line 3979
    :pswitch_6
    invoke-virtual {p0, v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatLegMove(II)V

    goto :goto_0

    .line 3975
    :pswitch_7
    invoke-virtual {p0, v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatTiltMove(II)V

    goto :goto_0

    .line 3972
    :pswitch_8
    invoke-virtual {p0, v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeaHorzMove(II)V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public controlRearRightSeatStart(II)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "controlType",
            "direction"
        }
    .end annotation

    const/4 v0, 0x1

    .line 3855
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlRearRightSeatStart(III)Z

    move-result p1

    return p1
.end method

.method public controlRearRightSeatStart(III)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "controlType",
            "direction",
            "controlLocus"
        }
    .end annotation

    .line 3859
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearRightSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne p3, v3, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    move p3, v2

    :goto_0
    if-nez v0, :cond_1

    .line 3863
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearRightSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/bean/Seat;->setAdjustingParam(II)V

    goto :goto_1

    .line 3864
    :cond_1
    iget-boolean p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsRearRightSeatManualMoving:Z

    const-string v3, " not finished"

    const-string v4, "controlRearRightSeatStart failed, adjust "

    if-eqz p2, :cond_3

    if-ne v0, p1, :cond_2

    if-eqz p3, :cond_3

    .line 3865
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return v2

    :cond_3
    if-eqz p2, :cond_4

    .line 3870
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return v2

    .line 3874
    :cond_4
    :goto_1
    invoke-direct {p0, p3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlRearRightSeatStart(Z)V

    return v1
.end method

.method public controlTrdRowLeftSeatEnd(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 4103
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowLeftSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingType()I

    move-result v0

    .line 4104
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "controlTrdRowLeftSeatEnd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",adjustType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mIsTrdRowLeftSeatManualMoving:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsTrdRowLeftSeatManualMoving:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4107
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsTrdRowLeftSeatManualMoving:Z

    if-eqz v1, :cond_3

    if-ne v0, p1, :cond_3

    .line 4108
    iput-boolean v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsTrdRowLeftSeatManualMoving:Z

    .line 4109
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowLeftSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/carcontrol/bean/Seat;->setAdjustingType(I)V

    .line 4111
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowLeftAdjustTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;

    if-eqz p1, :cond_0

    .line 4112
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->cancel()V

    const/4 p1, 0x0

    .line 4113
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowLeftAdjustTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;

    .line 4115
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowLeftSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingDirection()I

    move-result p1

    .line 4116
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "end controlType "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",direction "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 4122
    :cond_1
    invoke-virtual {p0, v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowLeftSeatHeadVerMove(II)V

    goto :goto_0

    .line 4119
    :cond_2
    invoke-virtual {p0, v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowLeftSeatTiltMove(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method public controlTrdRowLeftSeatStart(II)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "controlType",
            "direction"
        }
    .end annotation

    const/4 v0, 0x1

    .line 4037
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlTrdRowLeftSeatStart(III)Z

    move-result p1

    return p1
.end method

.method public controlTrdRowLeftSeatStart(III)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "controlType",
            "direction",
            "controlLocus"
        }
    .end annotation

    .line 4041
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowSeatStowState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 4042
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_stow_ing:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return v1

    .line 4045
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowLeftSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingType()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne p3, v2, :cond_1

    move p3, v3

    goto :goto_0

    :cond_1
    move p3, v1

    :goto_0
    if-nez v0, :cond_2

    .line 4049
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowLeftSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/bean/Seat;->setAdjustingParam(II)V

    goto :goto_1

    .line 4050
    :cond_2
    iget-boolean p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsTrdRowLeftSeatManualMoving:Z

    const-string v2, " not finished"

    const-string v4, "controlTrdRowLeftSeatStart failed, adjust "

    if-eqz p2, :cond_4

    if-ne v0, p1, :cond_3

    if-eqz p3, :cond_4

    .line 4051
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1

    :cond_4
    if-eqz p2, :cond_5

    .line 4056
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1

    .line 4060
    :cond_5
    :goto_1
    invoke-direct {p0, p3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlTrdRowLeftSeatStart(Z)V

    return v3
.end method

.method public controlTrdRowMidSeatEnd(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 4310
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowMidSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingType()I

    move-result v0

    .line 4311
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "controlTrdRowMidSeatEnd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",adjustType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mIsTrdRowMidSeatManualMoving:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsTrdRowMidSeatManualMoving:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4314
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsTrdRowMidSeatManualMoving:Z

    if-eqz v1, :cond_2

    if-ne v0, p1, :cond_2

    .line 4315
    iput-boolean v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsTrdRowMidSeatManualMoving:Z

    .line 4316
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowMidSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/carcontrol/bean/Seat;->setAdjustingType(I)V

    .line 4318
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowMidAdjustTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;

    if-eqz p1, :cond_0

    .line 4319
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->cancel()V

    const/4 p1, 0x0

    .line 4320
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowMidAdjustTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;

    .line 4322
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowMidSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingDirection()I

    move-result p1

    .line 4323
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "end controlType "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",direction "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    .line 4326
    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowMidSeatHeadVerMove(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public controlTrdRowMidSeatStart(II)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "controlType",
            "direction"
        }
    .end annotation

    const/4 v0, 0x1

    .line 4254
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlTrdRowMidSeatStart(III)Z

    move-result p1

    return p1
.end method

.method public controlTrdRowMidSeatStart(III)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "controlType",
            "direction",
            "controlLocus"
        }
    .end annotation

    .line 4258
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowMidSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne p3, v3, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    move p3, v2

    :goto_0
    if-nez v0, :cond_1

    .line 4262
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowMidSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/bean/Seat;->setAdjustingParam(II)V

    goto :goto_1

    .line 4263
    :cond_1
    iget-boolean p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsTrdRowMidSeatManualMoving:Z

    const-string v3, " not finished"

    const-string v4, "controlTrdRowMidSeatStart failed, adjust "

    if-eqz p2, :cond_3

    if-ne v0, p1, :cond_2

    if-eqz p3, :cond_3

    .line 4264
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return v2

    :cond_3
    if-eqz p2, :cond_4

    .line 4269
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return v2

    .line 4273
    :cond_4
    :goto_1
    invoke-direct {p0, p3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlTrdRowMidSeatStart(Z)V

    return v1
.end method

.method public controlTrdRowRightSeatEnd(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 4212
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowRightSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingType()I

    move-result v0

    .line 4213
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "controlTrdRowRightSeatEnd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",adjustType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mIsTrdRowRightSeatManualMoving:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsTrdRowRightSeatManualMoving:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4216
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsTrdRowRightSeatManualMoving:Z

    if-eqz v1, :cond_3

    if-ne v0, p1, :cond_3

    .line 4217
    iput-boolean v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsTrdRowRightSeatManualMoving:Z

    .line 4218
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowRightSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/carcontrol/bean/Seat;->setAdjustingType(I)V

    .line 4220
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowRightAdjustTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;

    if-eqz p1, :cond_0

    .line 4221
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->cancel()V

    const/4 p1, 0x0

    .line 4222
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowRightAdjustTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;

    .line 4224
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowRightSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingDirection()I

    move-result p1

    .line 4225
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "end controlType "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",direction "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 4231
    :cond_1
    invoke-virtual {p0, v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowRightSeatHeadVerMove(II)V

    goto :goto_0

    .line 4228
    :cond_2
    invoke-virtual {p0, v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowRightSeatTiltMove(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method public controlTrdRowRightSeatStart(II)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "controlType",
            "direction"
        }
    .end annotation

    const/4 v0, 0x1

    .line 4146
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlTrdRowRightSeatStart(III)Z

    move-result p1

    return p1
.end method

.method public controlTrdRowRightSeatStart(III)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "controlType",
            "direction",
            "controlLocus"
        }
    .end annotation

    .line 4150
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowSeatStowState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 4151
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_stow_ing:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return v1

    .line 4154
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowRightSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingType()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne p3, v2, :cond_1

    move p3, v3

    goto :goto_0

    :cond_1
    move p3, v1

    :goto_0
    if-nez v0, :cond_2

    .line 4158
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowRightSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/bean/Seat;->setAdjustingParam(II)V

    goto :goto_1

    .line 4159
    :cond_2
    iget-boolean p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsTrdRowRightSeatManualMoving:Z

    const-string v2, " not finished"

    const-string v4, "controlTrdRowRightSeatStart failed, adjust "

    if-eqz p2, :cond_4

    if-ne v0, p1, :cond_3

    if-eqz p3, :cond_4

    .line 4160
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1

    :cond_4
    if-eqz p2, :cond_5

    .line 4165
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1

    .line 4169
    :cond_5
    :goto_1
    invoke-direct {p0, p3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlTrdRowRightSeatStart(Z)V

    return v3
.end method

.method public doVibrate(ILjava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "index",
            "effect",
            "intensity"
        }
    .end annotation

    .line 4928
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    const/4 v1, -0x1

    invoke-interface {v0, p1, p2, v1, p3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->doVibrate(ILjava/lang/String;II)V

    return-void
.end method

.method public exitMeditationState()V
    .locals 14

    .line 3607
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getDrvSeatPosIdx()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getDrvSeatPos(I)[I

    move-result-object v0

    .line 3609
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isDrvDoorOpened()Z

    move-result v1

    const-string v2, "getMSMSeatDefaultPos"

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->getSeatWelcomeMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3610
    invoke-virtual {p0, v7, v7}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->checkChairMovable(ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3615
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->calculateWelcomeModeGoOffPosition()I

    move-result v9

    if-nez v0, :cond_0

    .line 3617
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    const-string v1, "Saved seat position is null, move seat back and recover tilt position to default"

    invoke-static {v0, v1, v6}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3618
    iget-object v8, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getDSeatVerPos()I

    move-result v10

    new-array v0, v6, [Ljava/lang/Object;

    .line 3619
    invoke-static {v2, v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v0

    aget v11, v0, v5

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    .line 3620
    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getDSeatLegPos()I

    move-result v12

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getDSeatCushionPos()I

    move-result v13

    .line 3618
    invoke-interface/range {v8 .. v13}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setDriverAllPositions(IIIII)V

    goto :goto_0

    .line 3622
    :cond_0
    iget-object v8, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    aget v10, v0, v7

    aget v11, v0, v5

    aget v12, v0, v4

    aget v13, v0, v3

    invoke-interface/range {v8 .. v13}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setDriverAllPositions(IIIII)V

    goto :goto_0

    .line 3626
    :cond_1
    invoke-virtual {p0, v7, v7}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->checkChairMovable(ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    .line 3628
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    const-string v1, "Saved seat position is null, recover tilt position to default"

    invoke-static {v0, v1, v6}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3629
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v1

    aget v1, v1, v5

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setDSeatTiltPos(I)V

    goto :goto_0

    .line 3631
    :cond_2
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    aget v1, v0, v6

    aget v6, v0, v7

    aget v5, v0, v5

    aget v7, v0, v4

    aget v0, v0, v3

    move v3, v1

    move v4, v6

    move v6, v7

    move v7, v0

    invoke-interface/range {v2 .. v7}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setDriverAllPositions(IIIII)V

    :cond_3
    :goto_0
    return-void
.end method

.method public getBackBeltWaringData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 2492
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mBackBeltWaring:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getCurrentSelectedPsnHabit()I
    .locals 1

    .line 2798
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getCurrentSelectedPsnHabit()I

    move-result v0

    return v0
.end method

.method public getCurrentSelectedRLHabit()I
    .locals 1

    .line 2803
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getCurrentSelectedRLHabit()I

    move-result v0

    return v0
.end method

.method public getCurrentSelectedRRHabit()I
    .locals 1

    .line 2808
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getCurrentSelectedRRHabit()I

    move-result v0

    return v0
.end method

.method public getDriverAntiFatigueStatus()I
    .locals 1

    .line 4970
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getDriverAntiFatigueStatus()I

    move-result v0

    return v0
.end method

.method public getDriverSeatData(I)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 668
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatCushion:Landroidx/lifecycle/MutableLiveData;

    goto :goto_0

    .line 664
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatLeg:Landroidx/lifecycle/MutableLiveData;

    goto :goto_0

    .line 660
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatTilt:Landroidx/lifecycle/MutableLiveData;

    goto :goto_0

    .line 656
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatVert:Landroidx/lifecycle/MutableLiveData;

    goto :goto_0

    .line 652
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatHorz:Landroidx/lifecycle/MutableLiveData;

    :goto_0
    return-object p1
.end method

.method public getDriverSeatOccupiedData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 641
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatOccupied:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getDrvHeadrestNormal()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 2334
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDrvHeadrestNormal:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getDrvLumbData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 2508
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDrvLumbData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getDrvSeatAntiFatiguePreviewData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 2560
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDrvSeatAntiFatiguePreviewData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getDrvSeatAntiFatigueStatus()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 503
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDrvSeatAntiFatigueStatus:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getDrvSeatAntiFatigueStatusData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2556
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDrvSeatAntiFatigueStatus:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getDrvSeatAntiFatigueSwData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 2552
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDrvSeatAntiFatigueSwData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getDrvSeatDropDownShowData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 2500
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDrvSeatDropDownShowData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getDrvSeatLumbRelaxStatus()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatLumbRelax;",
            ">;"
        }
    .end annotation

    .line 495
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDrvSeatLumbRelaxStatus:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getDrvSeatMoveStData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 2544
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDrvSeatMoveStData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getDrvSeatSbrData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 458
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDrvSeatSbrData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getDvrBeltWarnData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 706
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDvrBeltWarn:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getEsbConfigModeData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2488
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mEsbConfigMode:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getEsbModeData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 2484
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mEsbMode:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getInPsnSelectProcessData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 440
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mInPsnSelectProcessData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getInRLSelectProcessData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 445
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mInRLSelectProcessData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getInRRSelectProcessData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 450
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mInRRSelectProcessData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getMassageData(I)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatMassage;",
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

    return-object p1

    .line 4505
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnRearMassageData:Landroidx/lifecycle/MutableLiveData;

    return-object p1

    .line 4503
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDrvRearMassageData:Landroidx/lifecycle/MutableLiveData;

    return-object p1

    .line 4501
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnMassageData:Landroidx/lifecycle/MutableLiveData;

    return-object p1

    .line 4499
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDrvMassageData:Landroidx/lifecycle/MutableLiveData;

    return-object p1
.end method

.method public getMassageEffect(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 4933
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getMassagerEffectId(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMassageMode(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seatId"
        }
    .end annotation

    .line 4946
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getMassageMode(I)I

    move-result p1

    return p1
.end method

.method public getMassageTimeData(I)Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Long;",
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

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 p1, 0x0

    return-object p1

    .line 4522
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnRearMassageTimeData:Landroidx/lifecycle/MutableLiveData;

    return-object p1

    .line 4520
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDrvRearMassageTimeData:Landroidx/lifecycle/MutableLiveData;

    return-object p1

    .line 4518
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnMassageTimeData:Landroidx/lifecycle/MutableLiveData;

    return-object p1

    .line 4516
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDrvMassageTimeData:Landroidx/lifecycle/MutableLiveData;

    return-object p1
.end method

.method public getMassagerEffectIDs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4715
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getMassagerEffectIDs()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMassagerIntensity(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 4541
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getMassagerIntensity(I)I

    move-result p1

    return p1
.end method

.method public getMassagerRunningEffectId(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 4701
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isMassagerRunning(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4703
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getMassagerEffectId(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getMcuIgState()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3655
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMcuIgState:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getPsnBeltWarnData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 710
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnBeltWarn:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getPsnHeadrestNormal()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 2348
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnHeadrestNormal:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getPsnLumbData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 2512
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnLumbData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getPsnSeatDropDownShowData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 2504
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatDropDownShowData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getPsnSeatEqualMemoryData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatPsnSeatEqualMemoryData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getPsnSeatHorzData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 714
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatHorz:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getPsnSeatLegData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 726
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatLeg:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getPsnSeatLumbRelaxStatus()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatLumbRelax;",
            ">;"
        }
    .end annotation

    .line 499
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatLumbRelaxStatus:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getPsnSeatMoveStData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 2548
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatMoveStData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getPsnSeatName(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectId"
        }
    .end annotation

    .line 2813
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getPsnSeatName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPsnSeatNameData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatNameData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getPsnSeatOccupiedData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 678
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatOccupied:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getPsnSeatSbrData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 463
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatSbrData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getPsnSeatTiltData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 718
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatTilt:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getPsnSeatVerData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 722
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatVer:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getPsnSeatWelcomeMode()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 633
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatWelcomeMode:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getPsnSrsEnableData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 2496
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSrsEnableData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getRLSeatData()Landroidx/lifecycle/LiveData;
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
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRLSeatTilt:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getRLSeatLegData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 738
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRLSeatLeg:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getRLSeatName(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectId"
        }
    .end annotation

    .line 2818
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getRLSeatName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRRSeatData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 734
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRRSeatTilt:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getRRSeatLegData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 742
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRRSeatLeg:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getRRSeatName(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectId"
        }
    .end annotation

    .line 2823
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getRRSeatName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRearSeatSbrData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 468
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearSeatSbrData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getRearSeatWelcomeMode()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 637
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearSeatWelcomeMode:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getRhythmData(I)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatRhythm;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4852
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnRhythmData:Landroidx/lifecycle/MutableLiveData;

    return-object p1

    .line 4850
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDrvRhythmData:Landroidx/lifecycle/MutableLiveData;

    return-object p1
.end method

.method public getRhythmIntensity(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 4867
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getRhythmIntensity(I)I

    move-result p1

    return p1
.end method

.method public getRhythmMode()I
    .locals 1

    .line 4908
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getRhythmMode()I

    move-result v0

    return v0
.end method

.method public getRlSeatEqualMemoryData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatRlSeatEqualMemoryData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getRlSeatOccupiedData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 682
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRlSeatOccupied:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getRmSeatOccupiedData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 686
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRmSeatOccupied:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getRrSeatEqualMemoryData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatRrSeatEqualMemoryData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getRrSeatOccupiedData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 690
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRrSeatOccupied:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSeatDrvRestoreSuccess()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatDrvRestoreSuccess:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSeatDrvSaveSuccess()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatDrvSaveSuccess:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSeatLumbShowData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 2516
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatLumbShowData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSeatMemoryConfigs()Ljava/lang/String;
    .locals 1

    .line 4345
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getSeatMemoryConfigs()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSeatPosByDirection(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controlType"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 1014
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatCushionPos()I

    move-result p1

    goto :goto_0

    .line 1011
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatLegPos()I

    move-result p1

    goto :goto_0

    .line 1008
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatTiltPos()I

    move-result p1

    goto :goto_0

    .line 1005
    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatVerPos()I

    move-result p1

    goto :goto_0

    .line 1002
    :cond_4
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatHorzPos()I

    move-result p1

    :goto_0
    return p1
.end method

.method public getSeatPsnHabitIndex()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatPsnHabitIndex:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSeatPsnRestoreSuccess()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatPsnRestoreSuccess:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSeatPsnSaveSuccess()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatPsnSaveSuccess:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSeatRLHabitIndex()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatRLHabitIndex:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSeatRLRestoreSuccess()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatRLRestoreSuccess:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSeatRLSaveSuccess()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatRLSaveSuccess:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSeatRRHabitIndex()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatRRHabitIndex:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSeatRRRestoreSuccess()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatRRRestoreSuccess:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSeatRRSaveSuccess()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatRRSaveSuccess:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSecLeftBeltWarningData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 2520
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecLeftBeltWarningData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSecMidBeltWarningData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 2524
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecMidBeltWarningData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSecRightBeltWarningData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 2528
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRightBeltWaringData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSecRowLTEasyErrData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowLTEasyErrData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSecRowLTZeroErrData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowLTZeroErrData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSecRowLtEzOrZeroGStatus()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowLtEzOrZeroGStatus:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSecRowLtNameData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowLtNameData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSecRowLtSeatAngle()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowLtSeatAngle:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSecRowLtSeatHeadHeig()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowLtSeatHeadHeig:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSecRowLtSeatHeadHorz()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowLtSeatHeadHorz:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSecRowLtSeatHorz()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowLtSeatHorz:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSecRowLtSeatLeSuHeig()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowLtSeatLeSuHeig:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSecRowLtSeatMoveStatusData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowLtSeatMoveStatusData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSecRowLtStopMove()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowLtStopMove:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSecRowRTEasyErrData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowRTEasyErrData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSecRowRTZeroErrData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowRTZeroErrData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSecRowRtEzOrZeroGStatus()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowRtEzOrZeroGStatus:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSecRowRtNameData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowRtNameData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSecRowRtSeatAngle()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowRtSeatAngle:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSecRowRtSeatHeadHeig()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowRtSeatHeadHeig:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSecRowRtSeatHeadHorz()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowRtSeatHeadHorz:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSecRowRtSeatHorz()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowRtSeatHorz:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSecRowRtSeatLeSuHeig()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowRtSeatLeSuHeig:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSecRowRtSeatMoveStatusData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowRtSeatMoveStatusData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSecRowRtStopMove()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowRtStopMove:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getTlSeatOccupiedData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 694
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTlSeatOccupied:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getTmSeatOccupiedData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 698
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTmSeatOccupied:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getTrSeatOccupiedData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 702
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrSeatOccupied:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getTrdLeftBeltWarningData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 2532
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdLeftBeltWarningData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getTrdMidBeltWarningData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 2536
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdMidBeltWarningData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getTrdRightBeltWarningData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 2540
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRightBeltWarningData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getTrdRowLTFoldErrData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowLTFoldErrData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getTrdRowLtFoldStatus()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowLtFoldStatus:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getTrdRowLtSeatFoldSuccessStatus()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowLtSeatFoldSuccessStatus:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getTrdRowLtSeatHeadVertical()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 361
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowLtSeatHeadVerticalPos:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getTrdRowLtSeatTilt()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowLtSeatTiltPos:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getTrdRowMidSeatHeadVertical()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 369
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowMidSeatHeadVerticalPos:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getTrdRowRTFoldErrData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowRTFoldErrData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getTrdRowRtFoldStatus()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 336
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowRtFoldStatus:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getTrdRowRtSeatFoldSuccessStatus()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowRtSeatFoldSuccessStatus:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getTrdRowRtSeatHeadVertical()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 365
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowRtSeatHeadVerticalPos:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getTrdRowRtSeatTilt()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 357
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowRtSeatTiltPos:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getTrdRowStowErrData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowStowErrData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getTrdRowStowInPause()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;",
            ">;"
        }
    .end annotation

    .line 454
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowStowInPause:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getTrdRowStowStatus()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 340
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowStowStatus:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getTrdRowStowSuccessStatus()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowStowSuccessStatus:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getVibrateEffectIDs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4923
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getVibrateEffectIDs()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVibrateIntensity(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 4913
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getVibrateIntensity(I)I

    move-result p1

    return p1
.end method

.method public getWaistReliefMemoryMode(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seatId"
        }
    .end annotation

    .line 4978
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getWaistReliefMemoryMode(I)I

    move-result p1

    return p1
.end method

.method public getWaistReliefMode(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seatId"
        }
    .end annotation

    .line 4988
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getWaistReliefMode(I)I

    move-result p1

    return p1
.end method

.method public getWelcomeModeData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 629
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatWelcomeMode:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method protected handleBackBeltWaringChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 586
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mBackBeltWaring:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleDrvLumbControlEnableChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2427
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDrvLumbData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleDrvSeatAntiFatigueSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 2451
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDrvSeatAntiFatigueSwData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleDrvSeatMoveStChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stop"
        }
    .end annotation

    .line 2441
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDrvSeatMoveStData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleDrvSeatOccupied(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "occupied"
        }
    .end annotation

    .line 573
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Drv seat occupied changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", and sbr status is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsDrvSbrOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 575
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDrvSbrStRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 576
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsDrvSbrOn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 577
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsDrvSbrOn:Z

    .line 578
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->handleDrvSeatSbrSt(Z)V

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatOccupied:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleDrvSeatSbrSt(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 2368
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDrvSeatSbrData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleEsbChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 2417
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mEsbMode:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleEsbConfigChanged(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configMode"
        }
    .end annotation

    .line 2422
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mEsbConfigMode:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleMsmdSeatAntiFatiguePreviewStatusChanged()V
    .locals 2

    .line 2461
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDrvSeatAntiFatiguePreviewData:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleMsmdSeatAntiFatigueStatusChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 2456
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDrvSeatAntiFatigueStatus:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleMsmdSeatLumbRelaxModeChanged(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2466
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDrvSeatLumbRelaxStatus:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatLumbRelax;

    invoke-direct {v2, v0, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatLumbRelax;-><init>(IIZ)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 2468
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDrvSeatLumbRelaxStatus:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatLumbRelax;

    const/4 v3, 0x1

    invoke-direct {v2, v0, p1, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatLumbRelax;-><init>(IIZ)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 2469
    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setWaistReliefMemoryMode(II)V

    :goto_0
    return-void
.end method

.method protected handleMsmpSeatLumbRelaxModeChanged(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 2476
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatLumbRelaxStatus:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatLumbRelax;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatLumbRelax;-><init>(IIZ)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 2478
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatLumbRelaxStatus:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatLumbRelax;

    invoke-direct {v2, v0, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatLumbRelax;-><init>(IIZ)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 2479
    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setWaistReliefMemoryMode(II)V

    :goto_0
    return-void
.end method

.method protected handlePsnLumbControlEnableChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2432
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnLumbData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handlePsnSeatMoveStChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stop"
        }
    .end annotation

    .line 2446
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatMoveStData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handlePsnSeatSbrSt(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 2373
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatSbrData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handlePsnSrsEnableChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2358
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSrsEnableData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handlePsnSrsNoResponse()V
    .locals 2

    .line 2363
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->psn_srs_error:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void
.end method

.method protected handlePsnWelcomeModeChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 2395
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatWelcomeMode:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 2396
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->isMainProcess()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "isSupportDomainControllerSeatWelcome"

    .line 2397
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2398
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPsnAllPositionsToDomain()V

    goto :goto_0

    .line 2400
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPsnSeatAllPositionsToMcu()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected handleRearSeatSbrSt(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 2378
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearSeatSbrData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleRearSeatWelcomeModeChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 2407
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearSeatWelcomeMode:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public handleSeatLumbControlViewShow(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "show"
        }
    .end annotation

    .line 2436
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatLumbShowData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleSecLeftBeltWarningChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 591
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecLeftBeltWarningData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleSecMidBeltWarningChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 596
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecMidBeltWarningData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleSecRightBeltWarningChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 601
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRightBeltWaringData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleTrdLeftBeltWarningChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 606
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdLeftBeltWarningData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleTrdMidBeltWarningChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 611
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdMidBeltWarningData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleTrdRightBeltWarningChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 616
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRightBeltWarningData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleWelcomeModeChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 2383
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatWelcomeMode:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 2384
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->isMainProcess()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "isSupportDomainControllerSeatWelcome"

    .line 2385
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2386
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDriverAllPositionsToDomain()V

    goto :goto_0

    .line 2388
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDriverAllPositionsToMcu()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected isCanSetSeatPosForTilt(II)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "direction",
            "controlType"
        }
    .end annotation

    const-string v0, "isSupportMsmD"

    .line 1054
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 1056
    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSeatPosByDirection(I)I

    move-result p2

    const/4 v0, 0x0

    if-ltz p2, :cond_4

    const/16 v2, 0x64

    if-le p2, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    const/16 v3, 0x62

    if-lt p2, v3, :cond_3

    :cond_1
    if-ne p1, v1, :cond_2

    if-le p2, v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    :cond_3
    :goto_0
    return v1

    :cond_4
    :goto_1
    return v0

    :cond_5
    return v1
.end method

.method public isDrvSeatEqualMemory()Z
    .locals 4

    .line 2914
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isSupportMsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2915
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getDrvSeatPosIdx()I

    move-result v0

    .line 2916
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getDrvSeatPos(I)[I

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2917
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    if-eqz v1, :cond_0

    .line 2918
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDrvSeatEqualMemory: saved drv pos is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2919
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",current"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/bean/Seat;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2918
    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2920
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/bean/Seat;->isPositionEqual([I)Z

    move-result v0

    .line 2922
    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getSyncApi()Lcom/xiaopeng/xvs/xid/sync/api/ISync;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaopeng/xvs/xid/sync/api/ISync;->getCarControlSync()Lcom/xiaopeng/xvs/xid/sync/api/ICarControlSync;

    move-result-object v1

    xor-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Lcom/xiaopeng/xvs/xid/sync/api/ICarControlSync;->setCurrentHabitReloadState(Z)V

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDrvSeatEqualTargetPos()Z
    .locals 5

    .line 2931
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getDrvTargetSeatPos()[I

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2932
    array-length v1, v0

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 2933
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/bean/Seat;->isPositionEqual([I)Z

    move-result v1

    .line 2934
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDrvSeatEqualTargetPos: target drv pos is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2935
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",current"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/bean/Seat;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", result:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2934
    invoke-static {v2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 2938
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    const-string v1, "DrvSeatEqualTargetPos is Null"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public isMassagerRunning(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 4710
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->isMassagerRunning(I)Z

    move-result p1

    return p1
.end method

.method public isPsnSeatEqualMemory()Z
    .locals 6

    .line 2945
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isSupportMSMP()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 2947
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getPsnSeatPos()[I

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 2949
    aget v4, v0, v1

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getPSeatHorzPos()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v3, :cond_0

    aget v4, v0, v3

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    .line 2950
    invoke-interface {v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getPSeatTiltPos()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v3, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    const-string v5, "isSupportPsnSeatVerControl"

    .line 2952
    invoke-static {v5}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v4, :cond_1

    .line 2953
    aget v4, v0, v2

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getPSeatVerPos()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v3, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v1

    :cond_2
    :goto_1
    const-string v5, "isSupportPsnLeg"

    .line 2955
    invoke-static {v5}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v4, :cond_3

    const/4 v4, 0x3

    .line 2956
    aget v4, v0, v4

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getPSeatLegPos()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v3, :cond_3

    move v1, v2

    :cond_3
    move v4, v1

    .line 2958
    :cond_4
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPsnSeatEqualMemory: saved psn pos is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2959
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",current"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/bean/Seat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", result: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2958
    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2961
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatPsnSeatEqualMemoryData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return v4

    :cond_5
    return v1
.end method

.method public isPsnSeatEqualTargetPos()Z
    .locals 6

    .line 2969
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isSupportMSMP()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 2971
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getPsnTargetSeatPos()[I

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2972
    array-length v2, v0

    const/4 v3, 0x4

    if-lt v2, v3, :cond_5

    .line 2973
    aget v2, v0, v1

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getPSeatHorzPos()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ge v2, v4, :cond_0

    aget v2, v0, v4

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    .line 2974
    invoke-interface {v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getPSeatTiltPos()I

    move-result v5

    sub-int/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v5, "isSupportPsnSeatVerControl"

    .line 2975
    invoke-static {v5}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v2, :cond_1

    .line 2976
    aget v2, v0, v3

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getPSeatVerPos()I

    move-result v5

    sub-int/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v4, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v1

    :cond_2
    :goto_1
    const-string v5, "isSupportPsnLeg"

    .line 2978
    invoke-static {v5}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v2, :cond_4

    const/4 v2, 0x3

    .line 2979
    aget v2, v0, v2

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getPSeatLegPos()I

    move-result v5

    sub-int/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v4, :cond_4

    move v1, v3

    goto :goto_2

    :cond_3
    move v1, v2

    .line 2981
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPsnSeatEqualMemory: saved psn pos is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2982
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",current"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/bean/Seat;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", result: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2981
    invoke-static {v2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return v1
.end method

.method public isPsnWelcomeModeState()Z
    .locals 4

    .line 3389
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnDoorClosedTime:J

    sub-long/2addr v0, v2

    .line 3390
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isPsnWelcomeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getStallState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 3391
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isPsnDoorOpened()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRLSeatEqualMemory()Z
    .locals 6

    const-string v0, "isSupportSecRowMemory"

    .line 2991
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 2993
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getRLSeatPos()[I

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 2995
    aget v4, v0, v1

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getRLSeatHorPos()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v3, :cond_0

    aget v4, v0, v3

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    .line 2996
    invoke-interface {v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getRLSeatTiltPos()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v3, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    const-string v5, "isSupportSecRowLegVer"

    .line 2998
    invoke-static {v5}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v4, :cond_1

    const/4 v4, 0x3

    .line 2999
    aget v4, v0, v4

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getRLSeatLegVerPos()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v3, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v1

    :cond_2
    :goto_1
    const-string v5, "isSupportSecRowHor"

    .line 3001
    invoke-static {v5}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v4, :cond_3

    const/4 v4, 0x4

    .line 3002
    aget v4, v0, v4

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getRLSeatLegHorPos()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v3, :cond_3

    move v4, v2

    goto :goto_2

    :cond_3
    move v4, v1

    :cond_4
    :goto_2
    const-string v5, "isSupportSecRowHeadRest"

    .line 3004
    invoke-static {v5}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    if-eqz v4, :cond_5

    const/4 v4, 0x5

    .line 3005
    aget v4, v0, v4

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getRLSeatHeadVerPos()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v3, :cond_5

    move v4, v2

    goto :goto_3

    :cond_5
    move v4, v1

    :goto_3
    if-eqz v4, :cond_6

    const/4 v4, 0x6

    .line 3006
    aget v4, v0, v4

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getRLSeatHeadHorPos()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v3, :cond_6

    move v1, v2

    :cond_6
    move v4, v1

    .line 3008
    :cond_7
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRLSeatEqualMemory: saved RL pos is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3009
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",current"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearLeftSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/bean/Seat;->toSecRowString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", result: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3008
    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3011
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatRlSeatEqualMemoryData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return v4

    :cond_8
    return v1
.end method

.method public isRRSeatEqualMemory()Z
    .locals 6

    const-string v0, "isSupportSecRowMemory"

    .line 3019
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 3021
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getRRSeatPos()[I

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 3023
    aget v4, v0, v1

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getRRSeatHorPos()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v3, :cond_0

    aget v4, v0, v3

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    .line 3024
    invoke-interface {v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getRRSeatTiltPos()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v3, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    const-string v5, "isSupportSecRowLegVer"

    .line 3026
    invoke-static {v5}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v4, :cond_1

    const/4 v4, 0x3

    .line 3027
    aget v4, v0, v4

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getRRSeatLegVerPos()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v3, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v1

    :cond_2
    :goto_1
    const-string v5, "isSupportSecRowHor"

    .line 3029
    invoke-static {v5}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v4, :cond_3

    const/4 v4, 0x4

    .line 3030
    aget v4, v0, v4

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getRRSeatLegHorPos()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v3, :cond_3

    move v4, v2

    goto :goto_2

    :cond_3
    move v4, v1

    :cond_4
    :goto_2
    const-string v5, "isSupportSecRowHeadRest"

    .line 3032
    invoke-static {v5}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    if-eqz v4, :cond_5

    const/4 v4, 0x5

    .line 3033
    aget v4, v0, v4

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getRRSeatHeadVerPos()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v3, :cond_5

    move v4, v2

    goto :goto_3

    :cond_5
    move v4, v1

    :goto_3
    if-eqz v4, :cond_6

    const/4 v4, 0x6

    .line 3034
    aget v4, v0, v4

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getRRSeatHeadHorPos()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v3, :cond_6

    move v1, v2

    :cond_6
    move v4, v1

    .line 3036
    :cond_7
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRRSeatEqualMemory: saved RR pos is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3037
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",current"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearRightSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/bean/Seat;->toSecRowString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", result: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3036
    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3039
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatRrSeatEqualMemoryData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return v4

    :cond_8
    return v1
.end method

.method public isRhythmRunning(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 4775
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->isRhythmRunning(I)Z

    move-result p1

    return p1
.end method

.method isSupportEsbConfig()Z
    .locals 1

    const-string v0, "isSupportScu"

    .line 621
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "isSupportEsb"

    .line 622
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWaistReliefRunning(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seatId"
        }
    .end annotation

    .line 4997
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getWaistReliefMode(I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isWelcomeModeState()Z
    .locals 4

    .line 3382
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDrvDoorClosedTime:J

    sub-long/2addr v0, v2

    .line 3383
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isWelcomeModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getStallState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 3384
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isDrvDoorOpened()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$controlDriverSeatStart$0$SeatViewModel()V
    .locals 1

    const/4 v0, 0x0

    .line 780
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlDriverSeatStart(Z)V

    return-void
.end method

.method public synthetic lambda$controlDriverSeatStart$2$SeatViewModel(J)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "finalAdjustCount"
        }
    .end annotation

    .line 1140
    new-instance v6, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;ZZJ)V

    iput-object v6, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatAdjustTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;

    .line 1141
    invoke-virtual {v6}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public synthetic lambda$controlPsnSeatStart$1$SeatViewModel()V
    .locals 1

    const/4 v0, 0x0

    .line 885
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlPsnSeatStart(Z)V

    return-void
.end method

.method public synthetic lambda$controlPsnSeatStart$3$SeatViewModel(J)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "finalAdjustCount"
        }
    .end annotation

    .line 1238
    new-instance v6, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;ZZJ)V

    iput-object v6, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatAdjustTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;

    .line 1239
    invoke-virtual {v6}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public synthetic lambda$controlRearLeftSeatStart$19$SeatViewModel(J)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "finalAdjustCount"
        }
    .end annotation

    .line 3755
    new-instance v6, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, v6

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;ZZJ)V

    iput-object v6, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearSeatLeftAdjustTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;

    .line 3756
    invoke-virtual {v6}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public synthetic lambda$controlRearRightSeatStart$20$SeatViewModel(J)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "finalAdjustCount"
        }
    .end annotation

    .line 3944
    new-instance v6, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, v6

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;ZZJ)V

    iput-object v6, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearSeatRightAdjustTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;

    .line 3945
    invoke-virtual {v6}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public synthetic lambda$controlTrdRowLeftSeatStart$21$SeatViewModel(J)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "finalAdjustCount"
        }
    .end annotation

    .line 4092
    new-instance v9, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    move-object v1, p0

    move-wide v7, p1

    invoke-direct/range {v0 .. v8}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;ZZZZZJ)V

    iput-object v9, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowLeftAdjustTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;

    .line 4093
    invoke-virtual {v9}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public synthetic lambda$controlTrdRowMidSeatStart$23$SeatViewModel(J)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "finalAdjustCount"
        }
    .end annotation

    .line 4299
    new-instance v9, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, v9

    move-object v1, p0

    move-wide v7, p1

    invoke-direct/range {v0 .. v8}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;ZZZZZJ)V

    iput-object v9, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowMidAdjustTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;

    .line 4300
    invoke-virtual {v9}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public synthetic lambda$controlTrdRowRightSeatStart$22$SeatViewModel(J)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "finalAdjustCount"
        }
    .end annotation

    .line 4201
    new-instance v9, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, v9

    move-object v1, p0

    move-wide v7, p1

    invoke-direct/range {v0 .. v8}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;ZZZZZJ)V

    iput-object v9, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowRightAdjustTimer:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;

    .line 4202
    invoke-virtual {v9}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public synthetic lambda$moveToExhibitionPos$18$SeatViewModel()V
    .locals 6

    .line 3511
    sget v1, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_FORE:I

    sget v2, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_HEIGHT:I

    sget v3, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_BACKREST:I

    sget v4, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_LEG:I

    sget v5, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_CUSHION:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDrvSeatAllPositions(IIIII)V

    .line 3512
    sget v0, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_FORE:I

    sget v1, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_HEIGHT:I

    sget v2, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_BACKREST:I

    sget v3, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_CUSHION:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPsnSeatAllPositions(IIII)V

    return-void
.end method

.method public synthetic lambda$new$12$SeatViewModel()V
    .locals 4

    .line 3222
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->getIgStatusFromMcu()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 3223
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    const-string v1, "Local IG not on, do not show drop down menu to save/restore seat position"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3226
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->isInSeatMenuShowTime(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3227
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    const-string v1, "Not InSeatMenuShowTime and Do not show Drv SeatDropDownMenu"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3230
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isDrvSeatEqualMemory()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isWelcomeModeState()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsSeatUiCtrlResume:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->seatSaveOutMode()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isDrvSeatEqualTargetPos()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3231
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDriverAntiFatigueStatus()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    .line 3232
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isDrvHeadrestNormal()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3233
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_save_headrest_notice:I

    const-string v3, "seat_adjust"

    invoke-virtual {v0, v2, v1, v3}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(IZLjava/lang/String;)V

    goto :goto_0

    .line 3235
    :cond_2
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyManager;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyManager;

    move-result-object v0

    const-string v2, "seat_mirror_menu"

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyManager;->checkConflictWithNapa(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 3236
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyManager;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyManager;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v2}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyManager;->show(ZZZ)V

    goto :goto_0

    .line 3238
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    const-string v1, "show drv seat notify conflict with napa failed"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 3242
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    const-string v1, " mDropDownRun drv seat equal memory or welcome mode or seat ui resume"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3244
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->saveDrvTargetSeatPos([I)V

    return-void
.end method

.method public synthetic lambda$new$13$SeatViewModel()V
    .locals 4

    .line 3281
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->getIgStatusFromMcu()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 3282
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    const-string v1, "Local IG not on, do not show drop down menu to save/restore seat position"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3285
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->isInSeatMenuShowTime(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3286
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    const-string v1, "Not In SeatMenuShowTime and Do not show Psn SeatDropDownMenu"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3289
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isPsnSeatEqualMemory()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isPsnWelcomeModeState()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsSeatUiCtrlResume:Z

    if-nez v0, :cond_4

    .line 3290
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->seatSaveOutMode()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isInCosmeticSpace()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isInViceMeditation()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isPsnSeatEqualTargetPos()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3291
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    const-string v3, "Show Psn seat drop down"

    invoke-static {v0, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3292
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isPsnHeadrestNormal()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3293
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_save_headrest_notice:I

    const-string v3, "seat_adjust"

    invoke-virtual {v0, v2, v1, v3}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(IZLjava/lang/String;)V

    goto :goto_0

    .line 3295
    :cond_2
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyManager;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyManager;

    move-result-object v0

    const-string v3, "psn_seat_menu"

    invoke-virtual {v0, v3}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyManager;->checkConflictWithNapa(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3296
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyManager;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyManager;

    move-result-object v0

    invoke-virtual {v0, v2, v1, v2}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyManager;->show(ZZZ)V

    goto :goto_0

    .line 3298
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    const-string v1, "show psn seat notify conflict with napa failed"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 3302
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    const-string v1, " mPsnDropDownRun psn seat equal memory or welcome mode or seat ui resume"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3304
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->savePsnTargetSeatPos([I)V

    return-void
.end method

.method public synthetic lambda$new$14$SeatViewModel()V
    .locals 2

    .line 3333
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->getIgStatusFromMcu()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 3334
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    const-string v1, "Local IG not on, do not show drop down menu to save/restore seat position"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3337
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isRLSeatEqualMemory()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isPsnWelcomeModeState()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/xiaopeng/carcontrol/util/AmsUtils;->isTopActivityFullscreen()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsSeatUiCtrlResume:Z

    if-nez v0, :cond_1

    .line 3339
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    const-string v1, "Show RL seat drop down"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3342
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    const-string v1, " mRLDropDownRun  seat equal memory or welcome mode or seat ui resume"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$new$15$SeatViewModel()V
    .locals 2

    .line 3347
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowLtStopMove:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$new$16$SeatViewModel()V
    .locals 2

    .line 3363
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->getIgStatusFromMcu()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 3364
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    const-string v1, "Local IG not on, do not show drop down menu to save/restore seat position"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3367
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isRRSeatEqualMemory()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isPsnWelcomeModeState()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/xiaopeng/carcontrol/util/AmsUtils;->isTopActivityFullscreen()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsSeatUiCtrlResume:Z

    if-nez v0, :cond_1

    .line 3369
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    const-string v1, "Show RR seat drop down"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3372
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    const-string v1, " mRRDropDownRun  seat equal memory or welcome mode or seat ui resume"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$new$17$SeatViewModel()V
    .locals 2

    .line 3377
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowRtStopMove:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$new$4$SeatViewModel()V
    .locals 6

    .line 1397
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipPsnSeatControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/space/VipPsnSeatControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipPsnSeatControl;->getSeatStatus()Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    move-result-object v0

    .line 1398
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getPSeatHorzPos()I

    move-result v1

    .line 1399
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getPSeatTiltPos()I

    move-result v2

    .line 1400
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSavePsnPosTask: current vip psn seat status is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", current psn pos is ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], mIsPsnSeatManualMoving = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsPsnSeatManualMoving:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1403
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsPsnSeatManualMoving:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->Normal:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    if-ne v0, v1, :cond_0

    .line 1405
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isPsnSeatEqualMemory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1406
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->memoryPsnSeatData()Z

    :cond_0
    return-void
.end method

.method public synthetic lambda$restorePsnSeatPos$9$SeatViewModel()V
    .locals 5

    .line 2706
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatSavedPos:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v3, v0, v3

    const/4 v4, 0x3

    aget v0, v0, v4

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPsnSeatAllPositions(IIII)V

    return-void
.end method

.method public synthetic lambda$restoreRLSeatPos$10$SeatViewModel()V
    .locals 10

    .line 2862
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRLSeatSavedPos:[I

    const/4 v1, 0x0

    aget v3, v0, v1

    const/4 v1, 0x1

    aget v4, v0, v1

    const/4 v1, 0x2

    aget v5, v0, v1

    const/4 v1, 0x3

    aget v6, v0, v1

    const/4 v1, 0x4

    aget v7, v0, v1

    const/4 v1, 0x5

    aget v8, v0, v1

    const/4 v1, 0x6

    aget v9, v0, v1

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatAllPositions(IIIIIII)V

    return-void
.end method

.method public synthetic lambda$restoreRRSeatPos$11$SeatViewModel()V
    .locals 10

    .line 2903
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRRSeatSavedPos:[I

    const/4 v1, 0x0

    aget v3, v0, v1

    const/4 v1, 0x1

    aget v4, v0, v1

    const/4 v1, 0x2

    aget v5, v0, v1

    const/4 v1, 0x3

    aget v6, v0, v1

    const/4 v1, 0x4

    aget v7, v0, v1

    const/4 v1, 0x5

    aget v8, v0, v1

    const/4 v1, 0x6

    aget v9, v0, v1

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatAllPositions(IIIIIII)V

    return-void
.end method

.method public memoryDrvSeatData()Z
    .locals 1

    .line 1267
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getDrvSeatPosIdx()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->memoryDrvSeatData(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public memoryDrvSeatData(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1284
    sget-object v0, Lcom/xiaopeng/track/constant/BID;->seat_drv_save:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {v0}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;)V

    .line 1285
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isSupportMsm()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1286
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    const-string v0, "Current car does not support MSMD feature"

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1

    .line 1289
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsDriverSeatManualMoving:Z

    if-eqz v0, :cond_1

    .line 1290
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    const-string v0, "The driver seat is under adjusting, can not save seat data"

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    if-gez p1, :cond_2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    :cond_2
    const/4 v0, 0x3

    if-lt p1, v0, :cond_4

    .line 1294
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The memory drv seat index is invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1

    .line 1297
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDriverSeatData:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/bean/Seat;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/bean/Seat;->getSeatPosition()[I

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->saveDrvSeatPos(I[I)V

    .line 1299
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/bean/Seat;->getSeatPosition()[I

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatSavedPos:[I

    .line 1301
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatDrvSaveSuccess:Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 1303
    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getSyncApi()Lcom/xiaopeng/xvs/xid/sync/api/ISync;

    move-result-object p1

    invoke-interface {p1}, Lcom/xiaopeng/xvs/xid/sync/api/ISync;->getCarControlSync()Lcom/xiaopeng/xvs/xid/sync/api/ICarControlSync;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/xiaopeng/xvs/xid/sync/api/ICarControlSync;->setCurrentHabitReloadState(Z)V

    return v0
.end method

.method public memoryPsnSeatData()Z
    .locals 3

    .line 3047
    sget-object v0, Lcom/xiaopeng/track/constant/BID;->seat_psn_save:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {v0}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;)V

    .line 3048
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isPsnHeadrestNormal()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isPsnTiltMovingSafe()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3049
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/Seat;->getSeatPosition()[I

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatSavedPos:[I

    .line 3050
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatSavedPos:[I

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getCurrentSelectedPsnHabit()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->savePsnSeatPos([II)V

    const-string v0, "isSupportDomainControllerSeatWelcome"

    .line 3051
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3052
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPsnAllPositionsToDomain()V

    goto :goto_0

    .line 3054
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPsnSeatAllPositionsToMcu()V

    .line 3057
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatPsnSaveSuccess:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 3059
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatPsnSeatEqualMemoryData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return v1

    .line 3062
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    const-string v1, "The psn seat headrest is moved, cant save seat data"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public memorySelectPsnSeatData(II)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "selectId"
        }
    .end annotation

    .line 1310
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isSupportMSMP()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1311
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    const-string p2, "Current car does not support MSMD feature"

    invoke-static {p1, p2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1

    .line 1314
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsPsnSeatManualMoving:Z

    if-eqz v0, :cond_1

    .line 1315
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    const-string p2, "The driver seat is under adjusting, can not save seat data"

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    if-gez p1, :cond_2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    :cond_2
    const/4 v0, 0x3

    if-lt p1, v0, :cond_4

    .line 1319
    :cond_3
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The memory drv seat index is invalid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1

    .line 1323
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatControlHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    .line 1324
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnDropDownRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1326
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPsnSeatData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/bean/Seat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/bean/Seat;->getSeatPosition()[I

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->savePsnSeatPos([III)V

    const-string p1, "isSupportDomainControllerSeatWelcome"

    .line 1328
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1329
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPsnAllPositionsToDomain()V

    goto :goto_0

    .line 1331
    :cond_6
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPsnSeatAllPositionsToMcu()V

    .line 1333
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/bean/Seat;->getSeatPosition()[I

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatSavedPos:[I

    .line 1335
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatPsnSaveSuccess:Landroidx/lifecycle/MutableLiveData;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return p2
.end method

.method public memorySelectRLSeatData(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectId"
        }
    .end annotation

    const-string v0, "isSupportRearSeatCtrl"

    .line 1342
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const-string v0, "isSupportSecRowMemory"

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1346
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsRearLeftSeatManualMoving:Z

    if-eqz v0, :cond_1

    .line 1347
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    const-string v0, "The RearLeft seat is under adjusting, can not save seat data"

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1351
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatControlHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 1352
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRLDropDownRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1354
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRearLeftSeatData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearLeftSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/bean/Seat;->toSecRowString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearLeftSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/bean/Seat;->getSecRowPosition()[I

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->saveRLSeatPos([II)V

    const-string p1, "isSupportDomainControllerSeatWelcome"

    .line 1356
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1357
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLAllPositionsToDomain()V

    goto :goto_0

    .line 1359
    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatAllPositionsToMcu()V

    .line 1362
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatRLSaveSuccess:Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 1363
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearLeftSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/bean/Seat;->getSecRowPosition()[I

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRLSeatSavedPos:[I

    return v0

    .line 1343
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    const-string v0, "Current car does not support SecRowMemory feature"

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1
.end method

.method public memorySelectRRSeatData(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectId"
        }
    .end annotation

    const-string v0, "isSupportRearSeatCtrl"

    .line 1370
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const-string v0, "isSupportSecRowMemory"

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1374
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsRearRightSeatManualMoving:Z

    if-eqz v0, :cond_1

    .line 1375
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    const-string v0, "The driver seat is under adjusting, can not save seat data"

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1379
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatControlHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 1380
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRRDropDownRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1382
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRearRightSeatData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearRightSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/bean/Seat;->toSecRowString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearRightSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/bean/Seat;->getSecRowPosition()[I

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->saveRRSeatPos([II)V

    const-string p1, "isSupportDomainControllerSeatWelcome"

    .line 1384
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1385
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRAllPositionsToDomain()V

    goto :goto_0

    .line 1387
    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatAllPositionsToMcu()V

    .line 1390
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatRRSaveSuccess:Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 1391
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearRightSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/bean/Seat;->getSecRowPosition()[I

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRRSeatSavedPos:[I

    return v0

    .line 1371
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    const-string v0, "Current car does not support MSMD feature"

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1
.end method

.method public moveToExhibitionPos()V
    .locals 18

    move-object/from16 v0, p0

    .line 3505
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    iget-object v2, v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getDrvSeatPosIdx()I

    move-result v2

    const/4 v3, 0x5

    new-array v4, v3, [I

    sget v5, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_FORE:I

    const/4 v6, 0x0

    aput v5, v4, v6

    sget v5, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_HEIGHT:I

    const/4 v7, 0x1

    aput v5, v4, v7

    sget v5, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_BACKREST:I

    const/4 v8, 0x2

    aput v5, v4, v8

    sget v5, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_LEG:I

    const/4 v9, 0x3

    aput v5, v4, v9

    sget v5, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_CUSHION:I

    const/4 v10, 0x4

    aput v5, v4, v10

    invoke-interface {v1, v2, v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->saveDrvSeatPos(I[I)V

    .line 3508
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    new-array v2, v3, [I

    sget v3, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_FORE:I

    aput v3, v2, v6

    sget v3, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_HEIGHT:I

    aput v3, v2, v7

    sget v3, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_BACKREST:I

    aput v3, v2, v8

    sget v3, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_CUSHION:I

    aput v3, v2, v9

    aput v6, v2, v10

    invoke-interface {v1, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->savePsnSeatPos([I)V

    .line 3510
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$NAQO3Q15DQkEWmNOaSp4KddThvk;

    invoke-direct {v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$NAQO3Q15DQkEWmNOaSp4KddThvk;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;)V

    const-wide/16 v2, 0x1f4

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(Ljava/lang/Runnable;J)V

    const-string v1, "isSupportSecRowMemory"

    .line 3514
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3515
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    sget v3, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_SEC_ROW_HOR_POS:I

    sget v4, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_SEC_ROW_ANGLE_POS:I

    sget v5, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_SEC_ROW_TILT_POS:I

    sget v6, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_SEC_ROW_LEG_HEIGHT_POS:I

    sget v7, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_SEC_ROW_LEG_HOR_POS:I

    sget v8, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_SEC_ROW_HEAD_HEIGHT_POS:I

    sget v9, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_SEC_ROW_HEAD_HOR_POS:I

    invoke-interface/range {v2 .. v9}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setRLAllPositions(IIIIIII)V

    .line 3518
    iget-object v10, v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    sget v11, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_SEC_ROW_HOR_POS:I

    sget v12, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_SEC_ROW_ANGLE_POS:I

    sget v13, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_SEC_ROW_TILT_POS:I

    sget v14, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_SEC_ROW_LEG_HEIGHT_POS:I

    sget v15, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_SEC_ROW_LEG_HOR_POS:I

    sget v16, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_SEC_ROW_HEAD_HEIGHT_POS:I

    sget v17, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_SEC_ROW_HEAD_HOR_POS:I

    invoke-interface/range {v10 .. v17}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setRRAllPositions(IIIIIII)V

    goto :goto_0

    :cond_0
    const-string v1, "isSupportRearSeatCtrl"

    .line 3521
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3522
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    sget v2, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_SEC_ROW_TILT_POS:I

    invoke-interface {v1, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setRLSeatTiltPos(I)V

    .line 3523
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    sget v2, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_SEC_ROW_LEG_HOR_POS:I

    invoke-interface {v1, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setRLSeatLegPos(I)V

    .line 3524
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    sget v2, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_SEC_ROW_TILT_POS:I

    invoke-interface {v1, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setRRSeatTiltPos(I)V

    .line 3525
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    sget v2, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_SEC_ROW_LEG_HOR_POS:I

    invoke-interface {v1, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setRRSeatLegPos(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackBeltWaringChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 2353
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mBackBeltWaring:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onDSeatCushionPosChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1490
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatCushion:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1491
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/carcontrol/bean/Seat;->setSeatCushionValue(I)V

    .line 1492
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatCushion:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 1493
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->isMainProcess()Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz v0, :cond_0

    .line 1495
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->handleDropDownMenu()V

    goto :goto_0

    .line 1497
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    const-string v0, "onDSeatLegHorPosChanged last pos is null"

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDSeatHorzPosChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1412
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatHorz:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1413
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/carcontrol/bean/Seat;->setSeatHorzValue(I)V

    .line 1414
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatHorz:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 1415
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->isMainProcess()Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz v0, :cond_0

    .line 1417
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->handleDropDownMenu()V

    goto :goto_0

    .line 1419
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    const-string v0, " onDSeatHorzPosChanged lastPos is null"

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDSeatLegPosChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1476
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatLeg:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1477
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/carcontrol/bean/Seat;->setSeatLegValue(I)V

    .line 1478
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatLeg:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 1479
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->isMainProcess()Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz v0, :cond_0

    .line 1481
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->handleDropDownMenu()V

    goto :goto_0

    .line 1483
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    const-string v0, " onDSeatLegPosChanged lastPos is null"

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDSeatTiltPosChanged(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1440
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatTilt:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1441
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/carcontrol/bean/Seat;->setSeatTiltValue(I)V

    .line 1442
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatTilt:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 1443
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->isMainProcess()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 1445
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->handleDropDownMenu()V

    goto :goto_0

    .line 1447
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    const-string v1, " onDSeatTiltPosChanged lastPos is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const-string v0, "isSupportSeatSectionalRecovery"

    .line 1451
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1452
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatSavedPos:[I

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1453
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getDrvSeatPos(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatSavedPos:[I

    .line 1455
    :cond_2
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsDrvRestoreSafeChairBack:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatSavedPos:[I

    if-eqz v0, :cond_4

    const/16 v2, 0x32

    const/4 v3, 0x2

    aget v0, v0, v3

    .line 1456
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge p1, v3, :cond_4

    .line 1458
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isDrvHeadrestNormal()Z

    move-result p1

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsPsnRestoreSafeChairBack:Z

    if-nez p1, :cond_3

    .line 1459
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->headrestNotice()V

    .line 1461
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatSavedPos:[I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlDriverSeatAuto([I)Z

    .line 1462
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsDrvRestoreSafeChairBack:Z

    .line 1464
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatControlHandler:Landroid/os/Handler;

    if-nez p1, :cond_5

    .line 1465
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatControlHandler:Landroid/os/Handler;

    .line 1467
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatControlHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->resumeDrvRestoreSafeChairRun:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1468
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsDrvRestoreSafeChairBack:Z

    if-eqz p1, :cond_6

    .line 1469
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatControlHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->resumeDrvRestoreSafeChairRun:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    return-void
.end method

.method public onDSeatVerPosChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1426
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatVert:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1427
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/carcontrol/bean/Seat;->setSeatVertValue(I)V

    .line 1428
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatVert:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 1429
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->isMainProcess()Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz v0, :cond_0

    .line 1431
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->handleDropDownMenu()V

    goto :goto_0

    .line 1433
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    const-string v0, " onDSeatVerPosChanged lastPos is null"

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDrvBeltWaringChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 1595
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDvrBeltWarn:Landroidx/lifecycle/MutableLiveData;

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

.method public onDrvHeadrestChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "normal"
        }
    .end annotation

    .line 2322
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDrvHeadrestNormal:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    .line 2329
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;

    move-result-object p1

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->cancelNotificationByID(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public onIgStatusChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 3651
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMcuIgState:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onMassageFailed(ILjava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "index",
            "effect",
            "opCode",
            "errCode"
        }
    .end annotation

    if-nez p3, :cond_0

    .line 4467
    new-instance p3, Ljava/util/HashMap;

    const/4 p4, 0x1

    invoke-direct {p3, p4}, Ljava/util/HashMap;-><init>(I)V

    const-string p4, "effectId"

    .line 4468
    invoke-interface {p3, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4469
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {p2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->isMassagerRunning(I)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    const-string p4, "running"

    invoke-interface {p3, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4470
    invoke-direct {p0, p1, p3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->updateMassageData(ILjava/util/Map;)V

    :cond_0
    return-void
.end method

.method public onMassagerEffectChange(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "effectId"
        }
    .end annotation

    .line 4488
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 4489
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "effectId"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4490
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->updateMassageData(ILjava/util/Map;)V

    return-void
.end method

.method public onMassagerIntensityChange(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "intensity"
        }
    .end annotation

    .line 4546
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 4547
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v2, "intensity"

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4548
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    const-string v1, "running"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4549
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->updateMassageData(ILjava/util/Map;)V

    return-void
.end method

.method public onMassagerStatusChange(ILjava/lang/String;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "index",
            "effectId",
            "intensity",
            "running"
        }
    .end annotation

    .line 4479
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "effectId"

    .line 4480
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4481
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "intensity"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4482
    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    const-string p3, "running"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4483
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->updateMassageData(ILjava/util/Map;)V

    return-void
.end method

.method public onPSeatHorzPosChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1605
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatHorz:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1606
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/carcontrol/bean/Seat;->setSeatHorzValue(I)V

    .line 1607
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatHorz:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    .line 1610
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->isMainProcess()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1611
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->handlePsnDropDownMenu()V

    :cond_0
    return-void
.end method

.method public onPSeatLegPosChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1669
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatLeg:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1670
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/carcontrol/bean/Seat;->setSeatLegValue(I)V

    .line 1671
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatLeg:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    .line 1674
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->isMainProcess()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1675
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->handlePsnDropDownMenu()V

    :cond_0
    return-void
.end method

.method public onPSeatTiltPosChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1618
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatTilt:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1619
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/carcontrol/bean/Seat;->setSeatTiltValue(I)V

    .line 1620
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatTilt:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    .line 1623
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->isMainProcess()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1624
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->handlePsnDropDownMenu()V

    :cond_0
    const-string p1, "isSupportSeatSectionalRecovery"

    .line 1628
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1629
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatSavedPos:[I

    if-nez p1, :cond_1

    .line 1630
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getPsnSeatPos()[I

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatSavedPos:[I

    .line 1635
    :cond_1
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsPsnRestoreSafeChairBack:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatSavedPos:[I

    if-eqz p1, :cond_3

    const/16 v0, 0x32

    const/4 v1, 0x2

    aget p1, p1, v1

    .line 1636
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPSeatTiltPos()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge p1, v1, :cond_3

    .line 1638
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isPsnHeadrestNormal()Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsDrvRestoreSafeChairBack:Z

    if-nez p1, :cond_2

    .line 1639
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->headrestNotice()V

    .line 1641
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatSavedPos:[I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlPsnSeatAuto([I)Z

    const/4 p1, 0x0

    .line 1642
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsPsnRestoreSafeChairBack:Z

    .line 1644
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatControlHandler:Landroid/os/Handler;

    if-nez p1, :cond_4

    .line 1645
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatControlHandler:Landroid/os/Handler;

    .line 1647
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatControlHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->resumePsnRestoreSafeChairRun:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1648
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsPsnRestoreSafeChairBack:Z

    if-eqz p1, :cond_5

    .line 1649
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatControlHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->resumePsnRestoreSafeChairRun:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    return-void
.end method

.method public onPSeatVerPosChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1656
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatVer:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1657
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/carcontrol/bean/Seat;->setSeatVertValue(I)V

    .line 1658
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatVer:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    .line 1661
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->isMainProcess()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1662
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->handlePsnDropDownMenu()V

    :cond_0
    return-void
.end method

.method public onPsnBeltWaringChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 1600
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnBeltWarn:Landroidx/lifecycle/MutableLiveData;

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

.method public onPsnHeadrestChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "normal"
        }
    .end annotation

    .line 2339
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnHeadrestNormal:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onPsnOnSeatChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "occupied"
        }
    .end annotation

    .line 1504
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPsnOnSeatChanged occupied: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsPsnSbrOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsPsnSbrOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1506
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSbrStRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1507
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsPsnSbrOn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1508
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsPsnSbrOn:Z

    .line 1509
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->handlePsnSeatSbrSt(Z)V

    .line 1512
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatOccupied:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onRLSeatLegPosChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1698
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRLSeatLeg:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1699
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearLeftSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/bean/Seat;->setSeatLegValue(I)V

    .line 1700
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRLSeatLeg:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 1701
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->handleRLDropDownMenu()V

    return-void
.end method

.method public onRLSeatTiltPosChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1682
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRLSeatTilt:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1683
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearLeftSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/bean/Seat;->setSeatTiltValue(I)V

    .line 1684
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRLSeatTilt:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 1685
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->handleRLDropDownMenu()V

    return-void
.end method

.method public onRRSeatLegPosChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1706
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRRSeatLeg:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1707
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearRightSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/bean/Seat;->setSeatLegValue(I)V

    .line 1708
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRRSeatLeg:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 1709
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->handleRRDropDownMenu()V

    return-void
.end method

.method public onRRSeatTiltPosChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1690
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRRSeatTilt:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1691
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearRightSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/bean/Seat;->setSeatTiltValue(I)V

    .line 1692
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRRSeatTilt:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 1693
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->handleRRDropDownMenu()V

    return-void
.end method

.method public onRhythmIntensityChange(Ljava/util/Set;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ids",
            "intensity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 4872
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 4873
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "intensity"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4874
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 4875
    invoke-direct {p0, p2, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->updateRhythmData(ILjava/util/Map;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRhythmModeChange(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 4938
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 4939
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "mode"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 4940
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->updateRhythmData(ILjava/util/Map;)V

    .line 4941
    invoke-direct {p0, v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->updateRhythmData(ILjava/util/Map;)V

    return-void
.end method

.method public onRhythmStatusChange(Ljava/util/Set;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ids",
            "running"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .line 4780
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 4781
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    const-string v1, "running"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4782
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 4783
    invoke-direct {p0, p2, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->updateRhythmData(ILjava/util/Map;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRlOnSeatChanged(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "occupied"
        }
    .end annotation

    .line 1517
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isRearSeatOccupied()Z

    move-result v0

    .line 1518
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRlOnSeatChanged occupied: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIsRearSbrOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsRearSbrOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isRearSeatOccupied: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1520
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearSbrStRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1521
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsRearSbrOn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1522
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsRearSbrOn:Z

    .line 1523
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->handleRearSeatSbrSt(Z)V

    .line 1526
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRlSeatOccupied:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onRmOnSeatChanged(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "occupied"
        }
    .end annotation

    .line 1531
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isRearSeatOccupied()Z

    move-result v0

    .line 1532
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRrOnSeatChanged occupied: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIsRearSbrOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsRearSbrOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isRearSeatOccupied: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1534
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearSbrStRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1535
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsRearSbrOn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1536
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsRearSbrOn:Z

    .line 1537
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->handleRearSeatSbrSt(Z)V

    .line 1540
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRmSeatOccupied:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onRrOnSeatChanged(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "occupied"
        }
    .end annotation

    .line 1545
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isRearSeatOccupied()Z

    move-result v0

    .line 1546
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRrOnSeatChanged occupied: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIsRearSbrOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsRearSbrOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isRearSeatOccupied: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1548
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearSbrStRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1549
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsRearSbrOn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1550
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsRearSbrOn:Z

    .line 1551
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->handleRearSeatSbrSt(Z)V

    .line 1554
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRrSeatOccupied:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onSecRowLTEasyErr(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 1945
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mLtEasyEnterErrorEvent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mLtEasyEnterErrorCallback:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "carcontrol"

    .line 1946
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/speech/SpeechModelFactory;->getSpeechModel(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/speech/ISpeechModel;

    move-result-object v0

    .line 1947
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mLtEasyEnterErrorEvent:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mLtEasyEnterErrorCallback:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/xiaopeng/carcontrol/speech/ISpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1949
    :cond_0
    sget-boolean v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->showSecRowLTEasyErrData:Z

    if-eqz v0, :cond_2

    .line 1951
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRlFuncTrigSource()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    .line 1953
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->showEasyErrToast(IIIZ)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1955
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowLTEasyErrData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSecRowLTZeroErr(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 1963
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mLtZeroGravErrorEvent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mLtZeroGravErrorCallback:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "carcontrol"

    .line 1964
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/speech/SpeechModelFactory;->getSpeechModel(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/speech/ISpeechModel;

    move-result-object v0

    .line 1965
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mLtZeroGravErrorEvent:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mLtZeroGravErrorCallback:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/xiaopeng/carcontrol/speech/ISpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1967
    :cond_0
    sget-boolean v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->showSecRowLTZeroErrData:Z

    if-eqz v0, :cond_2

    .line 1969
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRlFuncTrigSource()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    .line 1971
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->showZeroErrToast(IIIZ)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 1972
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRlZeroFunctionActive:Z

    if-eqz v0, :cond_2

    .line 1973
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRlZeroToastScreenId:I

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->showZeroErrToast(IIIZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSecRowLtEzOrZeroGStatusChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 1796
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowLtEzOrZeroGStatus:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_1

    .line 1798
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRlZeroFunctionActive:Z

    .line 1799
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowLTFuctionStatus()I

    move-result p1

    if-ne p1, v2, :cond_0

    .line 1801
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_zero_ready:I

    iget v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRlZeroToastScreenId:I

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(II)V

    goto :goto_1

    :cond_0
    if-ne p1, v0, :cond_4

    .line 1803
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_easy_ready:I

    iget v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRlZeroToastScreenId:I

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(II)V

    goto :goto_1

    :cond_1
    if-eq p1, v2, :cond_3

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    .line 1808
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRlZeroFunctionActive:Z

    goto :goto_1

    .line 1806
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->cancelRlZeroRunnable()V

    :cond_4
    :goto_1
    return-void
.end method

.method public onSecRowLtSeatHeReHeigPosChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1748
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowLtSeatHeadHeig:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1749
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearLeftSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/bean/Seat;->setSeatHeadVer(I)V

    .line 1750
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowLtSeatHeadHeig:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 1751
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->handleRLDropDownMenu()V

    return-void
.end method

.method public onSecRowLtSeatHeReHorzPosChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1756
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowLtSeatHeadHorz:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1757
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearLeftSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/bean/Seat;->setSeatHeadHor(I)V

    .line 1758
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowLtSeatHeadHorz:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 1759
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->handleRLDropDownMenu()V

    return-void
.end method

.method public onSecRowLtSeatHorzPosChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1714
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowLtSeatHorz:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1715
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearLeftSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/bean/Seat;->setSeatHorzValue(I)V

    .line 1716
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowLtSeatHorz:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 1717
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->handleRLDropDownMenu()V

    return-void
.end method

.method public onSecRowLtSeatLeSuHeigPosChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1732
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowLtSeatLeSuHeig:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1733
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearLeftSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/bean/Seat;->setSeatCushionValue(I)V

    .line 1734
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowLtSeatLeSuHeig:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 1735
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->handleRLDropDownMenu()V

    return-void
.end method

.method public onSecRowLtSeatMoveStatusChanged(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1895
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowLtSeatMoveStatusData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    const-string v0, "isSupportSecRowZeroGravity"

    .line 1897
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "carcontrol"

    const/4 v2, 0x4

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 1899
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getStallState()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1900
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_zero_entering:I

    iget v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRlZeroToastScreenId:I

    invoke-virtual {v0, v2, v3}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(II)V

    .line 1901
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object v0

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_zero_entering:I

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1903
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_zero_p_warning:I

    iget v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRlZeroToastScreenId:I

    invoke-virtual {v0, v2, v3}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(II)V

    .line 1904
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object v0

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_zero_p_warning:I

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;)Ljava/lang/String;

    .line 1906
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mLtZeroGravErrorEvent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mLtZeroGravErrorCallback:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1907
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/speech/SpeechModelFactory;->getSpeechModel(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/speech/ISpeechModel;

    move-result-object v0

    .line 1908
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mLtZeroGravErrorEvent:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mLtZeroGravErrorCallback:Ljava/lang/String;

    add-int/lit8 p1, p1, 0x64

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/xiaopeng/carcontrol/speech/ISpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    if-ne p1, v2, :cond_2

    .line 1911
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mLtEasyEnterErrorEvent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mLtEasyEnterErrorCallback:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1912
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/speech/SpeechModelFactory;->getSpeechModel(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/speech/ISpeechModel;

    move-result-object v0

    .line 1913
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mLtEasyEnterErrorEvent:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mLtEasyEnterErrorCallback:Ljava/lang/String;

    add-int/lit8 p1, p1, 0x64

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/xiaopeng/carcontrol/speech/ISpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onSecRowLtSeatZeroGravPosChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1782
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowLtSeatAngle:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1783
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearLeftSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/bean/Seat;->setSeatZeroAngle(I)V

    .line 1784
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowLtSeatAngle:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onSecRowRTEasyErr(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 2040
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRtEasyEnterErrorEvent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRtEasyEnterErrorCallback:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "carcontrol"

    .line 2041
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/speech/SpeechModelFactory;->getSpeechModel(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/speech/ISpeechModel;

    move-result-object v0

    .line 2042
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRtEasyEnterErrorEvent:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRtEasyEnterErrorCallback:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/xiaopeng/carcontrol/speech/ISpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2044
    :cond_0
    sget-boolean v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->showSecRowRTEasyErrData:Z

    if-eqz v0, :cond_2

    .line 2046
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRrFuncTrigSource()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    const/4 v2, 0x0

    .line 2048
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->showEasyErrToast(IIIZ)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2050
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowRTEasyErrData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSecRowRTZeroErr(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 2058
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRtZeroGravErrorEvent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRtZeroGravErrorCallback:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "carcontrol"

    .line 2059
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/speech/SpeechModelFactory;->getSpeechModel(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/speech/ISpeechModel;

    move-result-object v0

    .line 2060
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRtZeroGravErrorEvent:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRtZeroGravErrorCallback:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/xiaopeng/carcontrol/speech/ISpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2062
    :cond_0
    sget-boolean v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->showSecRowRTZeroErrData:Z

    if-eqz v0, :cond_2

    .line 2064
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRrFuncTrigSource()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x3

    .line 2066
    invoke-direct {p0, p1, v0, v2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->showZeroErrToast(IIIZ)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 2067
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRrZeroFunctionActive:Z

    if-eqz v0, :cond_2

    .line 2068
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRrZeroToastScreenId:I

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->showZeroErrToast(IIIZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSecRowRtEzOrZeroGStatusChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 1814
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowRtEzOrZeroGStatus:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_1

    .line 1816
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRrZeroFunctionActive:Z

    .line 1817
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowRTFuctionStatus()I

    move-result p1

    if-ne p1, v2, :cond_0

    .line 1819
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_zero_ready:I

    iget v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRrZeroToastScreenId:I

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(II)V

    goto :goto_1

    :cond_0
    if-ne p1, v0, :cond_4

    .line 1821
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_easy_ready:I

    iget v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRrZeroToastScreenId:I

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(II)V

    goto :goto_1

    :cond_1
    if-eq p1, v2, :cond_3

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    .line 1826
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRrZeroFunctionActive:Z

    goto :goto_1

    .line 1824
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->cancelRrZeroRunnable()V

    :cond_4
    :goto_1
    return-void
.end method

.method public onSecRowRtSeatHeReHeigPosChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1766
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowRtSeatHeadHeig:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1767
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearRightSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/bean/Seat;->setSeatHeadVer(I)V

    .line 1768
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowRtSeatHeadHeig:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 1769
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->handleRRDropDownMenu()V

    return-void
.end method

.method public onSecRowRtSeatHeReHorzPosChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1774
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowRtSeatHeadHorz:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1775
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearRightSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/bean/Seat;->setSeatHeadHor(I)V

    .line 1776
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowRtSeatHeadHorz:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 1777
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->handleRRDropDownMenu()V

    return-void
.end method

.method public onSecRowRtSeatHorzPosChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1723
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowRtSeatHorz:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1724
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearRightSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/bean/Seat;->setSeatHorzValue(I)V

    .line 1725
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowRtSeatHorz:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 1726
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->handleRRDropDownMenu()V

    return-void
.end method

.method public onSecRowRtSeatLeSuHeigPosChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1740
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowRtSeatLeSuHeig:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1741
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearRightSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/bean/Seat;->setSeatCushionValue(I)V

    .line 1742
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowRtSeatLeSuHeig:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 1743
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->handleRRDropDownMenu()V

    return-void
.end method

.method public onSecRowRtSeatMoveStatusChanged(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1920
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowRtSeatMoveStatusData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    const-string v0, "isSupportSecRowZeroGravity"

    .line 1922
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "carcontrol"

    const/4 v2, 0x4

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 1924
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getStallState()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1925
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_zero_entering:I

    iget v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRrZeroToastScreenId:I

    invoke-virtual {v0, v2, v3}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(II)V

    .line 1926
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object v0

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_zero_entering:I

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1928
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_zero_p_warning:I

    iget v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRrZeroToastScreenId:I

    invoke-virtual {v0, v2, v3}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(II)V

    .line 1929
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object v0

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_zero_p_warning:I

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;)Ljava/lang/String;

    .line 1931
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRtZeroGravErrorEvent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRtZeroGravErrorCallback:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1932
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/speech/SpeechModelFactory;->getSpeechModel(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/speech/ISpeechModel;

    move-result-object v0

    .line 1933
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRtZeroGravErrorEvent:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRtZeroGravErrorCallback:Ljava/lang/String;

    add-int/lit8 p1, p1, 0x64

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/xiaopeng/carcontrol/speech/ISpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    if-ne p1, v2, :cond_2

    .line 1936
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRtEasyEnterErrorEvent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRtEasyEnterErrorCallback:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1937
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/speech/SpeechModelFactory;->getSpeechModel(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/speech/ISpeechModel;

    move-result-object v0

    .line 1938
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRtEasyEnterErrorEvent:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRtEasyEnterErrorCallback:Ljava/lang/String;

    add-int/lit8 p1, p1, 0x64

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/xiaopeng/carcontrol/speech/ISpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onSecRowRtSeatZeroGravPosChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1789
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowRtSeatAngle:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1790
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearRightSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/bean/Seat;->setSeatZeroAngle(I)V

    .line 1791
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowRtSeatAngle:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onTlOnSeatChanged(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "occupied"
        }
    .end annotation

    .line 1559
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isRearSeatOccupied()Z

    move-result v0

    .line 1560
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTlOnSeatChanged occupied: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIsRearSbrOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsRearSbrOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isRearSeatOccupied: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 1561
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsRearSbrOn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1562
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsRearSbrOn:Z

    .line 1563
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearSbrStRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1564
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->handleRearSeatSbrSt(Z)V

    .line 1566
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTlSeatOccupied:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onTmOnSeatChanged(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "occupied"
        }
    .end annotation

    .line 1571
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isRearSeatOccupied()Z

    move-result v0

    .line 1572
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTmOnSeatChanged occupied: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIsRearSbrOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsRearSbrOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isRearSeatOccupied: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 1573
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsRearSbrOn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1574
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsRearSbrOn:Z

    .line 1575
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearSbrStRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1576
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->handleRearSeatSbrSt(Z)V

    .line 1578
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTmSeatOccupied:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onTrOnSeatChanged(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "occupied"
        }
    .end annotation

    .line 1583
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isRearSeatOccupied()Z

    move-result v0

    .line 1584
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTrOnSeatChanged occupied: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIsRearSbrOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsRearSbrOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isRearSeatOccupied: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 1585
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsRearSbrOn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1586
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsRearSbrOn:Z

    .line 1587
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearSbrStRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1588
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->handleRearSeatSbrSt(Z)V

    .line 1590
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrSeatOccupied:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onTrdRowLTFoldErr(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 2137
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTlFoldErrorEvent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTlFoldErrorCallback:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "carcontrol"

    .line 2138
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/speech/SpeechModelFactory;->getSpeechModel(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/speech/ISpeechModel;

    move-result-object v0

    .line 2139
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTlFoldErrorEvent:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTlFoldErrorCallback:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/xiaopeng/carcontrol/speech/ISpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2141
    :cond_0
    sget-boolean v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->showTrdRowLTFoldErrData:Z

    if-eqz v0, :cond_2

    .line 2143
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTlFuncTrigSource()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    .line 2145
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->showTrdFoldErrToast(IIIZ)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2147
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowLTFoldErrData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onTrdRowLtFoldStatusChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 1832
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowLtFoldStatus:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onTrdRowLtSeatFoldSuccess(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 1851
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowLtSeatFoldSuccessStatus:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 1852
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTlFoldErrorEvent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTlFoldErrorCallback:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "carcontrol"

    .line 1853
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/speech/SpeechModelFactory;->getSpeechModel(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/speech/ISpeechModel;

    move-result-object v0

    .line 1854
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTlFoldErrorEvent:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTlFoldErrorCallback:Ljava/lang/String;

    add-int/lit8 p1, p1, 0x64

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/xiaopeng/carcontrol/speech/ISpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onTrdRowLtSeatHeadVerticalPosChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1882
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowLtSeatHeadVerticalPos:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onTrdRowLtSeatTiltPosChangedpos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1874
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowLtSeatTiltPos:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onTrdRowMidSeatHeadVerticalPosChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1890
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowMidSeatHeadVerticalPos:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onTrdRowRTFoldErr(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 2154
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrFoldErrorEvent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrFoldErrorCallback:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "carcontrol"

    .line 2155
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/speech/SpeechModelFactory;->getSpeechModel(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/speech/ISpeechModel;

    move-result-object v0

    .line 2156
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrFoldErrorEvent:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrFoldErrorCallback:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/xiaopeng/carcontrol/speech/ISpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2158
    :cond_0
    sget-boolean v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->showTrdRowRTFoldErrData:Z

    if-eqz v0, :cond_2

    .line 2160
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrFuncTrigSource()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    const/4 v2, 0x0

    .line 2162
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->showTrdFoldErrToast(IIIZ)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2164
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowRTFoldErrData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onTrdRowRtFoldStatusChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 1837
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowRtFoldStatus:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onTrdRowRtSeatFoldSuccess(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 1860
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowRtSeatFoldSuccessStatus:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 1861
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrFoldErrorEvent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrFoldErrorCallback:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "carcontrol"

    .line 1862
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/speech/SpeechModelFactory;->getSpeechModel(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/speech/ISpeechModel;

    move-result-object v0

    .line 1863
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrFoldErrorEvent:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrFoldErrorCallback:Ljava/lang/String;

    add-int/lit8 p1, p1, 0x64

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/xiaopeng/carcontrol/speech/ISpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onTrdRowRtSeatHeadVerticalPosChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1886
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowRtSeatHeadVerticalPos:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onTrdRowRtSeatTiltPosChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1878
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowRtSeatTiltPos:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onTrdRowStowErr(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 2228
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowStowErrorEvent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowStowErrorCallback:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "carcontrol"

    .line 2229
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/speech/SpeechModelFactory;->getSpeechModel(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/speech/ISpeechModel;

    move-result-object v0

    .line 2230
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowStowErrorEvent:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowStowErrorCallback:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/xiaopeng/carcontrol/speech/ISpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2232
    :cond_0
    sget-boolean v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->showTrdRowStowErrData:Z

    if-eqz v0, :cond_3

    .line 2233
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrFuncTrigSource()I

    move-result v0

    .line 2234
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTlFuncTrigSource()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 2239
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowStowErrData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x3

    .line 2237
    invoke-direct {p0, p1, v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->showTrdStowErrToast(III)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onTrdRowStowStatusChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 1869
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowStowStatus:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onTrdRowStowSuccess(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 1842
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowStowSuccessStatus:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 1843
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowStowErrorEvent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowStowErrorCallback:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "carcontrol"

    .line 1844
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/speech/SpeechModelFactory;->getSpeechModel(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/speech/ISpeechModel;

    move-result-object v0

    .line 1845
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowStowErrorEvent:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mTrdRowStowErrorCallback:Ljava/lang/String;

    add-int/lit8 p1, p1, 0x64

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/xiaopeng/carcontrol/speech/ISpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public previewDrvSeatAntiFatigue()V
    .locals 0

    .line 4955
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->handleMsmdSeatAntiFatiguePreviewStatusChanged()V

    return-void
.end method

.method public removeDropDownRun()V
    .locals 3

    .line 3249
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatControlHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 3250
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDropDownRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3257
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->cancelNotificationByID(Landroid/content/Context;I)V

    return-void
.end method

.method public restoreDrvSeatPos()Z
    .locals 1

    .line 2565
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getDrvSeatPosIdx()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->restoreDrvSeatPos(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public restoreDrvSeatPos(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2574
    invoke-virtual {p0, p1, v0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->restoreDrvSeatPos(IZZ)Z

    move-result p1

    return p1
.end method

.method public restoreDrvSeatPos(IZZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "index",
            "ignoreDrvDoorState",
            "ignoreDrvState"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2584
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->restoreDrvSeatPos(IZZZ)Z

    move-result p1

    return p1
.end method

.method public restoreDrvSeatPos(IZZZ)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "index",
            "ignoreDrvDoorState",
            "ignoreDrvState",
            "ignoreSpeed"
        }
    .end annotation

    .line 2589
    sget-object v0, Lcom/xiaopeng/track/constant/BID;->seat_drv_restore:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {v0}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;)V

    .line 2590
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isSupportMsm()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2591
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    const-string p2, "Current car does not support MSMD feature"

    invoke-static {p1, p2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1

    .line 2595
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->checkChairMovable(ZZZ)Z

    move-result p2

    if-nez p2, :cond_1

    .line 2596
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    const-string p2, "checkChairMovable: False"

    invoke-static {p1, p2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1

    :cond_1
    if-gez p1, :cond_2

    const/4 p2, -0x1

    if-ne p1, p2, :cond_3

    :cond_2
    const/4 p2, 0x3

    if-lt p1, p2, :cond_4

    .line 2600
    :cond_3
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "restoreDrvSeatPos The memory drv seat index is invalid: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1

    .line 2603
    :cond_4
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {p2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getDrvSeatPos(I)[I

    move-result-object p2

    .line 2605
    iget-object p3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatControlHandler:Landroid/os/Handler;

    if-eqz p3, :cond_5

    .line 2606
    iget-object p4, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDropDownRun:Ljava/lang/Runnable;

    invoke-virtual {p3, p4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2613
    :cond_5
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;

    move-result-object p3

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p4

    invoke-virtual {p4}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    const/16 v0, 0x64

    invoke-virtual {p3, p4, v0}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->cancelNotificationByID(Landroid/content/Context;I)V

    .line 2614
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/bean/Seat;->fromPosition([I)Lcom/xiaopeng/carcontrol/bean/Seat;

    move-result-object p2

    .line 2615
    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/bean/Seat;->getSeatPosition()[I

    move-result-object p2

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatSavedPos:[I

    .line 2616
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "restoreDrvSeatPos mDriverSeatSavedPos index="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ", position="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatSavedPos:[I

    .line 2617
    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2616
    invoke-static {p2, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2619
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatSavedPos:[I

    const/4 p2, 0x2

    aget p1, p1, p2

    const/16 p3, 0x32

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const-string p4, "isSupportSeatSectionalRecovery"

    .line 2620
    invoke-static {p4}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_6

    .line 2621
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatTiltPos()I

    move-result p4

    if-ge p4, p3, :cond_6

    .line 2622
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatTiltPos()I

    move-result p3

    sub-int p3, p1, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-lt p3, p2, :cond_6

    const/4 p2, 0x1

    .line 2623
    iput-boolean p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsDrvRestoreSafeChairBack:Z

    .line 2624
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDSeatTiltPos(I)V

    return p2

    .line 2627
    :cond_6
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatSavedPos:[I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlDriverSeatAuto([I)Z

    move-result p1

    return p1
.end method

.method public restoreDrvSeatPos(ZZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ignoreDrvDoorState",
            "ignoreDrvState"
        }
    .end annotation

    .line 2579
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getDrvSeatPosIdx()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->restoreDrvSeatPos(IZZ)Z

    move-result p1

    return p1
.end method

.method public restorePsnSeatPos()Z
    .locals 6

    .line 2633
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isSupportMSMP()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2634
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    const-string v2, "Current car does not support MSMD feature"

    invoke-static {v0, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1

    .line 2638
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatControlHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 2639
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnDropDownRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2644
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getPsnSeatPos()[I

    move-result-object v0

    .line 2645
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restorePsnSeatPos:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2646
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/bean/Seat;->fromPosition([I)Lcom/xiaopeng/carcontrol/bean/Seat;

    move-result-object v0

    .line 2647
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/Seat;->getSeatPosition()[I

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatSavedPos:[I

    .line 2648
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restorePsnSeatPos mPsnSeatSavedPoshor:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatSavedPos:[I

    aget v1, v3, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",ver:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatSavedPos:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",tilt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatSavedPos:[I

    const/4 v4, 0x2

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",leg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatSavedPos:[I

    const/4 v5, 0x3

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2652
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatSavedPos:[I

    aget v0, v0, v4

    const/16 v1, 0x32

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const-string v2, "isSupportSeatSectionalRecovery"

    .line 2653
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2654
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPSeatTiltPos()I

    move-result v2

    if-ge v2, v1, :cond_2

    .line 2655
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPSeatTiltPos()I

    move-result v1

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lt v1, v4, :cond_2

    .line 2656
    iput-boolean v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsPsnRestoreSafeChairBack:Z

    .line 2657
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPSeatTiltPos(I)V

    return v3

    .line 2660
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatSavedPos:[I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlPsnSeatAuto([I)Z

    move-result v0

    return v0
.end method

.method public restorePsnSeatPos(IIZ)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "index",
            "selectId",
            "isSelected"
        }
    .end annotation

    .line 2666
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isSupportMSMP()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2667
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    const-string p2, "Current car does not support MSM feature"

    invoke-static {p1, p2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0

    .line 2670
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getPsnSelectSeatPos(I)[I

    move-result-object p1

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 2672
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    const-string p2, "restorePsnSeatPos mPsnSeatSavedPos no save seat data"

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 2676
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatControlHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    .line 2677
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnDropDownRun:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2682
    :cond_2
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/bean/Seat;->fromPosition([I)Lcom/xiaopeng/carcontrol/bean/Seat;

    move-result-object p1

    .line 2683
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/bean/Seat;->getSeatPosition()[I

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatSavedPos:[I

    if-eqz p3, :cond_4

    .line 2686
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mInPsnSelectProcessData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 2687
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->savePsnCurrentHabitId(I)V

    .line 2688
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    iget-object p3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatSavedPos:[I

    invoke-interface {p1, p3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->savePsnSeatPos([I)V

    .line 2689
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatPsnHabitIndex:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    const-string p1, "isSupportDomainControllerSeatWelcome"

    .line 2690
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2691
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPsnAllPositionsToDomain()V

    goto :goto_0

    .line 2693
    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPsnSeatAllPositionsToMcu()V

    goto :goto_0

    .line 2696
    :cond_4
    sget-object p1, Lcom/xiaopeng/track/constant/BID;->seat_psn_restore:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {p1}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;)V

    .line 2698
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "restorePsnSeatPos mPsnSeatSavedPoshor:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatSavedPos:[I

    aget p3, p3, v0

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ",ver:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatSavedPos:[I

    aget p3, p3, v1

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ",tilt:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatSavedPos:[I

    const/4 v2, 0x2

    aget p3, p3, v2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ",leg:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatSavedPos:[I

    const/4 v2, 0x3

    aget p3, p3, v2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2701
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsPsnSeatManualMoving:Z

    if-eqz p1, :cond_5

    .line 2702
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    const-string p2, "controlPsnSeatAuto failed, the seat is still being adjusted"

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 2706
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$GFDLBg_jlpw4u5pQEST7DAhn69c;

    invoke-direct {p2, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$GFDLBg_jlpw4u5pQEST7DAhn69c;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v1
.end method

.method public restorePsnSelectSeatPos(IZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "selectId",
            "isSelect"
        }
    .end annotation

    .line 2714
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getPsnSeatPosIdx(I)I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->restorePsnSeatPos(IIZ)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public restoreRLSeatPos(IZ)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "selectId",
            "isSelected"
        }
    .end annotation

    const-string v0, "isSupportRearSeatCtrl"

    .line 2828
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const-string v0, "isSupportSecRowMemory"

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2832
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getRLSelectSeatPos(I)[I

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 2834
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    const-string p2, "restorePsnSeatPos mPsnSeatSavedPos no save seat data"

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 2838
    :cond_1
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatControlHandler:Landroid/os/Handler;

    if-eqz v3, :cond_2

    .line 2839
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRLDropDownRun:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2841
    :cond_2
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/bean/Seat;->fromSecRowPosition([I)Lcom/xiaopeng/carcontrol/bean/Seat;

    move-result-object v0

    .line 2842
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/Seat;->getSecRowPosition()[I

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRLSeatSavedPos:[I

    if-eqz p2, :cond_4

    .line 2845
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mInRLSelectProcessData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 2846
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRLSeatSavedPos:[I

    invoke-interface {p2, v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->saveRLSeatPos([II)V

    .line 2847
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatRLHabitIndex:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    const-string p1, "isSupportDomainControllerSeatWelcome"

    .line 2848
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2849
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLAllPositionsToDomain()V

    goto :goto_0

    .line 2851
    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatAllPositionsToMcu()V

    .line 2854
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "restoreRLSeatPos mRLSeatSavedPos:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRLSeatSavedPos:[I

    aget v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ",angle:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRLSeatSavedPos:[I

    aget v0, v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ",tilt:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRLSeatSavedPos:[I

    const/4 v3, 0x2

    aget v0, v0, v3

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ",cushion:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRLSeatSavedPos:[I

    const/4 v3, 0x3

    aget v0, v0, v3

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ",leg:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRLSeatSavedPos:[I

    const/4 v3, 0x4

    aget v0, v0, v3

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ",headVer:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRLSeatSavedPos:[I

    const/4 v3, 0x5

    aget v0, v0, v3

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ",headHor:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRLSeatSavedPos:[I

    const/4 v3, 0x6

    aget v0, v0, v3

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2857
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsPsnSeatManualMoving:Z

    if-eqz p1, :cond_5

    .line 2858
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    const-string p2, "restoreRLSeatPos failed, the seat is still being adjusted"

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 2862
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$k62pg04JxJuTMMapJMFVvkaUYa8;

    invoke-direct {p2, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$k62pg04JxJuTMMapJMFVvkaUYa8;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v2

    .line 2829
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    const-string p2, "Current car does not support MSM feature"

    invoke-static {p1, p2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1
.end method

.method public restoreRLSelectSeatPos(IZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "selectId",
            "isSelect"
        }
    .end annotation

    .line 2727
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->restoreRLSeatPos(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public restoreRRSeatPos(IZ)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "selectId",
            "isSelected"
        }
    .end annotation

    const-string v0, "isSupportRearSeatCtrl"

    .line 2869
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const-string v0, "isSupportSecRowMemory"

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2873
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getRRSelectSeatPos(I)[I

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 2875
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    const-string p2, "restoreRRSeatPos RearRight no save seat data"

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 2879
    :cond_1
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatControlHandler:Landroid/os/Handler;

    if-eqz v3, :cond_2

    .line 2880
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRRDropDownRun:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2882
    :cond_2
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/bean/Seat;->fromSecRowPosition([I)Lcom/xiaopeng/carcontrol/bean/Seat;

    move-result-object v0

    .line 2883
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/Seat;->getSecRowPosition()[I

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRRSeatSavedPos:[I

    if-eqz p2, :cond_4

    .line 2886
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mInRLSelectProcessData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 2887
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRRSeatSavedPos:[I

    invoke-interface {p2, v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->saveRRSeatPos([II)V

    .line 2888
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSeatRRHabitIndex:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    const-string p1, "isSupportDomainControllerSeatWelcome"

    .line 2889
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2890
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRAllPositionsToDomain()V

    goto :goto_0

    .line 2892
    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatAllPositionsToMcu()V

    .line 2895
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "restoreRRSeatPos RearRightPos:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRRSeatSavedPos:[I

    aget v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ",ver:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRRSeatSavedPos:[I

    aget v0, v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ",tilt:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRRSeatSavedPos:[I

    const/4 v3, 0x2

    aget v0, v0, v3

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ",leg:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRRSeatSavedPos:[I

    const/4 v3, 0x3

    aget v0, v0, v3

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ",cushion:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRRSeatSavedPos:[I

    const/4 v3, 0x4

    aget v0, v0, v3

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2898
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsRearRightSeatManualMoving:Z

    if-eqz p1, :cond_5

    .line 2899
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    const-string p2, "restoreRRSeatPos failed, the seat is still being adjusted"

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 2903
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$US9Mp5gWJQClRMq1cWxaY0Zb-GU;

    invoke-direct {p2, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$US9Mp5gWJQClRMq1cWxaY0Zb-GU;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v2

    .line 2870
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    const-string p2, "Current car does not support Rear feature"

    invoke-static {p1, p2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1
.end method

.method public restoreRRSelectSeatPos(IZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "selectId",
            "isSelect"
        }
    .end annotation

    .line 2740
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->restoreRRSeatPos(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public savePsnSeatName(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "posName",
            "selectId"
        }
    .end annotation

    .line 2780
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->savePsnSeatName(Ljava/lang/String;I)V

    .line 2781
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatNameData:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public saveRLSeatName(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "posName",
            "selectId"
        }
    .end annotation

    .line 2786
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->saveRLSeatName(Ljava/lang/String;I)V

    .line 2787
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowLtNameData:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public saveRRSeatName(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "posName",
            "selectId"
        }
    .end annotation

    .line 2792
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->saveRRSeatName(Ljava/lang/String;I)V

    .line 2793
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mSecRowRtNameData:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public saveSelectPsnSeatData(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectId"
        }
    .end annotation

    .line 2753
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getPsnSeatPosIdx(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->memorySelectPsnSeatData(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2754
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_saved:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public saveSelectRLSeatData(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectId"
        }
    .end annotation

    .line 2762
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->memorySelectRLSeatData(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2763
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_saved:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public saveSelectRRSeatData(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectId"
        }
    .end annotation

    .line 2771
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->memorySelectRRSeatData(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2772
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_saved:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setDriverAntiFatigueMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 4960
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setDriverAntiFatigueMode(I)V

    return-void
.end method

.method public setDriverAntiFatigueReq(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Req"
        }
    .end annotation

    .line 4965
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setDriverAntiFatigueReq(I)V

    return-void
.end method

.method public setDrvSeatAllPositions(IIIII)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "horizonPos",
            "verticalPos",
            "tiltPos",
            "legPos",
            "cushionPos"
        }
    .end annotation

    .line 3402
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDrvSeatAllPositions ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3403
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setDriverAllPositions(IIIII)V

    return-void
.end method

.method public setDrvSeatAllPositionsWithoutSave(IIIII)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "horizonPos",
            "verticalPos",
            "tiltPos",
            "legPos",
            "cushionPos"
        }
    .end annotation

    .line 3538
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDrvSeatAllPositionsWithoutSave ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x64

    if-ltz p1, :cond_0

    if-le p1, v0, :cond_1

    .line 3541
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/bean/Seat;->getSeatHorzValue()I

    move-result p1

    :cond_1
    move v2, p1

    if-ltz p2, :cond_2

    if-le p2, v0, :cond_3

    .line 3545
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/bean/Seat;->getSeatVertValue()I

    move-result p2

    :cond_3
    move v3, p2

    if-ltz p3, :cond_4

    if-le p3, v0, :cond_5

    .line 3549
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/bean/Seat;->getSeatTiltValue()I

    move-result p3

    :cond_5
    move v4, p3

    if-ltz p4, :cond_6

    if-le p4, v0, :cond_7

    .line 3553
    :cond_6
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/bean/Seat;->getSeatLegValue()I

    move-result p4

    :cond_7
    move v5, p4

    if-ltz p5, :cond_8

    if-le p5, v0, :cond_9

    .line 3557
    :cond_8
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/bean/Seat;->getSeatCushionValue()I

    move-result p5

    :cond_9
    move v6, p5

    .line 3559
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    const/4 p2, 0x5

    new-array p2, p2, [I

    const/4 p3, 0x0

    aput v2, p2, p3

    const/4 p3, 0x1

    aput v3, p2, p3

    const/4 p3, 0x2

    aput v4, p2, p3

    const/4 p3, 0x3

    aput v5, p2, p3

    const/4 p3, 0x4

    aput v6, p2, p3

    invoke-interface {p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->saveDrvTargetSeatPos([I)V

    .line 3560
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface/range {v1 .. v6}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setDriverAllPositions(IIIII)V

    return-void
.end method

.method public setMassageMode(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seatId",
            "mode"
        }
    .end annotation

    .line 4950
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setMassageMode(II)V

    return-void
.end method

.method public setMassagerEffect(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "effectId"
        }
    .end annotation

    .line 4461
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->makeMassagerIds(I)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setMassagerEffect(Ljava/util/Set;Ljava/lang/String;)V

    return-void
.end method

.method public setMassagerEffect(Ljava/util/Set;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ids",
            "effectId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 4456
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setMassagerEffect(Ljava/util/Set;Ljava/lang/String;)V

    return-void
.end method

.method public setMassagerIntensity(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "intensity"
        }
    .end annotation

    .line 4532
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMassagerIntensity("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4533
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->makeMassagerIds(I)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setMassagerIntensity(Ljava/util/Set;I)V

    return-void
.end method

.method public setPsnAllPositionsToDomain()V
    .locals 13

    .line 3438
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isPsnWelcomeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3439
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getPsnSeatPos()[I

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3440
    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 3441
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPsnSeatAllPositionsToMcu saved seat position hor:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget v4, v0, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",ver:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x1

    aget v5, v0, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ",tilt:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v5, 0x2

    aget v6, v0, v5

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ",leg:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v6, 0x3

    aget v7, v0, v6

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3444
    iget-object v7, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    const/4 v8, 0x1

    aget v9, v0, v3

    aget v10, v0, v4

    aget v11, v0, v5

    aget v12, v0, v6

    invoke-interface/range {v7 .. v12}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setPsnAllPositions(IIIII)V

    :cond_0
    return-void
.end method

.method public setPsnSeatAllPositions(IIII)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "horizonPos",
            "verticalPos",
            "tiltPos",
            "legPos"
        }
    .end annotation

    .line 3408
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setPsnSeatAllPositions ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3409
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setPsnAllPositions(IIII)V

    return-void
.end method

.method public setPsnSeatAllPositionsToMcu()V
    .locals 8

    .line 3490
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isPsnWelcomeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3491
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getPsnSeatPos()[I

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3492
    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 3493
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPsnSeatAllPositionsToMcu saved seat position hor:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget v4, v0, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",ver:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x1

    aget v5, v0, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ",tilt:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v5, 0x2

    aget v6, v0, v5

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ",leg:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v6, 0x3

    aget v7, v0, v6

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3496
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    aget v2, v0, v3

    aget v3, v0, v4

    aget v4, v0, v5

    aget v0, v0, v6

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setPsnAllPositionsToMcu(IIII)V

    :cond_0
    return-void
.end method

.method public setPsnSeatAllPositionsWithoutSave(IIII)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "horizonPos",
            "verticalPos",
            "tiltPos",
            "legPos"
        }
    .end annotation

    .line 3565
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setPsnSeatAllPositionsWithoutSave ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x64

    if-ltz p1, :cond_0

    if-le p1, v0, :cond_1

    .line 3568
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getPSeatHorzPos()I

    move-result p1

    :cond_1
    if-ltz p2, :cond_2

    if-le p2, v0, :cond_3

    .line 3572
    :cond_2
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getPSeatVerPos()I

    move-result p2

    :cond_3
    if-ltz p3, :cond_4

    if-le p3, v0, :cond_5

    .line 3576
    :cond_4
    iget-object p3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {p3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getPSeatTiltPos()I

    move-result p3

    :cond_5
    if-ltz p4, :cond_6

    if-le p4, v0, :cond_7

    .line 3580
    :cond_6
    iget-object p4, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {p4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getPSeatLegPos()I

    move-result p4

    .line 3582
    :cond_7
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    const/4 v2, 0x2

    aput p3, v1, v2

    const/4 v2, 0x3

    aput p4, v1, v2

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->savePsnTargetSeatPos([I)V

    .line 3583
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setPsnAllPositions(IIII)V

    return-void
.end method

.method public setRLAllPositionsToDomain()V
    .locals 20

    move-object/from16 v0, p0

    .line 3452
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isRearSeatWelcomeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3453
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getRLSeatPos()[I

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3454
    array-length v2, v1

    const/4 v3, 0x7

    if-lt v2, v3, :cond_0

    .line 3455
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRLAllPositionsToDomain mRLSeatSavedPos:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v5, v1, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",angle:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x1

    aget v6, v1, v5

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ",tilt:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v6, 0x2

    aget v7, v1, v6

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ",cushion:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v7, 0x3

    aget v8, v1, v7

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ",leg:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v8, 0x4

    aget v9, v1, v8

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, ",headVer:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v9, 0x5

    aget v10, v1, v9

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, ",headHor:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v10, 0x6

    aget v11, v1, v10

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3458
    iget-object v11, v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    const/4 v12, 0x1

    aget v13, v1, v4

    aget v14, v1, v5

    aget v15, v1, v6

    aget v16, v1, v7

    aget v17, v1, v8

    aget v18, v1, v9

    aget v19, v1, v10

    invoke-interface/range {v11 .. v19}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setRLAllPositions(IIIIIIII)V

    :cond_0
    return-void
.end method

.method public setRLSeatAllPositions(IIIIIII)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "horizonPos",
            "anglePos",
            "tiltPos",
            "cushionPos",
            "legPos",
            "headVer",
            "headHor"
        }
    .end annotation

    move-object v0, p0

    .line 3414
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " setRLSeatAllPositions ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move v4, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move v5, p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move v6, p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move v7, p4

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v8, p5

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v9, p6

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v10, p7

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3415
    iget-object v3, v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface/range {v3 .. v10}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setRLAllPositions(IIIIIII)V

    return-void
.end method

.method public setRLSeatAllPositionsToMcu()V
    .locals 0

    return-void
.end method

.method public setRRAllPositionsToDomain()V
    .locals 20

    move-object/from16 v0, p0

    .line 3471
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isRearSeatWelcomeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3472
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getRRSeatPos()[I

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3473
    array-length v2, v1

    const/4 v3, 0x7

    if-lt v2, v3, :cond_0

    .line 3474
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRRAllPositionsToDomain mRRSeatSavedPos:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v5, v1, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",angle:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x1

    aget v6, v1, v5

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ",tilt:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v6, 0x2

    aget v7, v1, v6

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ",cushion:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v7, 0x3

    aget v8, v1, v7

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ",leg:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v8, 0x4

    aget v9, v1, v8

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, ",headVer:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v9, 0x5

    aget v10, v1, v9

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, ",headHor:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v10, 0x6

    aget v11, v1, v10

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3477
    iget-object v11, v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    const/4 v12, 0x1

    aget v13, v1, v4

    aget v14, v1, v5

    aget v15, v1, v6

    aget v16, v1, v7

    aget v17, v1, v8

    aget v18, v1, v9

    aget v19, v1, v10

    invoke-interface/range {v11 .. v19}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setRRAllPositions(IIIIIIII)V

    :cond_0
    return-void
.end method

.method public setRRSeatAllPositions(IIIIIII)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "horizonPos",
            "anglePos",
            "tiltPos",
            "cushionPos",
            "legPos",
            "headVer",
            "headHor"
        }
    .end annotation

    move-object v0, p0

    .line 3420
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " setRRSeatAllPositions ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move v4, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move v5, p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move v6, p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move v7, p4

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v8, p5

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v9, p6

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v10, p7

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3421
    iget-object v3, v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface/range {v3 .. v10}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setRRAllPositions(IIIIIII)V

    return-void
.end method

.method public setRRSeatAllPositionsToMcu()V
    .locals 0

    return-void
.end method

.method public setRhythmIntensity(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "intensity"
        }
    .end annotation

    .line 4861
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRhythmIntensity("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4862
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->makeRhythmIds(I)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setRhythmIntensity(Ljava/util/Set;I)V

    return-void
.end method

.method public setRhythmMode(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 4881
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRhythmMode()I

    move-result v0

    if-eq p1, v0, :cond_2

    .line 4882
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setRhythmMode(I)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "/system/media/audio/xiaopeng/cdu/wav/CDU_seat_rhythm_mode_2.wav"

    goto :goto_0

    :cond_1
    const-string v0, "/system/media/audio/xiaopeng/cdu/wav/CDU_seat_rhythm_mode_1.wav"

    .line 4896
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRhythmMode: has music = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->isMusicPlaying()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4897
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->isMusicPlaying()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x2

    .line 4899
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$GZX7JzJwSMcYF5XK_YTyt87Tge4;

    invoke-direct {v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$GZX7JzJwSMcYF5XK_YTyt87Tge4;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x1f4

    invoke-static {p1, v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    :cond_2
    return-void
.end method

.method public setVibrateIntensity(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "intensity"
        }
    .end annotation

    .line 4918
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setVibrateIntensity(II)V

    return-void
.end method

.method public setWaistReliefMemoryMode(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seatId",
            "mode"
        }
    .end annotation

    .line 4974
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setWaistReliefMemoryMode(II)V

    return-void
.end method

.method public setWaistReliefMode(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seatId",
            "mode"
        }
    .end annotation

    .line 4983
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setWaistReliefMode(II)V

    return-void
.end method

.method public startMassager(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x3

    if-gt p1, v0, :cond_2

    .line 4374
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->isMassagerRunning(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4375
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->startMassager(I)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 4378
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->isMassagerRunning(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4379
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->startMassager(I)V

    :cond_2
    return-void
.end method

.method public startMassager(IILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "index",
            "intensity",
            "effectId"
        }
    .end annotation

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 4414
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 4415
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-gt v1, v2, :cond_1

    .line 4417
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v2, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->isMassagerRunning(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4418
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4420
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4423
    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 4424
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v1, p1, p3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setMassagerEffect(Ljava/util/Set;Ljava/lang/String;)V

    .line 4425
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setMassagerIntensity(Ljava/util/Set;I)V

    .line 4427
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 4428
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {p1, v0, p3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->startMassager(Ljava/util/Set;Ljava/lang/String;)V

    .line 4429
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {p1, v0, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setMassagerIntensity(Ljava/util/Set;I)V

    goto :goto_2

    .line 4432
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->isMassagerRunning(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4434
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->makeMassagerIds(I)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setMassagerEffect(Ljava/util/Set;Ljava/lang/String;)V

    .line 4435
    iget-object p3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->makeMassagerIds(I)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p3, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setMassagerIntensity(Ljava/util/Set;I)V

    goto :goto_2

    .line 4437
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->startMassager(IILjava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public startMassager(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "effectId"
        }
    .end annotation

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 4386
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 4387
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-gt v1, v2, :cond_1

    .line 4389
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v2, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->isMassagerRunning(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4390
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4392
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4395
    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 4396
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setMassagerEffect(Ljava/util/Set;Ljava/lang/String;)V

    .line 4398
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 4399
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {p1, v0, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->startMassager(Ljava/util/Set;Ljava/lang/String;)V

    goto :goto_2

    .line 4402
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->isMassagerRunning(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4404
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->makeMassagerIds(I)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setMassagerEffect(Ljava/util/Set;Ljava/lang/String;)V

    goto :goto_2

    .line 4406
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getMassagerIntensity(I)I

    move-result v1

    invoke-interface {v0, p1, v1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->startMassager(IILjava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public startMassager(Lcom/xiaopeng/xuimanager/seatmassager/Seat;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seat",
            "effectId"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 4445
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->startMassager(Lcom/xiaopeng/xuimanager/seatmassager/Seat;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startRhythm(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "mode"
        }
    .end annotation

    const/4 v0, 0x0

    .line 4720
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->startRhythm(IIZ)V

    return-void
.end method

.method public startRhythm(IIZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "index",
            "mode",
            "playEffect"
        }
    .end annotation

    .line 4725
    sget-object v0, Lcom/xiaopeng/track/constant/BID;->seat_rhythm_switch:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {v0}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    if-ltz p2, :cond_2

    .line 4727
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setRhythmMode(I)V

    .line 4728
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->makeRhythmIds(I)Ljava/util/Set;

    move-result-object p1

    .line 4729
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setRhythmEnable(Ljava/util/Set;Z)V

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "/system/media/audio/xiaopeng/cdu/wav/CDU_seat_rhythm_mode_2.wav"

    goto :goto_0

    :cond_1
    const-string p1, "/system/media/audio/xiaopeng/cdu/wav/CDU_seat_rhythm_mode_1.wav"

    .line 4743
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startRhythm: has music = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->isMusicPlaying()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  playEffect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_3

    .line 4744
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->isMusicPlaying()Z

    move-result p2

    if-nez p2, :cond_3

    const/4 p2, 0x2

    .line 4746
    new-instance p3, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$sdVC0HE1ufxxQP-i9k0KI31lk9s;

    invoke-direct {p3, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$sdVC0HE1ufxxQP-i9k0KI31lk9s;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, 0x1f4

    invoke-static {p2, p3, v0, v1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    goto :goto_1

    .line 4751
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startRhythm failed : mode = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public stopMassager(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 4451
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->makeMassagerIds(I)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->stopMassager(Ljava/util/Set;)V

    return-void
.end method

.method public stopRhythm(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 4769
    sget-object v0, Lcom/xiaopeng/track/constant/BID;->seat_rhythm_switch:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {v0}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4770
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->makeRhythmIds(I)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setRhythmEnable(Ljava/util/Set;Z)V

    return-void
.end method

.method public stopSeatControl()V
    .locals 1

    .line 3588
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    if-eqz v0, :cond_0

    .line 3589
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlDriverSeatEnd(I)V

    .line 3592
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mPsnSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    if-eqz v0, :cond_1

    .line 3593
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlPsnSeatEnd(I)V

    :cond_1
    const-string v0, "isSupportRearSeatCtrl"

    .line 3595
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3596
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearLeftSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    if-eqz v0, :cond_2

    .line 3597
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlRearLeftSeatEnd(I)V

    .line 3599
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mRearRightSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    if-eqz v0, :cond_3

    .line 3600
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlRearRightSeatEnd(I)V

    :cond_3
    return-void
.end method

.method public stopSecRowLeftSeatMoving()V
    .locals 2

    .line 3426
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    const-string v1, "stopSecRowLeftSeatMoving"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3427
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->stopSecRowLeftSeatMoving()V

    return-void
.end method

.method public stopSecRowRightSeatMoving()V
    .locals 2

    .line 3432
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    const-string v1, "stopSecRowRightSeatMoving"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3433
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->stopSecRowRightSeatMoving()V

    return-void
.end method

.method public stopWaistReliefMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seatId"
        }
    .end annotation

    .line 4993
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->stopWaistReliefMode(I)V

    return-void
.end method
