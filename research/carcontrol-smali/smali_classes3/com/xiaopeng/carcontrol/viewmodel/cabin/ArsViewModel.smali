.class public Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;
.super Ljava/lang/Object;
.source "ArsViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/cabin/IArsViewModel;


# static fields
.field static final TAG:Ljava/lang/String; = "Ars"

.field private static TASK_TIMEOUT:I = 0xafc8


# instance fields
.field private mAutoFoldData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mBcmController:Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;

.field private mCheckFoldedTask:Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;

.field private mCheckInitTask:Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;

.field private mCheckResetTask:Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;

.field private mCheckUnFoldedTask:Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;

.field private mFaultState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFaultState;",
            ">;"
        }
    .end annotation
.end field

.field private mFoldConfirmDialog:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaopeng/xui/app/XDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mFoldConfirming:Z

.field private mFoldState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;",
            ">;"
        }
    .end annotation
.end field

.field private mInitConfirmDialog:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaopeng/xui/app/XDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mInitState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;",
            ">;"
        }
    .end annotation
.end field

.field private mInitializeConfirming:Z

.field private mInitializing:Z

.field private mPosition:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mResetConfirmDialog:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaopeng/xui/app/XDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mResetConfirming:Z

.field private mResetting:Z

.field private mUnfoldConfirmDialog:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaopeng/xui/app/XDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mUnfoldConfirming:Z

.field private mWorkMode:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;",
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

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mFoldState:Landroidx/lifecycle/MutableLiveData;

    .line 29
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mInitState:Landroidx/lifecycle/MutableLiveData;

    .line 30
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mFaultState:Landroidx/lifecycle/MutableLiveData;

    .line 31
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mWorkState:Landroidx/lifecycle/MutableLiveData;

    .line 32
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mWorkMode:Landroidx/lifecycle/MutableLiveData;

    .line 33
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mPosition:Landroidx/lifecycle/MutableLiveData;

    .line 34
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mAutoFoldData:Landroidx/lifecycle/MutableLiveData;

    .line 36
    new-instance v0, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;

    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$ArsViewModel$UrXNEscZCcu8yeE2Bov_Z7N-Q94;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$ArsViewModel$UrXNEscZCcu8yeE2Bov_Z7N-Q94;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;)V

    invoke-direct {v0, v1}, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mCheckFoldedTask:Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;

    .line 37
    new-instance v0, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;

    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$ArsViewModel$BUSw02Khya43uZSYIUWP-aBC0t8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$ArsViewModel$BUSw02Khya43uZSYIUWP-aBC0t8;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;)V

    invoke-direct {v0, v1}, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mCheckUnFoldedTask:Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;

    .line 39
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel$1;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mCheckInitTask:Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;

    .line 54
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel$2;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mCheckResetTask:Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;

    .line 88
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v0

    const-string/jumbo v1, "xp_bcm"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;

    .line 89
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel$3;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;->registerCallback(Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;)V

    return-void
.end method

.method static synthetic access$002(Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mInitializing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->recheckFoldState()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->recheckInitState()V

    return-void
.end method

.method static synthetic access$302(Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mResetting:Z

    return p1
.end method

.method static synthetic access$400(Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->recheckFaultState()V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;Z)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->handleArsAutoFoldStateChange(Z)V

    return-void
.end method

.method private handleArsAutoFoldStateChange(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 458
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mAutoFoldData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method private handleArsFoldStateChange(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "workState",
            "position"
        }
    .end annotation

    .line 442
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mInitializing:Z

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mResetting:Z

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;->MOVING:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;->fromBcmValue(II)Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;

    move-result-object v0

    .line 443
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleArsFoldStateChange, position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ", workSt: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", resetting: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mResetting:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", initializing: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mInitializing:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", result: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Ars"

    invoke-static {p2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mFoldState:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 447
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;->MOVING:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;

    if-eq v0, p1, :cond_1

    .line 448
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mCheckFoldedTask:Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;->getSession()I

    move-result p1

    .line 449
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mCheckUnFoldedTask:Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;->getSession()I

    move-result p2

    .line 450
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$ArsViewModel$pi7q3LTN90Hji5r1YOBVSjjqDSI;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$ArsViewModel$pi7q3LTN90Hji5r1YOBVSjjqDSI;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;II)V

    const-wide/16 p1, 0x320

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method private handleFoldError()V
    .locals 5

    .line 559
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mFoldState:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;

    .line 560
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mFaultState:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFaultState;

    .line 561
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->getArsPosition()I

    move-result v2

    .line 562
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check ars fold task, foldState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", errorState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Ars"

    invoke-static {v4, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    sget-object v3, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFaultState;->NO_FAULT:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFaultState;

    if-ne v1, v3, :cond_0

    sget-object v3, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;->FOLDED:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;

    if-ne v0, v3, :cond_0

    invoke-direct {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->isPositionFullFolded(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 567
    :cond_0
    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;->MOVING:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;

    if-ne v0, v2, :cond_1

    .line 568
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mFoldState:Landroidx/lifecycle/MutableLiveData;

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;->UNFOLDED:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 570
    :cond_1
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFaultState;->FAULT:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFaultState;

    if-ne v1, v0, :cond_2

    const/4 v0, 0x1

    .line 571
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->startReset(Z)V

    goto :goto_0

    :cond_2
    const-string v0, "handleFoldError showToast"

    .line 573
    invoke-static {v4, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->ars_control_error_operation:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    :goto_0
    return-void
.end method

.method private handleUnfoldError()V
    .locals 5

    .line 594
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mFoldState:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;

    .line 595
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mFaultState:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFaultState;

    .line 596
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->getArsPosition()I

    move-result v2

    .line 597
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check ars unfold task, foldState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", errorState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Ars"

    invoke-static {v4, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    sget-object v3, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFaultState;->NO_FAULT:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFaultState;

    if-ne v1, v3, :cond_0

    sget-object v3, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;->UNFOLDED:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;

    if-ne v0, v3, :cond_0

    invoke-direct {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->isPositionFullUnfolded(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 602
    :cond_0
    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;->MOVING:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;

    if-ne v0, v2, :cond_1

    .line 603
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mFoldState:Landroidx/lifecycle/MutableLiveData;

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;->FOLDED:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 605
    :cond_1
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFaultState;->FAULT:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFaultState;

    if-ne v1, v0, :cond_2

    const/4 v0, 0x1

    .line 606
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->startReset(Z)V

    goto :goto_0

    :cond_2
    const-string v0, "handleUnfoldError showToast"

    .line 608
    invoke-static {v4, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->ars_control_error_operation:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    :goto_0
    return-void
.end method

.method private hideDialogs()V
    .locals 1

    .line 618
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$ArsViewModel$EsLeDp5BFaZqX3T7ISKdjIHJ_4M;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$ArsViewModel$EsLeDp5BFaZqX3T7ISKdjIHJ_4M;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private isPositionAtBoundary(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 462
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->isPositionFullFolded(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->isPositionFullUnfolded(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isPositionFullFolded(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isPositionFullUnfolded(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static synthetic lambda$BUSw02Khya43uZSYIUWP-aBC0t8(Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->handleUnfoldError()V

    return-void
.end method

.method public static synthetic lambda$UrXNEscZCcu8yeE2Bov_Z7N-Q94(Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->handleFoldError()V

    return-void
.end method

.method static synthetic lambda$null$0(Lcom/xiaopeng/xui/app/XDialog;I)V
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

    return-void
.end method

.method static synthetic lambda$null$13(Lcom/xiaopeng/xui/app/XDialog;I)V
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

    return-void
.end method

.method static synthetic lambda$null$4(Lcom/xiaopeng/xui/app/XDialog;I)V
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

    return-void
.end method

.method static synthetic lambda$null$9(Lcom/xiaopeng/xui/app/XDialog;I)V
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

    return-void
.end method

.method private recheckFaultState()V
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;->getArsFaultState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->handleArsFaultStateChanged(I)V

    return-void
.end method

.method private recheckFoldState()V
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;->getArsWorkSt()I

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;->getArsPosition()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->handleArsFoldStateChange(II)V

    return-void
.end method

.method private recheckInitState()V
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;->getArsInitSt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->handleArsInitStateChanged(I)V

    return-void
.end method


# virtual methods
.method public checkError()I
    .locals 2

    .line 179
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    .line 180
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isTrunkClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 184
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mInitializeConfirming:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    return v0

    .line 188
    :cond_1
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mResetConfirming:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    return v0

    .line 192
    :cond_2
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mFoldConfirming:Z

    if-eqz v0, :cond_3

    const/16 v0, 0xa

    return v0

    .line 196
    :cond_3
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mUnfoldConfirming:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x9

    return v0

    .line 200
    :cond_4
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mResetting:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x7

    return v0

    .line 204
    :cond_5
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->getArsFaultState()Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFaultState;

    move-result-object v0

    .line 205
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFaultState;->FAULT:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFaultState;

    if-ne v0, v1, :cond_6

    const/4 v0, 0x6

    return v0

    .line 209
    :cond_6
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->getArsInitState()Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;

    move-result-object v0

    .line 210
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;->INITIALIZING:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;

    if-ne v0, v1, :cond_7

    const/4 v0, 0x3

    return v0

    .line 213
    :cond_7
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;->UNINITIALIZED:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x2

    return v0

    .line 216
    :cond_8
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->getArsFoldState()Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;

    move-result-object v0

    .line 217
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;->MOVING:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;

    if-ne v0, v1, :cond_9

    const/4 v0, 0x5

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public fold()V
    .locals 1

    const/4 v0, 0x0

    .line 226
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->fold(Z)V

    return-void
.end method

.method public fold(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "warning"
        }
    .end annotation

    const-string v0, "Ars"

    const/4 v1, 0x1

    if-eqz p1, :cond_9

    .line 233
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->checkError()I

    move-result p1

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ArsControl: fold, checkStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p1, v1, :cond_0

    .line 237
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->ars_control_precheck_close_trunk:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void

    :cond_0
    const/4 v0, 0x5

    if-eq p1, v0, :cond_8

    const/4 v0, 0x3

    if-eq p1, v0, :cond_8

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 245
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->startInitialize(Z)V

    return-void

    :cond_2
    const/4 v0, 0x6

    if-ne p1, v0, :cond_3

    .line 249
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->startReset(Z)V

    return-void

    :cond_3
    const/16 v0, 0xa

    if-ne p1, v0, :cond_4

    return-void

    :cond_4
    const/16 v0, 0x9

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    const/16 v0, 0x8

    if-ne p1, v0, :cond_6

    return-void

    :cond_6
    const/4 v0, 0x4

    if-ne p1, v0, :cond_7

    return-void

    .line 265
    :cond_7
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mFoldConfirming:Z

    .line 266
    new-instance p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$ArsViewModel$xp2Wqo32jMvHBaYxm_tnbQXluIw;

    invoke-direct {p1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$ArsViewModel$xp2Wqo32jMvHBaYxm_tnbQXluIw;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;)V

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void

    .line 241
    :cond_8
    :goto_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->ars_control_precheck_moving:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void

    .line 286
    :cond_9
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mCheckFoldedTask:Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;->cancel()V

    .line 287
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mCheckUnFoldedTask:Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;->cancel()V

    .line 290
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->hideDialogs()V

    const-string p1, "ArsControl: fold"

    .line 292
    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;->setARSFoldOrUnfold(Z)V

    .line 294
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mFoldState:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;->MOVING:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 295
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mCheckFoldedTask:Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;->newSession()Ljava/lang/Runnable;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->TASK_TIMEOUT:I

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThreadDelay(Ljava/lang/Runnable;J)V

    .line 297
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->getArsWorkMode()Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;->AUTO:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_a

    .line 298
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;->MANUAL:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->setArsWorkMode(Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;)V

    .line 299
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->ars_auto_mode_closed_tip:I

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(IZ)V

    :cond_a
    const-string p1, "/system/media/audio/xiaopeng/cdu/wav/CDU_chargeport_off.wav"

    .line 301
    invoke-static {p1, v1, v1}, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->play(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public getArsAutoFoldStLiveData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 590
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mAutoFoldData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getArsFaultState()Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFaultState;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mFaultState:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFaultState;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;->getArsFaultState()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFaultState;->fromBcmValue(I)Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFaultState;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getArsFaultStateLiveData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFaultState;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mFaultState:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getArsFoldState()Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mFoldState:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;->getArsWorkSt()I

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;->getArsPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;->fromBcmValue(II)Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getArsFoldStateLiveData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;",
            ">;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mFoldState:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getArsInitState()Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mInitState:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;->getArsInitSt()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;->fromBcmValue(I)Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getArsInitStateLiveData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;",
            ">;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mInitState:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getArsPosition()I
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mPosition:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 476
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;->getArsPosition()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getArsPositionLiveData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 481
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mPosition:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getArsVehLockAutoFoldSwitchStatus()Z
    .locals 1

    .line 580
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;->getArsVehLockAutoFoldSwitchStatus()Z

    move-result v0

    return v0
.end method

.method public getArsWorkMode()Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mWorkMode:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;->getArsWorkMode()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;->fromBcmValue(I)Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getArsWorkModeLiveData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;",
            ">;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mWorkMode:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getArsWorkState()Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mWorkState:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;->getArsWorkSt()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;->fromBcmValue(I)Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getArsWorkStateLiveData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;",
            ">;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mWorkState:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public handleArsFaultStateChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleArsFaultStateChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ars"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mFaultState:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFaultState;->fromBcmValue(I)Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFaultState;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public handleArsInitStateChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 405
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;->fromBcmValue(I)Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;

    move-result-object p1

    .line 406
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mInitState:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 407
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;->INITIALIZED:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;

    if-ne p1, v0, :cond_1

    .line 408
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mCheckInitTask:Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;->cancel()V

    .line 409
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mCheckResetTask:Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;->cancel()V

    .line 410
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mInitializing:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 411
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mInitializing:Z

    .line 412
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->ars_control_init_success:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    .line 413
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->recheckFoldState()V

    goto :goto_0

    .line 414
    :cond_0
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mResetting:Z

    if-eqz p1, :cond_1

    .line 415
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mResetting:Z

    .line 416
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->ars_control_reset_success:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    .line 417
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->recheckFoldState()V

    .line 418
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->recheckFaultState()V

    :cond_1
    :goto_0
    return-void
.end method

.method public handleArsPositionChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arsPosition"
        }
    .end annotation

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleArsPositionChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ars"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mPosition:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 400
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;->getArsWorkSt()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->handleArsFoldStateChange(II)V

    return-void
.end method

.method public handleArsWorkModeChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "workMode"
        }
    .end annotation

    .line 438
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mWorkMode:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;->fromBcmValue(I)Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public handleArsWorkStateChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleArsWorkStateChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ars"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mWorkState:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;->fromBcmValue(I)Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 433
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;->getArsPosition()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->handleArsFoldStateChange(II)V

    return-void
.end method

.method public synthetic lambda$fold$3$ArsViewModel()V
    .locals 9

    .line 267
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 268
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v1

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->ars_control_warning_title:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/xiaopeng/carcontrolmodule/R$string;->ars_control_warning_fold_content:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/xiaopeng/carcontrolmodule/R$string;->btn_cancel:I

    .line 269
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$ArsViewModel$BVScAQu6bQPhW1ovwSoRuQLzgFw;->INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$ArsViewModel$BVScAQu6bQPhW1ovwSoRuQLzgFw;

    sget v6, Lcom/xiaopeng/carcontrolmodule/R$string;->btn_ok:I

    .line 271
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$ArsViewModel$PmBBxH-YsGIEBVZgE5oKNJJpL3M;

    invoke-direct {v7, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$ArsViewModel$PmBBxH-YsGIEBVZgE5oKNJJpL3M;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;)V

    const-string v8, "ARSFoldDialog"

    .line 268
    invoke-virtual/range {v1 .. v8}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;Ljava/lang/String;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;Ljava/lang/String;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    .line 276
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$ArsViewModel$8C7hbEkXW_hJ9tICzp4b6fzlUUw;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$ArsViewModel$8C7hbEkXW_hJ9tICzp4b6fzlUUw;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 280
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mFoldConfirmDialog:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public synthetic lambda$handleArsFoldStateChange$8$ArsViewModel(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "foldTask",
            "unfoldTask"
        }
    .end annotation

    .line 451
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mCheckFoldedTask:Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;->trigger(I)V

    .line 452
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mCheckUnFoldedTask:Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;->trigger(I)V

    return-void
.end method

.method public synthetic lambda$hideDialogs$17$ArsViewModel()V
    .locals 3

    .line 619
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mFoldConfirmDialog:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/app/XDialog;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 620
    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 621
    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    .line 624
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mUnfoldConfirmDialog:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/app/XDialog;

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_3

    .line 625
    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 626
    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    .line 629
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mResetConfirmDialog:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/app/XDialog;

    goto :goto_2

    :cond_4
    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_5

    .line 630
    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 631
    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    .line 634
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mInitConfirmDialog:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/xiaopeng/xui/app/XDialog;

    :cond_6
    if-eqz v1, :cond_7

    .line 635
    invoke-virtual {v1}, Lcom/xiaopeng/xui/app/XDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 636
    invoke-virtual {v1}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    :cond_7
    return-void
.end method

.method public synthetic lambda$null$1$ArsViewModel(Lcom/xiaopeng/xui/app/XDialog;I)V
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

    .line 272
    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    const/4 p1, 0x0

    .line 273
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->fold(Z)V

    return-void
.end method

.method public synthetic lambda$null$10$ArsViewModel(Lcom/xiaopeng/xui/app/XDialog;I)V
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

    const/4 p2, 0x0

    .line 494
    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->startInitialize(Z)V

    .line 495
    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    return-void
.end method

.method public synthetic lambda$null$11$ArsViewModel(Landroid/content/DialogInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "dialog1"
        }
    .end annotation

    const/4 p1, 0x0

    .line 499
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mInitializeConfirming:Z

    return-void
.end method

.method public synthetic lambda$null$14$ArsViewModel(Lcom/xiaopeng/xui/app/XDialog;I)V
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

    const/4 p2, 0x0

    .line 528
    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->startReset(Z)V

    .line 529
    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    return-void
.end method

.method public synthetic lambda$null$15$ArsViewModel(Landroid/content/DialogInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "dialog1"
        }
    .end annotation

    const/4 p1, 0x0

    .line 533
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mResetConfirming:Z

    return-void
.end method

.method public synthetic lambda$null$2$ArsViewModel(Landroid/content/DialogInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "d"
        }
    .end annotation

    const/4 p1, 0x0

    .line 277
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mFoldConfirming:Z

    return-void
.end method

.method public synthetic lambda$null$5$ArsViewModel(Lcom/xiaopeng/xui/app/XDialog;I)V
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

    .line 352
    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    const/4 p1, 0x0

    .line 353
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->unfold(Z)V

    return-void
.end method

.method public synthetic lambda$null$6$ArsViewModel(Landroid/content/DialogInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "dialog1"
        }
    .end annotation

    const/4 p1, 0x0

    .line 357
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mUnfoldConfirming:Z

    return-void
.end method

.method public synthetic lambda$startInitialize$12$ArsViewModel()V
    .locals 9

    .line 489
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 490
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v1

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->ars_control_init_title:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/xiaopeng/carcontrolmodule/R$string;->ars_control_init_content:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/xiaopeng/carcontrolmodule/R$string;->btn_cancel:I

    .line 491
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$ArsViewModel$AOyhYUY6GcXR9VJWby9cZLaf1QE;->INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$ArsViewModel$AOyhYUY6GcXR9VJWby9cZLaf1QE;

    sget v6, Lcom/xiaopeng/carcontrolmodule/R$string;->btn_ok:I

    .line 493
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$ArsViewModel$p8shkYLn8bKe9WAmjJTDyRjjX7U;

    invoke-direct {v7, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$ArsViewModel$p8shkYLn8bKe9WAmjJTDyRjjX7U;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;)V

    const-string v8, "ARSInitDialog"

    .line 490
    invoke-virtual/range {v1 .. v8}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;Ljava/lang/String;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;Ljava/lang/String;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    .line 498
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$ArsViewModel$K8RV5D0P5c_GscqScaYdxElRXCM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$ArsViewModel$K8RV5D0P5c_GscqScaYdxElRXCM;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 502
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mInitConfirmDialog:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public synthetic lambda$startReset$16$ArsViewModel()V
    .locals 10

    .line 523
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 524
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v1

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->ars_control_reset_title:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/xiaopeng/carcontrolmodule/R$string;->ars_control_reset_content:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/xiaopeng/carcontrolmodule/R$string;->btn_cancel:I

    .line 525
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$ArsViewModel$arBaunCtFFvchBQVm97vUlc-XE4;->INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$ArsViewModel$arBaunCtFFvchBQVm97vUlc-XE4;

    sget v6, Lcom/xiaopeng/carcontrolmodule/R$string;->btn_reset:I

    .line 527
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$ArsViewModel$R7u_air3FQpnmYasn2yIjS2TZXU;

    invoke-direct {v7, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$ArsViewModel$R7u_air3FQpnmYasn2yIjS2TZXU;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;)V

    const-string v8, "ARSResetDialog"

    const/4 v9, 0x5

    .line 524
    invoke-virtual/range {v1 .. v9}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showConfirmDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;Ljava/lang/String;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;Ljava/lang/String;I)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    .line 532
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$ArsViewModel$ri1Hjz686--f-lRxnSkV1kZ9TmI;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$ArsViewModel$ri1Hjz686--f-lRxnSkV1kZ9TmI;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 535
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mResetConfirmDialog:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public synthetic lambda$unfold$7$ArsViewModel()V
    .locals 9

    .line 347
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 348
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v1

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->ars_control_warning_title:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/xiaopeng/carcontrolmodule/R$string;->ars_control_warning_unfold_content:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/xiaopeng/carcontrolmodule/R$string;->btn_cancel:I

    .line 349
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$ArsViewModel$3EFfuCIKBPfNLWVpOxxazr1nOR8;->INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$ArsViewModel$3EFfuCIKBPfNLWVpOxxazr1nOR8;

    sget v6, Lcom/xiaopeng/carcontrolmodule/R$string;->btn_ok:I

    .line 351
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$ArsViewModel$P582AonLXJdaU6Hu0yYnRKUFuYg;

    invoke-direct {v7, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$ArsViewModel$P582AonLXJdaU6Hu0yYnRKUFuYg;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;)V

    const-string v8, "ARSFoldDialog"

    .line 348
    invoke-virtual/range {v1 .. v8}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;Ljava/lang/String;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;Ljava/lang/String;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    .line 356
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$ArsViewModel$hXPV4U5etXKMIf2QSi-uRUFFy3I;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$ArsViewModel$hXPV4U5etXKMIf2QSi-uRUFFy3I;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 360
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mUnfoldConfirmDialog:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setArsVehLockAutoFoldSwitch(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 585
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;->setArsVehLockAutoFoldSwitch(Z)V

    return-void
.end method

.method public setArsWorkMode(Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setArsWorkMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ars"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;->toBcmValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;->setArsWorkMode(I)V

    return-void
.end method

.method public startInitialize(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "withWarning"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 487
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mInitializeConfirming:Z

    .line 488
    new-instance p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$ArsViewModel$wjAOFm3DrxBxWKMSRa1jYU2eWZo;

    invoke-direct {p1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$ArsViewModel$wjAOFm3DrxBxWKMSRa1jYU2eWZo;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;)V

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void

    .line 507
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mCheckFoldedTask:Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;->cancel()V

    .line 508
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mCheckUnFoldedTask:Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;->cancel()V

    .line 509
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->hideDialogs()V

    .line 511
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mInitializing:Z

    .line 512
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mFoldState:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;->MOVING:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 513
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mInitState:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;->INITIALIZING:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 514
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;->startArsInit()V

    .line 515
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mCheckInitTask:Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;->newSession()Ljava/lang/Runnable;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->TASK_TIMEOUT:I

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThreadDelay(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public startReset(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "warning"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 521
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mResetConfirming:Z

    .line 522
    new-instance p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$ArsViewModel$oMT2bZuhgqlknCrpxI8bFaVYgDY;

    invoke-direct {p1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$ArsViewModel$oMT2bZuhgqlknCrpxI8bFaVYgDY;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;)V

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void

    .line 540
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mCheckFoldedTask:Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;->cancel()V

    .line 541
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mCheckUnFoldedTask:Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;->cancel()V

    .line 542
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->hideDialogs()V

    .line 544
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mResetting:Z

    .line 545
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mFoldState:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;->MOVING:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 546
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mInitState:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;->INITIALIZING:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 547
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mFaultState:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFaultState;->NO_FAULT:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFaultState;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 548
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;->startArsInit()V

    .line 549
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mCheckResetTask:Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;->newSession()Ljava/lang/Runnable;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->TASK_TIMEOUT:I

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThreadDelay(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public unfold()V
    .locals 1

    const/4 v0, 0x0

    .line 306
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->unfold(Z)V

    return-void
.end method

.method public unfold(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "warning"
        }
    .end annotation

    const-string v0, "Ars"

    if-eqz p1, :cond_9

    .line 313
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->checkError()I

    move-result p1

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ArsControl: unfold, checkStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 317
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->ars_control_precheck_close_trunk:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void

    :cond_0
    const/4 v1, 0x5

    if-eq p1, v1, :cond_8

    const/4 v1, 0x3

    if-eq p1, v1, :cond_8

    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 325
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->startInitialize(Z)V

    return-void

    :cond_2
    const/4 v1, 0x6

    if-ne p1, v1, :cond_3

    .line 329
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->startReset(Z)V

    return-void

    :cond_3
    const/16 v1, 0xa

    if-ne p1, v1, :cond_4

    return-void

    :cond_4
    const/16 v1, 0x9

    if-ne p1, v1, :cond_5

    return-void

    :cond_5
    const/16 v1, 0x8

    if-ne p1, v1, :cond_6

    return-void

    :cond_6
    const/4 v1, 0x4

    if-ne p1, v1, :cond_7

    return-void

    .line 345
    :cond_7
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mUnfoldConfirming:Z

    .line 346
    new-instance p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$ArsViewModel$zaY0N0ao3kbXx5jM6pav9kYMqvk;

    invoke-direct {p1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$ArsViewModel$zaY0N0ao3kbXx5jM6pav9kYMqvk;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;)V

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void

    .line 321
    :cond_8
    :goto_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->ars_control_precheck_moving:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void

    .line 366
    :cond_9
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mCheckFoldedTask:Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;->cancel()V

    .line 367
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mCheckUnFoldedTask:Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;->cancel()V

    .line 369
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->hideDialogs()V

    const-string p1, "ArsControl: unfold"

    .line 371
    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;->setARSFoldOrUnfold(Z)V

    .line 373
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mFoldState:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;->MOVING:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 374
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->mCheckUnFoldedTask:Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;->newSession()Ljava/lang/Runnable;

    move-result-object p1

    sget v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->TASK_TIMEOUT:I

    int-to-long v1, v1

    invoke-static {p1, v1, v2}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThreadDelay(Ljava/lang/Runnable;J)V

    .line 376
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->getArsWorkMode()Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;

    move-result-object p1

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;->AUTO:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;

    if-ne p1, v1, :cond_a

    .line 377
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;->MANUAL:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->setArsWorkMode(Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;)V

    .line 378
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->ars_auto_mode_closed_tip:I

    invoke-virtual {p1, v1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(IZ)V

    :cond_a
    const-string p1, "/system/media/audio/xiaopeng/cdu/wav/CDU_chargeport_on.wav"

    .line 380
    invoke-static {p1, v0, v0}, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->play(Ljava/lang/String;ZZ)V

    return-void
.end method
