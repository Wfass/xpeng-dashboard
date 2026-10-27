.class public abstract Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;
.super Ljava/lang/Object;
.source "VipSeatControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl$OnStatusChangedListener;
    }
.end annotation


# static fields
.field protected static final HANDLER_WHAT_FLAT:I = 0x1

.field protected static final HANDLER_WHAT_RESTORE:I = 0x4

.field protected static final MESSAGE_DELAY_TIME:I = 0x7d0

.field public static final SEAT_MOVE_SAFE_HOR:I = 0x5f

.field public static final SEAT_MOVE_SAFE_TILT:I = 0x37

.field public static final SLEEP_REST_SEAT_SAFE_DRV_HOR_POS:I

.field public static final SLEEP_REST_SEAT_SAFE_DRV_TILT_POS:I

.field public static final SLEEP_REST_SEAT_SAFE_DRV_VER_POS:I

.field public static final SLEEP_REST_SEAT_SAFE_PSN_HOR_POS:I

.field public static final SLEEP_REST_SEAT_SAFE_PSN_TILT_POS:I

.field public static final SLEEP_REST_SEAT_SAFE_PSN_VER_POS:I

.field protected static final START_MOVE_CHAIR_DELAY:I = 0xbb8

.field public static final VIP_SEAT_HOR_POS:I = 0x64

.field public static final VIP_SEAT_TILT_POS:I

.field public static final VIP_SEAT_VER_POS:I


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private mFrontOccupiedConfirm:Z

.field private mGearObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;",
            ">;"
        }
    .end annotation
.end field

.field protected mHandler:Landroid/os/Handler;

.field protected mIsDrvMoveHor:Z

.field protected mIsInit:Z

.field protected mIsPsnMoveHor:Z

.field private mIsVoiceSource:Z

.field private mLayFlatDialog:Lcom/xiaopeng/xui/app/XDialog;

.field private mMcuIgObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRearOccupiedObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mRestoreDialog:Lcom/xiaopeng/xui/app/XDialog;

.field private mSeatOccupiedObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

.field protected mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

.field protected mStatusChangedListener:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl$OnStatusChangedListener;

.field protected mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

.field moveSeatFlatRun:Ljava/lang/Runnable;

.field restoreRun:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "isEcuDoSeatLayFlat"

    .line 52
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    :goto_0
    sput v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->VIP_SEAT_VER_POS:I

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "getSleepRestSeatDrv"

    .line 59
    invoke-static {v2, v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v1

    aget v1, v1, v0

    sput v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->SLEEP_REST_SEAT_SAFE_DRV_HOR_POS:I

    new-array v1, v0, [Ljava/lang/Object;

    .line 60
    invoke-static {v2, v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v1

    const/4 v3, 0x1

    aget v1, v1, v3

    sput v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->SLEEP_REST_SEAT_SAFE_DRV_VER_POS:I

    new-array v1, v0, [Ljava/lang/Object;

    .line 61
    invoke-static {v2, v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v1

    const/4 v2, 0x2

    aget v1, v1, v2

    sput v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->SLEEP_REST_SEAT_SAFE_DRV_TILT_POS:I

    new-array v1, v0, [Ljava/lang/Object;

    const-string v4, "getSleepRestSeatPsn"

    .line 63
    invoke-static {v4, v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v1

    aget v1, v1, v0

    sput v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->SLEEP_REST_SEAT_SAFE_PSN_HOR_POS:I

    new-array v1, v0, [Ljava/lang/Object;

    .line 64
    invoke-static {v4, v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v1

    aget v1, v1, v3

    sput v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->SLEEP_REST_SEAT_SAFE_PSN_VER_POS:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 65
    invoke-static {v4, v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v0

    aget v0, v0, v2

    sput v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->SLEEP_REST_SEAT_SAFE_PSN_TILT_POS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->TAG:Ljava/lang/String;

    .line 76
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->Normal:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mFrontOccupiedConfirm:Z

    .line 89
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mIsVoiceSource:Z

    .line 90
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mIsDrvMoveHor:Z

    .line 91
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mIsPsnMoveHor:Z

    .line 92
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mIsInit:Z

    .line 94
    new-instance v1, Landroid/os/Handler;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->getHandler(I)Landroid/os/Handler;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipSeatControl$fIVR0gP8suRDiZgqsBv9o_Gk_-I;

    invoke-direct {v2, p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipSeatControl$fIVR0gP8suRDiZgqsBv9o_Gk_-I;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;)V

    invoke-direct {v1, v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mHandler:Landroid/os/Handler;

    .line 423
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$q-G3EpDJmbmoxYjMeFsaY-hLO7s;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$q-G3EpDJmbmoxYjMeFsaY-hLO7s;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->moveSeatFlatRun:Ljava/lang/Runnable;

    .line 571
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$j160j3Qfi99_C5nHnie022rVY3g;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$j160j3Qfi99_C5nHnie022rVY3g;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->restoreRun:Ljava/lang/Runnable;

    return-void
.end method

.method private removeFlatHandler()V
    .locals 2

    .line 584
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 585
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->moveSeatFlatRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 586
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private removeRestoreHandler()V
    .locals 2

    .line 591
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 592
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->restoreRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 593
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private restoreSeatDelay()V
    .locals 4

    .line 547
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->isRearSeatNotOccupied()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->startRestoreNotice()V

    .line 549
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->restoreRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 550
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->restoreRun:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 552
    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->RestoreWaiting:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->callbackStatus(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)V

    .line 553
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->vip_seat_notice_rear_seat_occupied_restore:I

    .line 554
    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/App;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 553
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;Z)Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private showRestoreSeatDialog()V
    .locals 1

    const/4 v0, 0x0

    .line 496
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mFrontOccupiedConfirm:Z

    .line 497
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipSeatControl$8Gcjv3iJpxEkRM8pIZKpleYsHq4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipSeatControl$8Gcjv3iJpxEkRM8pIZKpleYsHq4;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private speakHeadrestTts()V
    .locals 3

    .line 559
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->vip_seat_notice_headrest:I

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;Z)Ljava/lang/String;

    return-void
.end method

.method private speakRearSeatOccupied(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layFlat"
        }
    .end annotation

    .line 563
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object v0

    if-eqz p1, :cond_0

    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->vip_seat_notice_rear_seat_occupied:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->vip_seat_notice_rear_seat_occupied_restore:I

    :goto_0
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;Z)Ljava/lang/String;

    return-void
.end method

.method private speakSeatOccupiedTts()V
    .locals 3

    .line 568
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->vip_seat_notice_front_seat_occupied:I

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;Z)Ljava/lang/String;

    return-void
.end method

.method private stopMoveObserver()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mMcuIgObserver:Landroidx/lifecycle/Observer;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipSeatControl$e9fM9hytolB39PX76ro4r8f4ZNs;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipSeatControl$e9fM9hytolB39PX76ro4r8f4ZNs;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mMcuIgObserver:Landroidx/lifecycle/Observer;

    .line 144
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipSeatControl$p1mAFCLsKthmUAzQUKyEFtHKa8M;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipSeatControl$p1mAFCLsKthmUAzQUKyEFtHKa8M;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mGearObserver:Landroidx/lifecycle/Observer;

    .line 152
    :cond_0
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipSeatControl$xpMvQXXGav9LxJBKsBRanbHZW9M;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipSeatControl$xpMvQXXGav9LxJBKsBRanbHZW9M;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private unObserverStopMove()V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mMcuIgObserver:Landroidx/lifecycle/Observer;

    if-nez v0, :cond_0

    return-void

    .line 164
    :cond_0
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipSeatControl$_EcXEHdefkKlbXgFjlgTS1uWg34;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipSeatControl$_EcXEHdefkKlbXgFjlgTS1uWg34;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected callbackStatus(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vipSeatStatus"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callbackStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",current:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->FlatWaiting:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->FlatMoving:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->RestoreWaiting:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->RestoreMoving:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 266
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->unObserverStopMove()V

    goto :goto_1

    .line 264
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->stopMoveObserver()V

    .line 268
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    if-ne v0, p1, :cond_2

    return-void

    .line 271
    :cond_2
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    .line 272
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mStatusChangedListener:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl$OnStatusChangedListener;

    if-eqz v0, :cond_3

    .line 273
    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl$OnStatusChangedListener;->onStatusChanged(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)V

    :cond_3
    return-void
.end method

.method protected abstract checkFrontSeatOccupied()Z
.end method

.method protected abstract checkSeatMoveAble()Z
.end method

.method public getSeatStatus()Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;
    .locals 1

    .line 580
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    return-object v0
.end method

.method protected init()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->TAG:Ljava/lang/String;

    const-string v1, "SeatControl init"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    .line 118
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const-string v0, "shouldCheckRearSeatOccupied"

    .line 119
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->observerRearSeat()V

    :cond_0
    return-void
.end method

.method protected abstract isLayFlatCorrectly()Z
.end method

.method protected isRearSeatNotOccupied()Z
    .locals 2

    const-string v0, "shouldCheckRearSeatOccupied"

    .line 376
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isRlSeatOccupied()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isRmSeatOccupied()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    .line 378
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isRrSeatOccupied()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public synthetic lambda$new$0$VipSeatControl(Landroid/os/Message;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "msg"
        }
    .end annotation

    .line 96
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->restoreFinish()V

    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->onVipSeatLayFlatFinish()V

    :goto_0
    return v0
.end method

.method public synthetic lambda$null$10$VipSeatControl(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "integer"
        }
    .end annotation

    .line 198
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->onSeatPosChanged()V

    return-void
.end method

.method public synthetic lambda$null$12$VipSeatControl(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "integer"
        }
    .end annotation

    .line 206
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->onSeatPosChanged()V

    return-void
.end method

.method public synthetic lambda$null$13$VipSeatControl(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "integer"
        }
    .end annotation

    .line 208
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->onSeatPosChanged()V

    return-void
.end method

.method public synthetic lambda$null$14$VipSeatControl(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "integer"
        }
    .end annotation

    .line 211
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->onSeatPosChanged()V

    return-void
.end method

.method public synthetic lambda$null$15$VipSeatControl(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "integer"
        }
    .end annotation

    .line 215
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->onSeatPosChanged()V

    return-void
.end method

.method public synthetic lambda$null$19$VipSeatControl(Lcom/xiaopeng/xui/app/XDialog;I)V
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

    .line 393
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->moveSeatDelay()V

    return-void
.end method

.method public synthetic lambda$null$20$VipSeatControl(Lcom/xiaopeng/xui/app/XDialog;I)V
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

    .line 395
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->stop()V

    .line 396
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->FlatPause:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->callbackStatus(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)V

    return-void
.end method

.method public synthetic lambda$null$22$VipSeatControl(Lcom/xiaopeng/xui/app/XDialog;I)V
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

    .line 503
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->restoreSeatDelay()V

    return-void
.end method

.method public synthetic lambda$null$23$VipSeatControl(Lcom/xiaopeng/xui/app/XDialog;I)V
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

    .line 505
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->stop()V

    .line 506
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->RestorePause:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->callbackStatus(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)V

    return-void
.end method

.method public synthetic lambda$null$6$VipSeatControl(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "integer"
        }
    .end annotation

    .line 187
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->onSeatPosChanged()V

    return-void
.end method

.method public synthetic lambda$null$7$VipSeatControl(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "integer"
        }
    .end annotation

    .line 189
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->onSeatPosChanged()V

    return-void
.end method

.method public synthetic lambda$null$8$VipSeatControl(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "integer"
        }
    .end annotation

    .line 191
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->onSeatPosChanged()V

    return-void
.end method

.method public synthetic lambda$null$9$VipSeatControl(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "integer"
        }
    .end annotation

    .line 194
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->onSeatPosChanged()V

    return-void
.end method

.method public synthetic lambda$observerDrvSeatMove$11$VipSeatControl()V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDriverSeatData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipSeatControl$c9GmhdudaM5ky5LEkA26cOQzBgs;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipSeatControl$c9GmhdudaM5ky5LEkA26cOQzBgs;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;)V

    .line 187
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDriverSeatData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipSeatControl$LqbFcY8bqTlM9kL1OjSPY3uaHxk;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipSeatControl$LqbFcY8bqTlM9kL1OjSPY3uaHxk;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;)V

    .line 189
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDriverSeatData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipSeatControl$GNUVqCHujrywr5elsu_ACPkWzgk;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipSeatControl$GNUVqCHujrywr5elsu_ACPkWzgk;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;)V

    .line 191
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    const-string v0, "isSupportDrvLeg"

    .line 192
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDriverSeatData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipSeatControl$HK8uvoZAVfsIdDGxpzExFM--3_8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipSeatControl$HK8uvoZAVfsIdDGxpzExFM--3_8;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;)V

    .line 194
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    :cond_0
    const-string v0, "isSupportDrvCushion"

    .line 196
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDriverSeatData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipSeatControl$uwHckjPi8Wnl0aIQwulbikd95wI;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipSeatControl$uwHckjPi8Wnl0aIQwulbikd95wI;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;)V

    .line 198
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observerDrvSeatOccupied$17$VipSeatControl()V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDriverSeatOccupiedData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatOccupiedObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 226
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDriverSeatOccupiedData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatOccupiedObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public synthetic lambda$observerPsnSeatMove$16$VipSeatControl()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPsnSeatHorzData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipSeatControl$0RQCx-QalMVm5gPtlAg_2Hm8fdQ;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipSeatControl$0RQCx-QalMVm5gPtlAg_2Hm8fdQ;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;)V

    .line 206
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPsnSeatTiltData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipSeatControl$OTb0FKVUdNKtcJJoygVnfP-Qmks;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipSeatControl$OTb0FKVUdNKtcJJoygVnfP-Qmks;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;)V

    .line 208
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    const-string v0, "isSupportPsnSeatVerControl"

    .line 209
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPsnSeatVerData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipSeatControl$BOrILmF8dSzOZjcrMlSIUPiddi8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipSeatControl$BOrILmF8dSzOZjcrMlSIUPiddi8;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;)V

    .line 211
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    :cond_0
    const-string v0, "isSupportPsnLeg"

    .line 213
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPsnSeatLegData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipSeatControl$2hpS59JCPkeLY_LS_Sj4DGf8COo;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipSeatControl$2hpS59JCPkeLY_LS_Sj4DGf8COo;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;)V

    .line 215
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observerPsnSeatOccupied$18$VipSeatControl()V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPsnSeatOccupiedData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatOccupiedObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 237
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPsnSeatOccupiedData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatOccupiedObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public synthetic lambda$observerRearSeat$5$VipSeatControl()V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRrSeatOccupiedData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mRearOccupiedObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRmSeatOccupiedData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mRearOccupiedObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRlSeatOccupiedData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mRearOccupiedObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRrSeatOccupiedData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mRearOccupiedObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRmSeatOccupiedData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mRearOccupiedObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRlSeatOccupiedData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mRearOccupiedObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public synthetic lambda$showFlatConfirmDialog$21$VipSeatControl()V
    .locals 3

    .line 388
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mIsVoiceSource:Z

    if-nez v0, :cond_2

    .line 389
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mLayFlatDialog:Lcom/xiaopeng/xui/app/XDialog;

    if-nez v0, :cond_0

    .line 390
    new-instance v0, Lcom/xiaopeng/xui/app/XDialog;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->vip_seat_confirm_dialog_title:I

    .line 391
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setTitle(I)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->vip_seat_confirm_dialog_msg:I

    .line 392
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setMessage(I)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    .line 393
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->btn_confirm:I

    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/App;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipSeatControl$1kPTa34y2SUvukpOnQp4PtN9C9U;

    invoke-direct {v2, p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipSeatControl$1kPTa34y2SUvukpOnQp4PtN9C9U;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    .line 394
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->btn_cancel:I

    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/App;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipSeatControl$mCUeCMZNiK9U6g106IsEI1x5qdM;

    invoke-direct {v2, p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipSeatControl$mCUeCMZNiK9U6g106IsEI1x5qdM;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    const/4 v1, 0x0

    .line 398
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setCanceledOnTouchOutside(Z)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    const/16 v1, 0x800

    .line 399
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setSystemDialog(I)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mLayFlatDialog:Lcom/xiaopeng/xui/app/XDialog;

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mLayFlatDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mLayFlatDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->show()V

    .line 404
    :cond_1
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->vip_seat_confirm_tts:I

    .line 405
    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/App;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 404
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;Z)Ljava/lang/String;

    goto :goto_0

    .line 407
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->moveSeatDelay()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$showRestoreSeatDialog$24$VipSeatControl()V
    .locals 3

    .line 498
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mIsVoiceSource:Z

    if-nez v0, :cond_2

    .line 499
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mRestoreDialog:Lcom/xiaopeng/xui/app/XDialog;

    if-nez v0, :cond_0

    .line 500
    new-instance v0, Lcom/xiaopeng/xui/app/XDialog;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->vip_seat_confirm_dialog_title:I

    .line 501
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setTitle(I)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->vip_seat_restore_dialog_msg:I

    .line 502
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setMessage(I)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    .line 503
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->btn_confirm:I

    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/App;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipSeatControl$3qcHVMYZp6TgAn3XL30EHsmoqaU;

    invoke-direct {v2, p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipSeatControl$3qcHVMYZp6TgAn3XL30EHsmoqaU;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    .line 504
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->btn_cancel:I

    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/App;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipSeatControl$q9GOhUlT18kPF50JLxZyn5iQokI;

    invoke-direct {v2, p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipSeatControl$q9GOhUlT18kPF50JLxZyn5iQokI;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    const/4 v1, 0x0

    .line 508
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setCanceledOnTouchOutside(Z)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    const/16 v1, 0x800

    .line 509
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setSystemDialog(I)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mRestoreDialog:Lcom/xiaopeng/xui/app/XDialog;

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mRestoreDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 512
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mRestoreDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->show()V

    .line 514
    :cond_1
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->vip_seat_restore_confirm_tts:I

    .line 515
    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/App;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 514
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;Z)Ljava/lang/String;

    goto :goto_0

    .line 517
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->restoreSeatDelay()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$stopMoveObserver$1$VipSeatControl(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "integer"
        }
    .end annotation

    .line 137
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->FlatMoving:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->RestoreMoving:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    if-ne p1, v0, :cond_1

    .line 140
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->TAG:Ljava/lang/String;

    const-string v0, "ig off stop seat move"

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->stopSeatMove()V

    :cond_1
    return-void
.end method

.method public synthetic lambda$stopMoveObserver$2$VipSeatControl(Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "gearLevel"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->FlatMoving:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->RestoreMoving:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    if-ne v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;->P:Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    if-eq p1, v0, :cond_1

    .line 147
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->TAG:Ljava/lang/String;

    const-string v0, "exit gear p pause vip seat move"

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->stopSeatMove()V

    :cond_1
    return-void
.end method

.method public synthetic lambda$stopMoveObserver$3$VipSeatControl()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getMcuIgState()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mMcuIgObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getGearLevelData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mGearObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getMcuIgState()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mMcuIgObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getGearLevelData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mGearObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public synthetic lambda$unObserverStopMove$4$VipSeatControl()V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getMcuIgState()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mMcuIgObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getGearLevelData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mGearObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method protected layFlatWaitingTTS()V
    .locals 3

    .line 362
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    const-string v2, "isSupportSeatFlatFrontOccupied"

    .line 363
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->vip_seat_notice_flat_waiting_front_ccupied:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->vip_seat_notice_flat_waiting:I

    :goto_0
    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/App;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 362
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;Z)Ljava/lang/String;

    return-void
.end method

.method public laySeatFlat()V
    .locals 3

    .line 325
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->init()V

    .line 326
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enterSpaceCapsule drvHeadrest:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    .line 327
    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isDrvHeadrestNormal()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",psnHeadrest:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    .line 328
    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isPsnHeadrestNormal()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",rlOccupied:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    .line 329
    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isRlSeatOccupied()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",rrOccupied:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    .line 330
    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isRrSeatOccupied()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",rcOccupied:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    .line 331
    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isRmSeatOccupied()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 326
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mLayFlatDialog:Lcom/xiaopeng/xui/app/XDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->TAG:Ljava/lang/String;

    const-string v1, "Flat confirm dialog is showing"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 338
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->isLayFlatCorrectly()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "isSupportTTSAfterSeatFlatForSleep"

    .line 339
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->seatFlatSpeak()V

    .line 342
    :cond_1
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->Flat:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->callbackStatus(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)V

    .line 343
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mStatusChangedListener:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl$OnStatusChangedListener;

    if-eqz v0, :cond_2

    .line 344
    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl$OnStatusChangedListener;->onSeatHasFlat()V

    :cond_2
    return-void

    .line 348
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->FlatWaiting:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    if-eq v0, v1, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 349
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->checkSeatMoveAble()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 350
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->checkFrontSeatOccupied()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mFrontOccupiedConfirm:Z

    if-eqz v0, :cond_5

    .line 351
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->showFlatConfirmDialog()V

    goto :goto_1

    .line 353
    :cond_5
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->moveSeatDelay()V

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_7

    .line 356
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->FlatWaiting:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->callbackStatus(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)V

    .line 357
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->layFlatWaitingTTS()V

    :cond_7
    :goto_1
    return-void
.end method

.method protected moveSeatDelay()V
    .locals 4

    .line 413
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->checkSeatMoveAble()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->startLayFlatMoveNotice()V

    .line 415
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->moveSeatFlatRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 416
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->moveSeatFlatRun:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 418
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->layFlatWaitingTTS()V

    .line 419
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->FlatWaiting:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->callbackStatus(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)V

    :goto_0
    return-void
.end method

.method protected abstract moveSeatFlat()V
.end method

.method protected observerDrvSeatMove()V
    .locals 1

    .line 185
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipSeatControl$ZhhVlkdlk1ATaej7Yo5wF7HJGXc;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipSeatControl$ZhhVlkdlk1ATaej7Yo5wF7HJGXc;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected observerDrvSeatOccupied()V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatOccupiedObserver:Landroidx/lifecycle/Observer;

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$L5-j_QEbveG9sCZKt4HxS3fA7CQ;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$L5-j_QEbveG9sCZKt4HxS3fA7CQ;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatOccupiedObserver:Landroidx/lifecycle/Observer;

    .line 224
    :cond_0
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipSeatControl$pWOWo4mbcahvx655T7d7VzuvWis;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipSeatControl$pWOWo4mbcahvx655T7d7VzuvWis;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected observerPsnSeatMove()V
    .locals 1

    .line 204
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipSeatControl$8GgAlsCPSq3ewVFVhNxEP82LR6c;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipSeatControl$8GgAlsCPSq3ewVFVhNxEP82LR6c;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected observerPsnSeatOccupied()V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatOccupiedObserver:Landroidx/lifecycle/Observer;

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$L5-j_QEbveG9sCZKt4HxS3fA7CQ;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$L5-j_QEbveG9sCZKt4HxS3fA7CQ;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatOccupiedObserver:Landroidx/lifecycle/Observer;

    .line 235
    :cond_0
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipSeatControl$IVZkH2XHllpUa2aOlPpXFKqnWVI;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipSeatControl$IVZkH2XHllpUa2aOlPpXFKqnWVI;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected observerRearSeat()V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mRearOccupiedObserver:Landroidx/lifecycle/Observer;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$2nh4X7s5YUqxeSz43yNWpo4XFSI;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$2nh4X7s5YUqxeSz43yNWpo4XFSI;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mRearOccupiedObserver:Landroidx/lifecycle/Observer;

    .line 174
    :cond_0
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipSeatControl$Q0NsFBYCQCfyUL0uoNZWU4MYBXE;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipSeatControl$Q0NsFBYCQCfyUL0uoNZWU4MYBXE;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onModeStart(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isVoiceSource"
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->init()V

    const/4 v0, 0x1

    .line 126
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mFrontOccupiedConfirm:Z

    .line 127
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mIsVoiceSource:Z

    return-void
.end method

.method protected onRearSeatOccupied(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRearSeatOccupied:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 284
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->FlatMoving:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    if-ne p1, v0, :cond_0

    .line 285
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->TAG:Ljava/lang/String;

    const-string v0, "rear seat occupied pause vip seat move"

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->removeFlatHandler()V

    .line 287
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->FlatWaiting:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->callbackStatus(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)V

    .line 288
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->stopSeat()V

    const/4 p1, 0x1

    .line 289
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->speakRearSeatOccupied(Z)V

    goto :goto_0

    .line 290
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->RestoreMoving:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    if-ne p1, v0, :cond_3

    .line 291
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->TAG:Ljava/lang/String;

    const-string v0, "rear seat occupied pause vip seat restore"

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->removeRestoreHandler()V

    .line 293
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->RestoreWaiting:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->callbackStatus(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)V

    .line 294
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->stopSeat()V

    const/4 p1, 0x0

    .line 295
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->speakRearSeatOccupied(Z)V

    goto :goto_0

    .line 297
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->FlatWaiting:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    if-ne p1, v0, :cond_2

    .line 298
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->laySeatFlat()V

    goto :goto_0

    .line 299
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->RestoreWaiting:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    if-ne p1, v0, :cond_3

    .line 300
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->restoreSeat()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onSeatOccupiedChanged(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aBoolean"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Seat Occupied Status Changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",seatStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 245
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->FlatWaiting:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    if-ne p1, v0, :cond_1

    .line 246
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->laySeatFlat()V

    goto :goto_0

    .line 249
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->FlatMoving:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    if-ne p1, v0, :cond_1

    .line 250
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->FlatWaiting:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->callbackStatus(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)V

    .line 251
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->removeFlatHandler()V

    .line 252
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->stopSeat()V

    .line 253
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->speakSeatOccupiedTts()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onSeatPosChanged()V
    .locals 4

    .line 306
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->FlatMoving:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    const-wide/16 v2, 0x7d0

    if-ne v0, v1, :cond_0

    .line 307
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 308
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->RestoreMoving:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    if-ne v0, v1, :cond_1

    .line 310
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 311
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected onVipSeatLayFlatFinish()V
    .locals 3

    .line 470
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVipSeatLayFlatEnd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->FlatMoving:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    if-ne v0, v1, :cond_1

    .line 472
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->isLayFlatCorrectly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->Flat:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->callbackStatus(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)V

    const-string v0, "isSupportTTSAfterSeatFlatForSleep"

    .line 474
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 475
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->seatFlatSpeak()V

    goto :goto_0

    .line 478
    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->FlatPause:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->callbackStatus(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public pauseFlatMove()V
    .locals 3

    .line 448
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause seat move :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->init()V

    .line 450
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->stop()V

    .line 451
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->FlatMoving:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    if-ne v0, v1, :cond_0

    .line 452
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->FlatPause:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->callbackStatus(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)V

    .line 454
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->removeFlatHandler()V

    .line 455
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->stopSeat()V

    return-void
.end method

.method public pauseRestoreMove()V
    .locals 3

    .line 459
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause restore :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->init()V

    .line 461
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->stop()V

    .line 462
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->RestoreMoving:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    if-ne v0, v1, :cond_0

    .line 463
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->RestorePause:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->callbackStatus(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)V

    .line 465
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->removeRestoreHandler()V

    .line 466
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->stopSeat()V

    return-void
.end method

.method protected abstract restore()V
.end method

.method protected abstract restoreFinish()V
.end method

.method public restoreSeat()V
    .locals 4

    .line 523
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->init()V

    .line 524
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreSeat mStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",rLSeatOccupied:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    .line 525
    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isRlSeatOccupied()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",rMSeatOccupied:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    .line 526
    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isRmSeatOccupied()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",rRSeatOccupied:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    .line 527
    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isRrSeatOccupied()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 524
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mRestoreDialog:Lcom/xiaopeng/xui/app/XDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->TAG:Ljava/lang/String;

    const-string v1, "Restore seat dialog is showing"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->RestoreWaiting:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 533
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->isRearSeatNotOccupied()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 534
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->checkFrontSeatOccupied()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mFrontOccupiedConfirm:Z

    if-eqz v0, :cond_2

    .line 535
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->showRestoreSeatDialog()V

    goto :goto_1

    .line 537
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->restoreSeatDelay()V

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    .line 540
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->RestoreWaiting:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->callbackStatus(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)V

    .line 541
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    sget v3, Lcom/xiaopeng/carcontrolmodule/R$string;->vip_seat_notice_rear_seat_occupied_restore:I

    .line 542
    invoke-virtual {v1, v3}, Lcom/xiaopeng/carcontrol/App;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 541
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;Z)Ljava/lang/String;

    :cond_4
    :goto_1
    return-void
.end method

.method protected seatFlatSpeak()V
    .locals 3

    .line 574
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->vip_seat_flat_tts:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    .line 575
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->vip_seat_flat_tts:I

    .line 576
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 575
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;Z)Ljava/lang/String;

    return-void
.end method

.method protected setFlatStatus()V
    .locals 1

    .line 368
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->Flat:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    return-void
.end method

.method public setOnStatusChangedListener(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl$OnStatusChangedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onStatusChangedListener"
        }
    .end annotation

    .line 612
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mStatusChangedListener:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl$OnStatusChangedListener;

    return-void
.end method

.method protected showFlatConfirmDialog()V
    .locals 3

    .line 385
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showFlatConfirmDialog:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mIsVoiceSource:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 386
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mFrontOccupiedConfirm:Z

    .line 387
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipSeatControl$kkYo1lFscI4x0h98vDtmwe7G2z8;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipSeatControl$kkYo1lFscI4x0h98vDtmwe7G2z8;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected startLayFlatMoveNotice()V
    .locals 3

    .line 429
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->Normal:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->FlatWaiting:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    if-ne v0, v1, :cond_1

    .line 430
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->vip_seat_moving_toast:I

    .line 431
    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/App;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 430
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;Z)Ljava/lang/String;

    .line 433
    :cond_1
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->FlatMoving:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->callbackStatus(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)V

    return-void
.end method

.method protected startRestoreNotice()V
    .locals 3

    .line 437
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->Flat:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->RestoreWaiting:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    if-ne v0, v1, :cond_1

    .line 438
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->vip_seat_restore_tts:I

    .line 439
    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/App;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 438
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;Z)Ljava/lang/String;

    .line 441
    :cond_1
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->RestoreMoving:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->callbackStatus(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)V

    return-void
.end method

.method protected abstract stopSeat()V
.end method

.method protected stopSeatMove()V
    .locals 3

    .line 487
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop seat move :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->init()V

    .line 489
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->removeFlatHandler()V

    .line 490
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->removeRestoreHandler()V

    .line 491
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->Normal:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->callbackStatus(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)V

    .line 492
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->stopSeat()V

    return-void
.end method
