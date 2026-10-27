.class public Lcom/xiaopeng/unity/carcontrol/SeatControlManager;
.super Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;
.source "SeatControlManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/ISeatControlManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/unity/carcontrol/SeatControlManager$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager<",
        "Lcom/xiaopeng/unity/carcontrol/SeatControlListener;",
        ">;",
        "Lcom/xiaopeng/unity/carcontrol/ISeatControlManager;"
    }
.end annotation


# static fields
.field static final MSMT_CTRL_FOLD:I = 0x1

.field static final MSMT_CTRL_STOP:I = 0x3

.field static final MSMT_CTRL_STOW_ENTER:I = 0x1

.field static final MSMT_CTRL_STOW_RESTORE:I = 0x2

.field static final MSMT_CTRL_STOW_STOP:I = 0x3

.field static final MSMT_CTRL_UNFOLD:I = 0x2

.field static final MSM_MODE_CTRL_ENTER:I = 0x1

.field static final MSM_MODE_CTRL_EXIT:I = 0x2

.field static final MSM_MODE_CTRL_STOP:I = 0x3


# instance fields
.field private mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

.field private mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

.field private mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

.field private mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

.field private mShowBtnHandler:Landroid/os/Handler;

.field private final mShowBtnRunnable:Ljava/lang/Runnable;

.field private final mShowPsnBtnRunnable:Ljava/lang/Runnable;

.field private final mShowRLBtnRunnable:Ljava/lang/Runnable;

.field private final mShowRRBtnRunnable:Ljava/lang/Runnable;

.field private mSpaceViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 70
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;-><init>()V

    .line 53
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$GkxQ4lxaU1UIQN3yfU2sLOJ_5zE;

    invoke-direct {v0, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$GkxQ4lxaU1UIQN3yfU2sLOJ_5zE;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mShowBtnRunnable:Ljava/lang/Runnable;

    .line 54
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$iYtpVya5OaMvMg7_XhMBKZ4X8Ao;

    invoke-direct {v0, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$iYtpVya5OaMvMg7_XhMBKZ4X8Ao;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mShowPsnBtnRunnable:Ljava/lang/Runnable;

    .line 55
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$qD13gjD5GOxwKYjQ8Enlan2W18A;

    invoke-direct {v0, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$qD13gjD5GOxwKYjQ8Enlan2W18A;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mShowRLBtnRunnable:Ljava/lang/Runnable;

    .line 56
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$ZBimVro15LMnwnupA_hmcFLvzSY;

    invoke-direct {v0, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$ZBimVro15LMnwnupA_hmcFLvzSY;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mShowRRBtnRunnable:Ljava/lang/Runnable;

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mShowBtnHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private comparePsnSeatPosition()V
    .locals 3

    .line 1303
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_2

    .line 1304
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isPsnSeatEqualMemory()Z

    move-result v0

    .line 1305
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isPsnHeadrestNormal()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1308
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    const/4 v1, 0x1

    invoke-interface {v0, v2, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onShowSaveBtn(ZZ)V

    goto :goto_1

    .line 1306
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-interface {v0, v2, v2}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onShowSaveBtn(ZZ)V

    :cond_2
    :goto_1
    return-void
.end method

.method private compareRLSeatPosition()V
    .locals 3

    .line 1314
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_1

    .line 1315
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isRLSeatEqualMemory()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1316
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-interface {v0, v2, v1, v2, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onShowSaveBtn(ZZZZ)V

    goto :goto_0

    .line 1318
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-interface {v0, v2, v1, v2, v2}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onShowSaveBtn(ZZZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private compareRRSeatPosition()V
    .locals 3

    .line 1324
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_1

    .line 1325
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isRRSeatEqualMemory()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1326
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-interface {v0, v2, v2, v1, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onShowSaveBtn(ZZZZ)V

    goto :goto_0

    .line 1328
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-interface {v0, v2, v2, v1, v2}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onShowSaveBtn(ZZZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private compareSeatPosition()V
    .locals 3

    .line 1292
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_2

    .line 1293
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isDrvSeatEqualMemory()Z

    move-result v0

    .line 1294
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isDrvHeadrestNormal()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1297
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-interface {v0, v2, v2}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onShowSaveBtn(ZZ)V

    goto :goto_1

    .line 1295
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onShowSaveBtn(ZZ)V

    :cond_2
    :goto_1
    return-void
.end method

.method private convertVipSeatState(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1270
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$space$VipSeatStatus:[I

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    const/4 p1, 0x7

    return p1

    :pswitch_1
    const/4 p1, 0x6

    return p1

    :pswitch_2
    const/4 p1, 0x5

    return p1

    :pswitch_3
    const/4 p1, 0x4

    return p1

    :pswitch_4
    const/4 p1, 0x3

    return p1

    :pswitch_5
    const/4 p1, 0x2

    return p1

    :pswitch_6
    const/4 p1, 0x1

    return p1

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

.method public static get_instance()Lcom/xiaopeng/unity/carcontrol/SeatControlManager;
    .locals 1

    .line 74
    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$Holder;->access$000()Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$GkxQ4lxaU1UIQN3yfU2sLOJ_5zE(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->compareSeatPosition()V

    return-void
.end method

.method public static synthetic lambda$ZBimVro15LMnwnupA_hmcFLvzSY(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->compareRRSeatPosition()V

    return-void
.end method

.method public static synthetic lambda$iYtpVya5OaMvMg7_XhMBKZ4X8Ao(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->comparePsnSeatPosition()V

    return-void
.end method

.method public static synthetic lambda$qD13gjD5GOxwKYjQ8Enlan2W18A(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->compareRLSeatPosition()V

    return-void
.end method

.method private declared-synchronized showBtnHandle()V
    .locals 4

    monitor-enter p0

    .line 1338
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mShowBtnHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1339
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mShowBtnHandler:Landroid/os/Handler;

    .line 1341
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mShowBtnHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mShowBtnRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1342
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mShowBtnHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mShowBtnRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1343
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized showPsnBtnHandle()V
    .locals 4

    monitor-enter p0

    .line 1349
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mShowBtnHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1350
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mShowBtnHandler:Landroid/os/Handler;

    .line 1352
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mShowBtnHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mShowPsnBtnRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1353
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mShowBtnHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mShowPsnBtnRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1354
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized showRLBtnHandle()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "isSupportSecRowMemory"

    .line 1357
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1358
    monitor-exit p0

    return-void

    .line 1360
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mShowBtnHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 1361
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mShowBtnHandler:Landroid/os/Handler;

    .line 1363
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mShowBtnHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mShowRLBtnRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1364
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mShowBtnHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mShowRLBtnRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1365
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized showRRBtnHandle()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "isSupportSecRowMemory"

    .line 1368
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1369
    monitor-exit p0

    return-void

    .line 1371
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mShowBtnHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 1372
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mShowBtnHandler:Landroid/os/Handler;

    .line 1374
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mShowBtnHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mShowRRBtnRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1375
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mShowBtnHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mShowRRBtnRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1376
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public cancelAllControlDrvLumbar()V
    .locals 1

    .line 2328
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->cancelAllControlDrvLumbar()V

    return-void
.end method

.method public cancelShowDrvRestoreIcon()V
    .locals 2

    .line 2315
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mShowBtnHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 2316
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mShowBtnHandler:Landroid/os/Handler;

    .line 2318
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mShowBtnHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mShowBtnRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public controlDriverSeatEnd(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 1981
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlDriverSeatEnd(I)V

    return-void
.end method

.method public controlDriverSeatStart(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "direction"
        }
    .end annotation

    .line 1969
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlDriverSeatStart(II)Z

    .line 1971
    sget-object p2, Lcom/xiaopeng/track/constant/BID;->seat_adjust_drv_mode:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {p2}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public controlPsnSeatEnd(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 2003
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlPsnSeatEnd(I)V

    return-void
.end method

.method public controlPsnSeatStart(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "direction"
        }
    .end annotation

    .line 1992
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlPsnSeatStart(II)Z

    .line 1993
    sget-object p2, Lcom/xiaopeng/track/constant/BID;->seat_adjust_psn_mode:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {p2}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public controlRearLeftSeatEnd(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 2025
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlRearLeftSeatEnd(I)V

    return-void
.end method

.method public controlRearLeftSeatStart(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "direction"
        }
    .end annotation

    .line 2014
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlRearLeftSeatStart(II)Z

    .line 2015
    sget-object p2, Lcom/xiaopeng/track/constant/BID;->seat_adjust_rl_mode:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {p2}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public controlRearRightSeatEnd(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 2079
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlRearRightSeatEnd(I)V

    return-void
.end method

.method public controlRearRightSeatStart(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "direction"
        }
    .end annotation

    .line 2036
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlRearRightSeatStart(II)Z

    .line 2037
    sget-object p2, Lcom/xiaopeng/track/constant/BID;->seat_adjust_rr_mode:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {p2}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public controlTrdRowLeftSeatEnd(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 2048
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlTrdRowLeftSeatEnd(I)V

    return-void
.end method

.method public controlTrdRowLeftSeatStart(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "direction"
        }
    .end annotation

    .line 2042
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlTrdRowLeftSeatStart(II)Z

    .line 2043
    sget-object p2, Lcom/xiaopeng/track/constant/BID;->seat_adjust_tl_mode:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {p2}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public controlTrdRowMidSeatEnd(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 2069
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlTrdRowMidSeatEnd(I)V

    return-void
.end method

.method public controlTrdRowMidSeatStart(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "direction"
        }
    .end annotation

    .line 2064
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlTrdRowMidSeatStart(II)Z

    return-void
.end method

.method public controlTrdRowRightSeatEnd(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 2059
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlTrdRowRightSeatEnd(I)V

    return-void
.end method

.method public controlTrdRowRightSeatStart(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "direction"
        }
    .end annotation

    .line 2053
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlTrdRowRightSeatStart(II)Z

    .line 2054
    sget-object p2, Lcom/xiaopeng/track/constant/BID;->seat_adjust_tr_mode:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {p2}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public dismissSeatNotify()V
    .locals 3

    .line 2308
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->cancelNotificationByID(Landroid/content/Context;I)V

    .line 2310
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->cancelNotificationByID(Landroid/content/Context;I)V

    return-void
.end method

.method public enterScene(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    const-string v0, "seat_adjust"

    .line 388
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "psn_seat_menu"

    const-string v3, "seat_mirror_menu"

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 389
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager;->setConflictState(Ljava/lang/String;Z)V

    .line 390
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager;

    move-result-object v1

    invoke-virtual {v1, v2, v4}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager;->setConflictState(Ljava/lang/String;Z)V

    .line 392
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 393
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyManager;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyManager;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyManager;->setConflictState(Ljava/lang/String;Z)V

    .line 394
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyManager;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyManager;

    move-result-object p1

    invoke-virtual {p1, v2, v4}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyManager;->setConflictState(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public exitScene(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    const-string v0, "seat_adjust"

    .line 404
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "psn_seat_menu"

    const-string v3, "seat_mirror_menu"

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 405
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager;->setConflictState(Ljava/lang/String;Z)V

    .line 406
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager;

    move-result-object v1

    invoke-virtual {v1, v2, v4}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager;->setConflictState(Ljava/lang/String;Z)V

    .line 408
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 409
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyManager;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyManager;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyManager;->setConflictState(Ljava/lang/String;Z)V

    .line 410
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyManager;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyManager;

    move-result-object p1

    invoke-virtual {p1, v2, v4}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyManager;->setConflictState(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public getCurrentSelectedPsnHabit()I
    .locals 1

    .line 1542
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getCurrentSelectedPsnHabit()I

    move-result v0

    return v0
.end method

.method public getCurrentSelectedRLHabit()I
    .locals 1

    .line 1547
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getCurrentSelectedRLHabit()I

    move-result v0

    return v0
.end method

.method public getCurrentSelectedRRHabit()I
    .locals 1

    .line 1552
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getCurrentSelectedRRHabit()I

    move-result v0

    return v0
.end method

.method public getDSeatCushionPos()I
    .locals 1

    .line 1672
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatCushionPos()I

    move-result v0

    return v0
.end method

.method public getDSeatHorzPos()I
    .locals 1

    .line 1651
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatHorzPos()I

    move-result v0

    return v0
.end method

.method public getDSeatLegPos()I
    .locals 1

    .line 1667
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatLegPos()I

    move-result v0

    return v0
.end method

.method public getDSeatTiltPos()I
    .locals 1

    .line 1643
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatTiltPos()I

    move-result v0

    return v0
.end method

.method public getDSeatVerPos()I
    .locals 1

    .line 1659
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatVerPos()I

    move-result v0

    return v0
.end method

.method public getDriverAntiFatigueStatus()I
    .locals 1

    .line 2346
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDriverAntiFatigueStatus()I

    move-result v0

    return v0
.end method

.method public getDriverSeatAntiFatigueSw()Z
    .locals 1

    .line 2336
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDriverSeatAntiFatigueSw()Z

    move-result v0

    return v0
.end method

.method public getDrvLumbControlSw()Z
    .locals 1

    .line 2113
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDrvLumbControlSw()Z

    move-result v0

    return v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .line 1419
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->getCurrentSyncGroupName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPSeatHorzPos()I
    .locals 1

    .line 1680
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPSeatHorzPos()I

    move-result v0

    return v0
.end method

.method public getPSeatLegPos()I
    .locals 1

    .line 1701
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPSeatLegPos()I

    move-result v0

    return v0
.end method

.method public getPSeatTiltPos()I
    .locals 1

    .line 1688
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPSeatTiltPos()I

    move-result v0

    return v0
.end method

.method public getPSeatVerPos()I
    .locals 1

    .line 1696
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPSeatVerPos()I

    move-result v0

    return v0
.end method

.method public getPsnLumbControlSw()Z
    .locals 1

    .line 2123
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPsnLumbControlSw()Z

    move-result v0

    return v0
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

    .line 1577
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPsnSeatName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRLSeatHeadHorPos()I
    .locals 1

    .line 1856
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRLSeatHeadHorPos()I

    move-result v0

    return v0
.end method

.method public getRLSeatHeadVerPos()I
    .locals 1

    .line 1845
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRLSeatHeadVerPos()I

    move-result v0

    return v0
.end method

.method public getRLSeatHorPos()I
    .locals 1

    .line 1714
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRLSeatHorPos()I

    move-result v0

    return v0
.end method

.method public getRLSeatLegHorPos()I
    .locals 1

    .line 1719
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRLSeatLegHorPos()I

    move-result v0

    return v0
.end method

.method public getRLSeatLegPos()I
    .locals 1

    .line 1942
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRLSeatLegPos()I

    move-result v0

    return v0
.end method

.method public getRLSeatLegVerPos()I
    .locals 1

    .line 1822
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRLSeatLegVerPos()I

    move-result v0

    return v0
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

    .line 1582
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRLSeatName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRLSeatTiltPos()I
    .locals 1

    .line 1709
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRLSeatTiltPos()I

    move-result v0

    return v0
.end method

.method public getRRSeatHeadHorPos()I
    .locals 1

    .line 1917
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRRSeatHeadHorPos()I

    move-result v0

    return v0
.end method

.method public getRRSeatHeadVerPos()I
    .locals 1

    .line 1906
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRRSeatHeadVerPos()I

    move-result v0

    return v0
.end method

.method public getRRSeatHorPos()I
    .locals 1

    .line 1861
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRRSeatHorPos()I

    move-result v0

    return v0
.end method

.method public getRRSeatLegHorPos()I
    .locals 1

    .line 1866
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRRSeatLegHorPos()I

    move-result v0

    return v0
.end method

.method public getRRSeatLegPos()I
    .locals 1

    .line 1958
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRRSeatLegPos()I

    move-result v0

    return v0
.end method

.method public getRRSeatLegVerPos()I
    .locals 1

    .line 1883
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRRSeatLegVerPos()I

    move-result v0

    return v0
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

    .line 1587
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRRSeatName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRRSeatTiltPos()I
    .locals 1

    .line 1926
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRRSeatTiltPos()I

    move-result v0

    return v0
.end method

.method public getSecRowLTFuctionStatus()I
    .locals 1

    .line 2174
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowLTFuctionStatus()I

    move-result v0

    return v0
.end method

.method public getSecRowLTMoveStatus()I
    .locals 1

    .line 2180
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowLTMoveStatus()I

    move-result v0

    return v0
.end method

.method public getSecRowLtSeatZeroGrav()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->seat_zero_left:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 2165
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowLtSeatZeroGrav()I

    move-result v0

    return v0
.end method

.method public getSecRowRTFuctionStatus()I
    .locals 1

    .line 2177
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowRTFuctionStatus()I

    move-result v0

    return v0
.end method

.method public getSecRowRTMoveStatus()I
    .locals 1

    .line 2183
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowRTMoveStatus()I

    move-result v0

    return v0
.end method

.method public getSecRowRtSeatZeroGrav()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->seat_zero_right:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 2170
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowRtSeatZeroGrav()I

    move-result v0

    return v0
.end method

.method public getTrdRowLTHeadStatus()I
    .locals 1

    .line 2186
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowLTHeadStatus()I

    move-result v0

    return v0
.end method

.method public getTrdRowLeftSeatTiltState()I
    .locals 1

    .line 2196
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowLeftSeatTiltState()I

    move-result v0

    return v0
.end method

.method public getTrdRowLtSeatFol()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->seat_fold_left:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 2212
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowLtSeatFol()I

    move-result v0

    return v0
.end method

.method public getTrdRowLtSeatHeadVerticalPos()I
    .locals 1

    .line 2259
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowLtSeatHeadVerticalPos()I

    move-result v0

    return v0
.end method

.method public getTrdRowLtSeatTiltPos()I
    .locals 1

    .line 2249
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowLtSeatTiltPos()I

    move-result v0

    return v0
.end method

.method public getTrdRowMidHeadStatus()I
    .locals 1

    .line 2192
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowMidHeadStatus()I

    move-result v0

    return v0
.end method

.method public getTrdRowMidSeatHeadVerticalPos()I
    .locals 1

    .line 2269
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowMidSeatHeadVerticalPos()I

    move-result v0

    return v0
.end method

.method public getTrdRowRTHeadStatus()I
    .locals 1

    .line 2189
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowRTHeadStatus()I

    move-result v0

    return v0
.end method

.method public getTrdRowRightSeatTiltState()I
    .locals 1

    .line 2199
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowRightSeatTiltState()I

    move-result v0

    return v0
.end method

.method public getTrdRowRtSeatFol()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->seat_fold_right:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 2217
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowRtSeatFol()I

    move-result v0

    return v0
.end method

.method public getTrdRowRtSeatHeadVerticalPos()I
    .locals 1

    .line 2264
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowRtSeatHeadVerticalPos()I

    move-result v0

    return v0
.end method

.method public getTrdRowRtSeatTiltPos()I
    .locals 1

    .line 2254
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowRtSeatTiltPos()I

    move-result v0

    return v0
.end method

.method public getTrdRowSeatStow()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->seat_stow:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 2207
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowSeatStow()I

    move-result v0

    return v0
.end method

.method public getTrdRowSeatStowState()I
    .locals 1

    .line 2202
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowSeatStowState()I

    move-result v0

    return v0
.end method

.method public initInternal()V
    .locals 2

    .line 79
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    .line 80
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/account/IAccountViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    .line 81
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/space/ISpaceCapsuleViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSpaceViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    .line 82
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/scenario/IScenarioViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    .line 83
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->set_listener(Lcom/xiaopeng/unity/carcontrol/base/INapaListener;)V

    return-void
.end method

.method public isDrvSeatEqualMemory()Z
    .locals 1

    .line 1557
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isDrvSeatEqualMemory()Z

    move-result v0

    return v0
.end method

.method public isLogin()Z
    .locals 1

    .line 1409
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->checkLogin()Z

    move-result v0

    return v0
.end method

.method public isPsnSeatEqualMemory()Z
    .locals 1

    .line 1562
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isPsnSeatEqualMemory()Z

    move-result v0

    return v0
.end method

.method public isRLSeatEqualMemory()Z
    .locals 1

    .line 1567
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isRLSeatEqualMemory()Z

    move-result v0

    return v0
.end method

.method public isRRSeatEqualMemory()Z
    .locals 1

    .line 1572
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isRRSeatEqualMemory()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$observeData$0$SeatControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 889
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 890
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onDrvTiltPosChanged(I)V

    .line 892
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->showBtnHandle()V

    return-void
.end method

.method public synthetic lambda$observeData$1$SeatControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 895
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onDrvHorPosChanged(I)V

    .line 898
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->showBtnHandle()V

    return-void
.end method

.method public synthetic lambda$observeData$10$SeatControlManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "success"
        }
    .end annotation

    .line 945
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 946
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onShowSaveBtn(ZZ)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$11$SeatControlManager(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "success"
        }
    .end annotation

    .line 950
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 951
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0, v1, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onShowSaveBtn(ZZZZ)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$12$SeatControlManager(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "success"
        }
    .end annotation

    .line 955
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 956
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p1, v1, v1, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onShowSaveBtn(ZZZZ)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$13$SeatControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "state"
        }
    .end annotation

    .line 961
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz p1, :cond_0

    .line 962
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->getCurrentSyncGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onAccountGroupChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$14$SeatControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 967
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 968
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onPsnHorPosChanged(I)V

    .line 970
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->showPsnBtnHandle()V

    return-void
.end method

.method public synthetic lambda$observeData$15$SeatControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 973
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 974
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onPsnVerPosChanged(I)V

    .line 976
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->showPsnBtnHandle()V

    return-void
.end method

.method public synthetic lambda$observeData$16$SeatControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 979
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 980
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onPsnTiltPosChanged(I)V

    .line 982
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->showPsnBtnHandle()V

    return-void
.end method

.method public synthetic lambda$observeData$17$SeatControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 986
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 987
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onPsnLegPosChanged(I)V

    .line 989
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->showPsnBtnHandle()V

    return-void
.end method

.method public synthetic lambda$observeData$18$SeatControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 994
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 995
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onRlSeatPosChanged(I)V

    .line 997
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->showRLBtnHandle()V

    return-void
.end method

.method public synthetic lambda$observeData$19$SeatControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onRrSeatPosChanged(I)V

    .line 1003
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->showRRBtnHandle()V

    return-void
.end method

.method public synthetic lambda$observeData$2$SeatControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 901
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 902
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onDrvVerPosChanged(I)V

    .line 904
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->showBtnHandle()V

    return-void
.end method

.method public synthetic lambda$observeData$20$SeatControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1007
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1008
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onRlSeatLegPosChanged(I)V

    .line 1010
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->showRLBtnHandle()V

    return-void
.end method

.method public synthetic lambda$observeData$21$SeatControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1014
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onRrSeatLegPosChanged(I)V

    .line 1017
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->showRRBtnHandle()V

    return-void
.end method

.method public synthetic lambda$observeData$22$SeatControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1020
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1021
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onSecRowLtSeatHorzPosChanged(I)V

    .line 1023
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->showRLBtnHandle()V

    return-void
.end method

.method public synthetic lambda$observeData$23$SeatControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1027
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onSecRowLtSeatLeSuHeigPosChanged(I)V

    .line 1029
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->showRLBtnHandle()V

    return-void
.end method

.method public synthetic lambda$observeData$24$SeatControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1032
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1033
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onSecRowRtSeatHorzPosChanged(I)V

    .line 1035
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->showRRBtnHandle()V

    return-void
.end method

.method public synthetic lambda$observeData$25$SeatControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1039
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onSecRowRtSeatLeSuHeigPosChanged(I)V

    .line 1041
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->showRRBtnHandle()V

    return-void
.end method

.method public synthetic lambda$observeData$26$SeatControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onSecRowLtSeatHeReHorzPosChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$27$SeatControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1050
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1051
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onSecRowLtSeatHeReHeigPosChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$28$SeatControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1055
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1056
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onSecRowRtSeatHeReHorzPosChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$29$SeatControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1060
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1061
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onSecRowRtSeatHeReHeigPosChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$3$SeatControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 907
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 908
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onDrvLegPosChanged(I)V

    .line 910
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->showBtnHandle()V

    return-void
.end method

.method public synthetic lambda$observeData$30$SeatControlManager(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "vipSeatStatus"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1066
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1067
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-direct {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->convertVipSeatState(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onRlVipSeatStateChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$31$SeatControlManager(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "vipSeatStatus"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1071
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1072
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-direct {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->convertVipSeatState(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onRrVipSeatStateChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$32$SeatControlManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enable"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1078
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1079
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onDrvSeatLumberControlEnableChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$33$SeatControlManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enable"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1083
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1084
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onPsnSeatLumberControlEnableChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$34$SeatControlManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enter"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1088
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1089
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onSeatLumberControlViewShow(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$35$SeatControlManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "inPsnSelectProcess"
        }
    .end annotation

    .line 1094
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1095
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mShowBtnHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 1096
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mShowPsnBtnRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$36$SeatControlManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "inRLSelectProcess"
        }
    .end annotation

    .line 1101
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1102
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mShowBtnHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 1103
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mShowRLBtnRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$37$SeatControlManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "inRRSelectProcess"
        }
    .end annotation

    .line 1108
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1109
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mShowBtnHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 1110
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mShowRRBtnRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$38$SeatControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1117
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1118
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onSecRowLtSeatZeroGravPosChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$39$SeatControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1122
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1123
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onSecRowRtSeatZeroGravPosChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$4$SeatControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 913
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 914
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onDrvCushionPosChanged(I)V

    .line 916
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->showBtnHandle()V

    return-void
.end method

.method public synthetic lambda$observeData$40$SeatControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "status"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1127
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1128
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onSecRowLTZeroErr(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$41$SeatControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "status"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1132
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1133
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onSecRowRTZeroErr(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$42$SeatControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "status"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1138
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1139
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onSecRowLtEzOrZeroGStatusChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$43$SeatControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "status"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1143
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1144
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onSecRowRtEzOrZeroGStatusChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$44$SeatControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "status"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1148
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1149
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onSecRowLTEasyErr(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$45$SeatControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "status"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1153
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1154
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onSecRowRTEasyErr(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$46$SeatControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "status"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1158
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1159
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onSecRowLtSeatMoveStatus(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$47$SeatControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "status"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1163
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1164
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onSecRowRtSeatMoveStatus(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$48$SeatControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "status"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1169
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1170
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onTrdRowStowStatusChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$49$SeatControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "status"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1174
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1175
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onTrdRowStowErr(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$5$SeatControlManager(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "success"
        }
    .end annotation

    .line 919
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 920
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onShowSaveBtn(ZZ)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$50$SeatControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "status"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1179
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1180
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onTrdRowStowSuccessChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$51$SeatControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1186
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1187
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onTrdRowLtSeatTiltPosChangedpos(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$52$SeatControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1191
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1192
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onTrdRowRtSeatTiltPosChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$53$SeatControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1198
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1199
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onTrdRowLtSeatHeadVerticalPosChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$54$SeatControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1203
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1204
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onTrdRowRtSeatHeadVerticalPosChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$55$SeatControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1208
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1209
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onTrdRowMidSeatHeadVerticalPosChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$56$SeatControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "status"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1215
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1216
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onTrdRowLtFoldStatusChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$57$SeatControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "status"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1220
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1221
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onTrdRowRtFoldStatusChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$58$SeatControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "status"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1225
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1226
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onTrdRowLTFoldErr(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$59$SeatControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "status"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1230
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1231
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onTrdRowRTFoldErr(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$6$SeatControlManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "success"
        }
    .end annotation

    .line 924
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 925
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onShowSaveBtn(ZZ)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$60$SeatControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "status"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1235
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1236
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onTrdRowLtFoldSuccessChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$61$SeatControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "status"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1240
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1241
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onTrdRowRtFoldSuccessChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$62$SeatControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "habitId"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1248
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1249
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onPsnHabitChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$63$SeatControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "habitId"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1253
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1254
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onRLHabitChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$64$SeatControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "habitId"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1258
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1259
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onRRHabitChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$65$SeatControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "status"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1263
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1264
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onDrvSeatAntiFatigueStatus(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$7$SeatControlManager(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "success"
        }
    .end annotation

    .line 929
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 930
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0, v1, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onShowSaveBtn(ZZZZ)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$8$SeatControlManager(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "success"
        }
    .end annotation

    .line 934
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 935
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p1, v1, v1, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onShowSaveBtn(ZZZZ)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$9$SeatControlManager(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "success"
        }
    .end annotation

    .line 940
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 941
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlListener;->onShowSaveBtn(ZZ)V

    :cond_0
    return-void
.end method

.method public moveToExhibitionPos()V
    .locals 2

    .line 2097
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->moveToExhibitionPos()V

    const-string v0, "isSupportControlSteer"

    .line 2098
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2099
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    if-nez v0, :cond_0

    .line 2100
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ICarBodyViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    .line 2102
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->moveSteerToExhibitionPos()V

    :cond_1
    return-void
.end method

.method protected observeData()V
    .locals 2

    .line 888
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDriverSeatData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$Uw3R-b22Us6faLmnDIDjDCFg8l4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$Uw3R-b22Us6faLmnDIDjDCFg8l4;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 894
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDriverSeatData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$g5v0kO5yGmb8WdPVC7z_byA_ofQ;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$g5v0kO5yGmb8WdPVC7z_byA_ofQ;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 900
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDriverSeatData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$NY0O3HBmpxtCHS2b0wP6bzMs3OE;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$NY0O3HBmpxtCHS2b0wP6bzMs3OE;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 906
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDriverSeatData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$PAQ3XOkxPDlQ9ipl834iLlXybxg;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$PAQ3XOkxPDlQ9ipl834iLlXybxg;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 912
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDriverSeatData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$2aRVZmd8TBvZ3ZfvIDcQSH_CqYE;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$2aRVZmd8TBvZ3ZfvIDcQSH_CqYE;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 918
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSeatDrvRestoreSuccess()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$oYp3WEOeU8e7hYY-dXWgdOhUjac;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$oYp3WEOeU8e7hYY-dXWgdOhUjac;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 923
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSeatPsnRestoreSuccess()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$raIVuPUuMAwX-UCbnLp36jlfJAM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$raIVuPUuMAwX-UCbnLp36jlfJAM;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 928
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSeatRLRestoreSuccess()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$bwD8XOo2cBl-LuHIR-MSrkcHfXU;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$bwD8XOo2cBl-LuHIR-MSrkcHfXU;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 933
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSeatRRRestoreSuccess()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$TQ_Op74-XUctZIW337ff_ShAZ1w;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$TQ_Op74-XUctZIW337ff_ShAZ1w;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 939
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSeatDrvSaveSuccess()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$o3mdAYxcLRXWBXKvEU8RDWZVkiA;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$o3mdAYxcLRXWBXKvEU8RDWZVkiA;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 944
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSeatPsnSaveSuccess()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$l3CzDZ7Fa_KWgWkoK3h3Ks-burw;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$l3CzDZ7Fa_KWgWkoK3h3Ks-burw;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 949
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSeatRLSaveSuccess()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$pb17hCG1vxFhcA3v76HN9dSABF8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$pb17hCG1vxFhcA3v76HN9dSABF8;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 954
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSeatRRSaveSuccess()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$F0L9VwHG-MGqzx-vxe9LhOaF4Io;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$F0L9VwHG-MGqzx-vxe9LhOaF4Io;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 960
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->getCreateSyncGroupData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$BwElpWaSY5uC7jzpK9HGd79gfZM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$BwElpWaSY5uC7jzpK9HGd79gfZM;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 966
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPsnSeatHorzData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$BEZForkIBHtrk_EVbjBq5dAbfS8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$BEZForkIBHtrk_EVbjBq5dAbfS8;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 972
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPsnSeatVerData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$HpLXWptcwrJcPjPmMWbADva4g0o;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$HpLXWptcwrJcPjPmMWbADva4g0o;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 978
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPsnSeatTiltData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$8DBettbNikDyOVFejOsphKkKTRw;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$8DBettbNikDyOVFejOsphKkKTRw;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    const-string v0, "isSupportPsnLeg"

    .line 984
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 985
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPsnSeatLegData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$W8ykLMCrh-joPoD4PYQY_QlEXFY;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$W8ykLMCrh-joPoD4PYQY_QlEXFY;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_0
    const-string v0, "isSupportRearSeatCtrl"

    .line 992
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 993
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRLSeatData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$4R-bl1cbP1F6NdUErAuD2tCFvQY;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$4R-bl1cbP1F6NdUErAuD2tCFvQY;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 999
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRRSeatData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$3QnJyiOtfD42GFNzbfvQeOjn9e8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$3QnJyiOtfD42GFNzbfvQeOjn9e8;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1005
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRLSeatLegData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$AZegitNWtnrV4LjAsYVjLQTjO8M;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$AZegitNWtnrV4LjAsYVjLQTjO8M;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1012
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRRSeatLegData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$sRR42XZHfF8d5t8ssCK-2S7DH20;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$sRR42XZHfF8d5t8ssCK-2S7DH20;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1019
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowLtSeatHorz()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$1NVb7JttJtiEZ814bcArVGVqjqg;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$1NVb7JttJtiEZ814bcArVGVqjqg;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1025
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowLtSeatLeSuHeig()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$Zs83m0tLGdkR0cd-5L__uOAAcQU;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$Zs83m0tLGdkR0cd-5L__uOAAcQU;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1031
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowRtSeatHorz()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$IGbpoNYKEfzQRZG7hz6Z7GNPcbA;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$IGbpoNYKEfzQRZG7hz6Z7GNPcbA;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1037
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowRtSeatLeSuHeig()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$OkImi9mWsrCwESrShZrNgTu7jY8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$OkImi9mWsrCwESrShZrNgTu7jY8;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    const-string v0, "isSupportSecRowHeadRest"

    .line 1043
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1044
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowLtSeatHeadHorz()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$vC8n3dBpMtKMqlIpUORgoSYI6pY;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$vC8n3dBpMtKMqlIpUORgoSYI6pY;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1049
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowLtSeatHeadHeig()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$sw5nFTPO6_WAZ-L_L1-Jvelln54;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$sw5nFTPO6_WAZ-L_L1-Jvelln54;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1054
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowRtSeatHeadHorz()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$_od0W-S67QNtZlreJOgikLyL6bs;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$_od0W-S67QNtZlreJOgikLyL6bs;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1059
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowRtSeatHeadHeig()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$VEHniAaKTALJgJDYhiBtCN3FI4w;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$VEHniAaKTALJgJDYhiBtCN3FI4w;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1065
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSpaceViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->getVipRlSeatData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$qYwEhugrkqJ6olzyRkaOhliKDk0;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$qYwEhugrkqJ6olzyRkaOhliKDk0;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1070
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSpaceViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->getVipRrSeatData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$Yd530yTBLA-XcMdWzdbDaxXJcqw;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$Yd530yTBLA-XcMdWzdbDaxXJcqw;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_2
    const-string v0, "isSupportSeatMassage"

    .line 1076
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1077
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDrvLumbData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$XyDbsLd7IztXmLM6n5OHjuPsl4c;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$XyDbsLd7IztXmLM6n5OHjuPsl4c;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1082
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPsnLumbData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$iosyQJ8NleYKlSyv2B8-fYX49rc;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$iosyQJ8NleYKlSyv2B8-fYX49rc;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1087
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSeatLumbShowData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$h9vX_p2CMscKaZOB0bQ20SA7ggw;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$h9vX_p2CMscKaZOB0bQ20SA7ggw;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1093
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getInPsnSelectProcessData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$M1f6iVm41cnQJlJgYCZSVxsOwjY;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$M1f6iVm41cnQJlJgYCZSVxsOwjY;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1100
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getInRLSelectProcessData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$z-sSv5HK9oxmoM3-CBL5Gjd_8zY;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$z-sSv5HK9oxmoM3-CBL5Gjd_8zY;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1107
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getInRRSelectProcessData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$rYYbi3OBmwZRvcEbEHlD2mxOSx0;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$rYYbi3OBmwZRvcEbEHlD2mxOSx0;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    const-string v0, "isSupportSecRowZeroGravity"

    .line 1115
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1116
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowLtSeatAngle()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$jbWqxc2FBsAGBZ7qIGivv58_GGs;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$jbWqxc2FBsAGBZ7qIGivv58_GGs;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1121
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowRtSeatAngle()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$0XlEYZKZEXLXEQkFyR5dEk00iDw;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$0XlEYZKZEXLXEQkFyR5dEk00iDw;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1126
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowLTZeroErrData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$UnyPqCvHhETlJ2XWWNcQA4GmmHY;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$UnyPqCvHhETlJ2XWWNcQA4GmmHY;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1131
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowRTZeroErrData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$7Xmblvoc1vZI66TDol-rvX3kUuU;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$7Xmblvoc1vZI66TDol-rvX3kUuU;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1137
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowLtEzOrZeroGStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$ElSXfbSCn6RrC2f4wRDYVFhd5VE;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$ElSXfbSCn6RrC2f4wRDYVFhd5VE;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1142
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowRtEzOrZeroGStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$mtKcbZ3T9PaAF35ubmv6WSEDO_Q;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$mtKcbZ3T9PaAF35ubmv6WSEDO_Q;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1147
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowLTEasyErrData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$twxx99Bb174Dz091rPwhJuFW2ww;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$twxx99Bb174Dz091rPwhJuFW2ww;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1152
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowRTEasyErrData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$GtHdyHfwiOPWAHmeRsLMb_zcMkw;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$GtHdyHfwiOPWAHmeRsLMb_zcMkw;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1157
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowLtSeatMoveStatusData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$zfKAH_ylBEoiabSHk6GLjV180yI;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$zfKAH_ylBEoiabSHk6GLjV180yI;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1162
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowRtSeatMoveStatusData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$NliG1THozgKTrCv7cMJVmvhA26I;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$NliG1THozgKTrCv7cMJVmvhA26I;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    const-string v0, "isSupportTrdRowStow"

    .line 1167
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1168
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowStowStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$ZiYOOc9uQjnbcR4pa6zTBF_bXLo;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$ZiYOOc9uQjnbcR4pa6zTBF_bXLo;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1173
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowStowErrData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$CuQciU1uULWnDAV1e68--GmfT-M;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$CuQciU1uULWnDAV1e68--GmfT-M;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1178
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowStowSuccessStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$54zD53qZLXKGbgK59siSFjUb9Nw;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$54zD53qZLXKGbgK59siSFjUb9Nw;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_5
    const-string v0, "isSupportTrdRowSeatControl"

    .line 1184
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1185
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowLtSeatTilt()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$JDu2UOnYNZ4slNklC0lQYpRFmAo;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$JDu2UOnYNZ4slNklC0lQYpRFmAo;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1190
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowRtSeatTilt()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$Rvl8WnFDrP2wwXu5J2iMipbvWrs;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$Rvl8WnFDrP2wwXu5J2iMipbvWrs;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_6
    const-string v0, "isSupportTrdRowHeadRest"

    .line 1196
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1197
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowLtSeatHeadVertical()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$ebovJShgAJ-rgugdis-UPC8UheY;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$ebovJShgAJ-rgugdis-UPC8UheY;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1202
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowRtSeatHeadVertical()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$4yjH6XnFXu8z5x-GOYgLyFZ3rzc;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$4yjH6XnFXu8z5x-GOYgLyFZ3rzc;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1207
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowMidSeatHeadVertical()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$Wz06eqCYD8S7-2DNwC4Wy5dyRaM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$Wz06eqCYD8S7-2DNwC4Wy5dyRaM;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_7
    const-string v0, "isSupportTrdRowFold"

    .line 1213
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1214
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowLtFoldStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$jsKSCYf1D_m_dwS2iJ9xBDzl9Mo;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$jsKSCYf1D_m_dwS2iJ9xBDzl9Mo;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1219
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowRtFoldStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$tMwaG2lwEMxQYEYKpTNMcUsPrwY;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$tMwaG2lwEMxQYEYKpTNMcUsPrwY;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1224
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowLTFoldErrData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$bADaxmUoqsXMIT4KuzuJV3mfk50;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$bADaxmUoqsXMIT4KuzuJV3mfk50;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1229
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowRTFoldErrData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$-uVNrQ7QcrEDe3KEp1NW1BC8bYE;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$-uVNrQ7QcrEDe3KEp1NW1BC8bYE;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1234
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowLtSeatFoldSuccessStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$t_bKREqzCDnjti9XNbu1Xa7xhNU;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$t_bKREqzCDnjti9XNbu1Xa7xhNU;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1239
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowRtSeatFoldSuccessStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$QAjIvS7VGaPAydRn-4_58z6eqAo;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$QAjIvS7VGaPAydRn-4_58z6eqAo;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1247
    :cond_8
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSeatPsnHabitIndex()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$MvnGm3BK3Ao4slc7tzR96MPNWTo;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$MvnGm3BK3Ao4slc7tzR96MPNWTo;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1252
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSeatRLHabitIndex()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$GPIT_5YenijhDnxjHVBnP6_p358;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$GPIT_5YenijhDnxjHVBnP6_p358;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1257
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSeatRRHabitIndex()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$ndWBM-8OB8i6EYcFF3c7BwhP-ts;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$ndWBM-8OB8i6EYcFF3c7BwhP-ts;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1262
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDrvSeatAntiFatigueStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$LRyrCnI7EmfN3kKrAKtKZH7f9-c;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatControlManager$LRyrCnI7EmfN3kKrAKtKZH7f9-c;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public onDrvLumbarControl(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyCode"
        }
    .end annotation

    .line 2323
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->onDrvLumbarControl(I)Z

    move-result p1

    return p1
.end method

.method protected onRealCall(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "method",
            "param"
        }
    .end annotation

    .line 417
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 418
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v3, "setDSeatCushionPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v2, 0x96

    goto/16 :goto_1

    :sswitch_1
    const-string v3, "setTrdRowMidSeatHeadVerticalPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v2, 0x95

    goto/16 :goto_1

    :sswitch_2
    const-string v3, "getSecRowRTFuctionStatus"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v2, 0x94

    goto/16 :goto_1

    :sswitch_3
    const-string v3, "isLogin"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v2, 0x93

    goto/16 :goto_1

    :sswitch_4
    const-string v3, "getSecRowRtSeatZeroGravStatus"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto/16 :goto_1

    :cond_5
    const/16 v2, 0x92

    goto/16 :goto_1

    :sswitch_5
    const-string v3, "getDriverAntiFatigueStatus"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto/16 :goto_1

    :cond_6
    const/16 v2, 0x91

    goto/16 :goto_1

    :sswitch_6
    const-string v3, "getSecRowRTMoveStatus"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto/16 :goto_1

    :cond_7
    const/16 v2, 0x90

    goto/16 :goto_1

    :sswitch_7
    const-string v3, "getRRSeatName"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto/16 :goto_1

    :cond_8
    const/16 v2, 0x8f

    goto/16 :goto_1

    :sswitch_8
    const-string v3, "getRRSeatHeadVerPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto/16 :goto_1

    :cond_9
    const/16 v2, 0x8e

    goto/16 :goto_1

    :sswitch_9
    const-string v3, "getRRSeatTiltPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto/16 :goto_1

    :cond_a
    const/16 v2, 0x8d

    goto/16 :goto_1

    :sswitch_a
    const-string v3, "showDrvLumberControlPanel"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto/16 :goto_1

    :cond_b
    const/16 v2, 0x8c

    goto/16 :goto_1

    :sswitch_b
    const-string v3, "previewDrvSeatAntiFatigue"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto/16 :goto_1

    :cond_c
    const/16 v2, 0x8b

    goto/16 :goto_1

    :sswitch_c
    const-string v3, "getSecRowLTFuctionStatus"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto/16 :goto_1

    :cond_d
    const/16 v2, 0x8a

    goto/16 :goto_1

    :sswitch_d
    const-string v3, "setTrdRowLtSeatTiltPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto/16 :goto_1

    :cond_e
    const/16 v2, 0x89

    goto/16 :goto_1

    :sswitch_e
    const-string v3, "getPsnLumbControlSw"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    goto/16 :goto_1

    :cond_f
    const/16 v2, 0x88

    goto/16 :goto_1

    :sswitch_f
    const-string v3, "getDSeatTiltPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    goto/16 :goto_1

    :cond_10
    const/16 v2, 0x87

    goto/16 :goto_1

    :sswitch_10
    const-string v3, "setSecRowRtSeatZeroGrav"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    goto/16 :goto_1

    :cond_11
    const/16 v2, 0x86

    goto/16 :goto_1

    :sswitch_11
    const-string v3, "controlPsnSeatStart"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    goto/16 :goto_1

    :cond_12
    const/16 v2, 0x85

    goto/16 :goto_1

    :sswitch_12
    const-string v3, "getTrdRowRtSeatFol"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    goto/16 :goto_1

    :cond_13
    const/16 v2, 0x84

    goto/16 :goto_1

    :sswitch_13
    const-string v3, "getRRSeatHeadHorPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    goto/16 :goto_1

    :cond_14
    const/16 v2, 0x83

    goto/16 :goto_1

    :sswitch_14
    const-string v3, "setTrdRowSeatStowInPause"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    goto/16 :goto_1

    :cond_15
    const/16 v2, 0x82

    goto/16 :goto_1

    :sswitch_15
    const-string v3, "controlTrdRowLeftSeatEnd"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    goto/16 :goto_1

    :cond_16
    const/16 v2, 0x81

    goto/16 :goto_1

    :sswitch_16
    const-string v3, "getRLSeatHeadVerPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    goto/16 :goto_1

    :cond_17
    const/16 v2, 0x80

    goto/16 :goto_1

    :sswitch_17
    const-string v3, "getRLSeatLegVerPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    goto/16 :goto_1

    :cond_18
    const/16 v2, 0x7f

    goto/16 :goto_1

    :sswitch_18
    const-string v3, "saveSelectRLSeatData"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    goto/16 :goto_1

    :cond_19
    const/16 v2, 0x7e

    goto/16 :goto_1

    :sswitch_19
    const-string v3, "dismissSeatNotify"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    goto/16 :goto_1

    :cond_1a
    const/16 v2, 0x7d

    goto/16 :goto_1

    :sswitch_1a
    const-string v3, "getPSeatHorzPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    goto/16 :goto_1

    :cond_1b
    const/16 v2, 0x7c

    goto/16 :goto_1

    :sswitch_1b
    const-string v3, "selectRRHabit"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    goto/16 :goto_1

    :cond_1c
    const/16 v2, 0x7b

    goto/16 :goto_1

    :sswitch_1c
    const-string v3, "setRrRestore"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    goto/16 :goto_1

    :cond_1d
    const/16 v2, 0x7a

    goto/16 :goto_1

    :sswitch_1d
    const-string v3, "getDSeatCushionPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    goto/16 :goto_1

    :cond_1e
    const/16 v2, 0x79

    goto/16 :goto_1

    :sswitch_1e
    const-string v3, "setRRSeatLegPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    goto/16 :goto_1

    :cond_1f
    const/16 v2, 0x78

    goto/16 :goto_1

    :sswitch_1f
    const-string v3, "getSecRowLTMoveStatus"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    goto/16 :goto_1

    :cond_20
    const/16 v2, 0x77

    goto/16 :goto_1

    :sswitch_20
    const-string v3, "compareRRSeatPosition"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    goto/16 :goto_1

    :cond_21
    const/16 v2, 0x76

    goto/16 :goto_1

    :sswitch_21
    const-string v3, "getTrdRowSeatStow"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    goto/16 :goto_1

    :cond_22
    const/16 v2, 0x75

    goto/16 :goto_1

    :sswitch_22
    const-string v3, "selectRLHabit"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    goto/16 :goto_1

    :cond_23
    const/16 v2, 0x74

    goto/16 :goto_1

    :sswitch_23
    const-string v3, "setRRSeatHorPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    goto/16 :goto_1

    :cond_24
    const/16 v2, 0x73

    goto/16 :goto_1

    :sswitch_24
    const-string v3, "getRLSeatHeadHorPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    goto/16 :goto_1

    :cond_25
    const/16 v2, 0x72

    goto/16 :goto_1

    :sswitch_25
    const-string v3, "setDSeatVerPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    goto/16 :goto_1

    :cond_26
    const/16 v2, 0x71

    goto/16 :goto_1

    :sswitch_26
    const-string v3, "getRLSeatLegHorPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    goto/16 :goto_1

    :cond_27
    const/16 v2, 0x70

    goto/16 :goto_1

    :sswitch_27
    const-string v3, "getRLSeatTiltPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    goto/16 :goto_1

    :cond_28
    const/16 v2, 0x6f

    goto/16 :goto_1

    :sswitch_28
    const-string v3, "onDrvLumbarControl"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    goto/16 :goto_1

    :cond_29
    const/16 v2, 0x6e

    goto/16 :goto_1

    :sswitch_29
    const-string v3, "selectPsnHabit"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    goto/16 :goto_1

    :cond_2a
    const/16 v2, 0x6d

    goto/16 :goto_1

    :sswitch_2a
    const-string v3, "setSecRowLtSeatEZ"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    goto/16 :goto_1

    :cond_2b
    const/16 v2, 0x6c

    goto/16 :goto_1

    :sswitch_2b
    const-string v3, "setDSeatLegPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    goto/16 :goto_1

    :cond_2c
    const/16 v2, 0x6b

    goto/16 :goto_1

    :sswitch_2c
    const-string v3, "controlTrdRowMidSeatEnd"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    goto/16 :goto_1

    :cond_2d
    const/16 v2, 0x6a

    goto/16 :goto_1

    :sswitch_2d
    const-string v3, "getTrdRowSeatStowState"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    goto/16 :goto_1

    :cond_2e
    const/16 v2, 0x69

    goto/16 :goto_1

    :sswitch_2e
    const-string v3, "setDrvLumbControlSw"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    goto/16 :goto_1

    :cond_2f
    const/16 v2, 0x68

    goto/16 :goto_1

    :sswitch_2f
    const-string v3, "controlRearLeftSeatEnd"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    goto/16 :goto_1

    :cond_30
    const/16 v2, 0x67

    goto/16 :goto_1

    :sswitch_30
    const-string v3, "controlTrdRowRightSeatEnd"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    goto/16 :goto_1

    :cond_31
    const/16 v2, 0x66

    goto/16 :goto_1

    :sswitch_31
    const-string v3, "savePsnSeatName"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    goto/16 :goto_1

    :cond_32
    const/16 v2, 0x65

    goto/16 :goto_1

    :sswitch_32
    const-string v3, "savePsnSeatData"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    goto/16 :goto_1

    :cond_33
    const/16 v2, 0x64

    goto/16 :goto_1

    :sswitch_33
    const-string v3, "controlDriverSeatStart"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    goto/16 :goto_1

    :cond_34
    const/16 v2, 0x63

    goto/16 :goto_1

    :sswitch_34
    const-string v3, "getCurrentSelectedRRHabit"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    goto/16 :goto_1

    :cond_35
    const/16 v2, 0x62

    goto/16 :goto_1

    :sswitch_35
    const-string v3, "restoreSelectPsnSeatPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    goto/16 :goto_1

    :cond_36
    const/16 v2, 0x61

    goto/16 :goto_1

    :sswitch_36
    const-string v3, "cancelAllControlDrvLumbar"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    goto/16 :goto_1

    :cond_37
    const/16 v2, 0x60

    goto/16 :goto_1

    :sswitch_37
    const-string v3, "saveRRSeatName"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    goto/16 :goto_1

    :cond_38
    const/16 v2, 0x5f

    goto/16 :goto_1

    :sswitch_38
    const-string v3, "setTrdRowLtSeatFol"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    goto/16 :goto_1

    :cond_39
    const/16 v2, 0x5e

    goto/16 :goto_1

    :sswitch_39
    const-string v3, "setRLSeatAllPositions"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    goto/16 :goto_1

    :cond_3a
    const/16 v2, 0x5d

    goto/16 :goto_1

    :sswitch_3a
    const-string v3, "setDrvSeatHorPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    goto/16 :goto_1

    :cond_3b
    const/16 v2, 0x5c

    goto/16 :goto_1

    :sswitch_3b
    const-string v3, "setSecRowLtSeatZeroGrav"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    goto/16 :goto_1

    :cond_3c
    const/16 v2, 0x5b

    goto/16 :goto_1

    :sswitch_3c
    const-string v3, "getCurrentSelectedRLHabit"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    goto/16 :goto_1

    :cond_3d
    const/16 v2, 0x5a

    goto/16 :goto_1

    :sswitch_3d
    const-string v3, "getTrdRowLtSeatTiltPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    goto/16 :goto_1

    :cond_3e
    const/16 v2, 0x59

    goto/16 :goto_1

    :sswitch_3e
    const-string v3, "setRRSeatHeadVerPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    goto/16 :goto_1

    :cond_3f
    const/16 v2, 0x58

    goto/16 :goto_1

    :sswitch_3f
    const-string v3, "setDriverSeatAntiFatigueSw"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    goto/16 :goto_1

    :cond_40
    const/16 v2, 0x57

    goto/16 :goto_1

    :sswitch_40
    const-string v3, "getRRSeatLegPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    goto/16 :goto_1

    :cond_41
    const/16 v2, 0x56

    goto/16 :goto_1

    :sswitch_41
    const-string v3, "restoreSelectRRSeatPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_42

    goto/16 :goto_1

    :cond_42
    const/16 v2, 0x55

    goto/16 :goto_1

    :sswitch_42
    const-string v3, "getSecRowLtSeatZeroGravStatus"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_43

    goto/16 :goto_1

    :cond_43
    const/16 v2, 0x54

    goto/16 :goto_1

    :sswitch_43
    const-string v3, "setTrdRowRtSeatHeadVerticalPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    goto/16 :goto_1

    :cond_44
    const/16 v2, 0x53

    goto/16 :goto_1

    :sswitch_44
    const-string v3, "setTrdRowSeatStow"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_45

    goto/16 :goto_1

    :cond_45
    const/16 v2, 0x52

    goto/16 :goto_1

    :sswitch_45
    const-string v3, "getRRSeatHorPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    goto/16 :goto_1

    :cond_46
    const/16 v2, 0x51

    goto/16 :goto_1

    :sswitch_46
    const-string v3, "moveToExhibitionPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_47

    goto/16 :goto_1

    :cond_47
    const/16 v2, 0x50

    goto/16 :goto_1

    :sswitch_47
    const-string v3, "isPsnSeatEqualMemory"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    goto/16 :goto_1

    :cond_48
    const/16 v2, 0x4f

    goto/16 :goto_1

    :sswitch_48
    const-string v3, "setRrLayFlat"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_49

    goto/16 :goto_1

    :cond_49
    const/16 v2, 0x4e

    goto/16 :goto_1

    :sswitch_49
    const-string v3, "getTrdRowRtSeatHeadVerticalPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    goto/16 :goto_1

    :cond_4a
    const/16 v2, 0x4d

    goto/16 :goto_1

    :sswitch_4a
    const-string v3, "setPsnLumbControlSw"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4b

    goto/16 :goto_1

    :cond_4b
    const/16 v2, 0x4c

    goto/16 :goto_1

    :sswitch_4b
    const-string v3, "stopSeatControl"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    goto/16 :goto_1

    :cond_4c
    const/16 v2, 0x4b

    goto/16 :goto_1

    :sswitch_4c
    const-string v3, "setTrdRowLtFoldInPause"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4d

    goto/16 :goto_1

    :cond_4d
    const/16 v2, 0x4a

    goto/16 :goto_1

    :sswitch_4d
    const-string v3, "getDriverSeatAntiFatigueSw"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4e

    goto/16 :goto_1

    :cond_4e
    const/16 v2, 0x49

    goto/16 :goto_1

    :sswitch_4e
    const-string v3, "setRRSeatTiltPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4f

    goto/16 :goto_1

    :cond_4f
    const/16 v2, 0x48

    goto/16 :goto_1

    :sswitch_4f
    const-string v3, "setRRSeatAllPositions"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    goto/16 :goto_1

    :cond_50
    const/16 v2, 0x47

    goto/16 :goto_1

    :sswitch_50
    const-string v3, "setRRSeatHeadHorPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_51

    goto/16 :goto_1

    :cond_51
    const/16 v2, 0x46

    goto/16 :goto_1

    :sswitch_51
    const-string v3, "setPsnSeatTiltPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_52

    goto/16 :goto_1

    :cond_52
    const/16 v2, 0x45

    goto/16 :goto_1

    :sswitch_52
    const-string v3, "setTrdRowRtSeatTiltPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_53

    goto/16 :goto_1

    :cond_53
    const/16 v2, 0x44

    goto/16 :goto_1

    :sswitch_53
    const-string v3, "setRLSeatHeadVerPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_54

    goto/16 :goto_1

    :cond_54
    const/16 v2, 0x43

    goto/16 :goto_1

    :sswitch_54
    const-string v3, "getRLSeatName"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_55

    goto/16 :goto_1

    :cond_55
    const/16 v2, 0x42

    goto/16 :goto_1

    :sswitch_55
    const-string v3, "stopSecRowRightSeatMoving"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_56

    goto/16 :goto_1

    :cond_56
    const/16 v2, 0x41

    goto/16 :goto_1

    :sswitch_56
    const-string v3, "getTrdRowLeftSeatTiltState"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_57

    goto/16 :goto_1

    :cond_57
    const/16 v2, 0x40

    goto/16 :goto_1

    :sswitch_57
    const-string v3, "getDSeatHorzPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_58

    goto/16 :goto_1

    :cond_58
    const/16 v2, 0x3f

    goto/16 :goto_1

    :sswitch_58
    const-string v3, "getTrdRowRTHeadStatus"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_59

    goto/16 :goto_1

    :cond_59
    const/16 v2, 0x3e

    goto/16 :goto_1

    :sswitch_59
    const-string v3, "getTrdRowLtSeatFol"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5a

    goto/16 :goto_1

    :cond_5a
    const/16 v2, 0x3d

    goto/16 :goto_1

    :sswitch_5a
    const-string v3, "saveSelectPsnSeatData"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5b

    goto/16 :goto_1

    :cond_5b
    const/16 v2, 0x3c

    goto/16 :goto_1

    :sswitch_5b
    const-string v3, "setRLSeatHeadHorPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5c

    goto/16 :goto_1

    :cond_5c
    const/16 v2, 0x3b

    goto/16 :goto_1

    :sswitch_5c
    const-string v3, "restoreDrvSeatPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5d

    goto/16 :goto_1

    :cond_5d
    const/16 v2, 0x3a

    goto/16 :goto_1

    :sswitch_5d
    const-string v3, "controlTrdRowMidSeatStart"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5e

    goto/16 :goto_1

    :cond_5e
    const/16 v2, 0x39

    goto/16 :goto_1

    :sswitch_5e
    const-string v3, "setRlRestore"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5f

    goto/16 :goto_1

    :cond_5f
    const/16 v2, 0x38

    goto/16 :goto_1

    :sswitch_5f
    const-string v3, "setRRSeatLegVerPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_60

    goto/16 :goto_1

    :cond_60
    const/16 v2, 0x37

    goto/16 :goto_1

    :sswitch_60
    const-string v3, "saveDrvSeatData"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_61

    goto/16 :goto_1

    :cond_61
    const/16 v2, 0x36

    goto/16 :goto_1

    :sswitch_61
    const-string v3, "requestCreateNewSyncGroup"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_62

    goto/16 :goto_1

    :cond_62
    const/16 v2, 0x35

    goto/16 :goto_1

    :sswitch_62
    const-string v3, "enterScene"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_63

    goto/16 :goto_1

    :cond_63
    const/16 v2, 0x34

    goto/16 :goto_1

    :sswitch_63
    const-string v3, "setRLSeatTiltPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_64

    goto/16 :goto_1

    :cond_64
    const/16 v2, 0x33

    goto/16 :goto_1

    :sswitch_64
    const-string v3, "saveSelectRRSeatData"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_65

    goto/16 :goto_1

    :cond_65
    const/16 v2, 0x32

    goto/16 :goto_1

    :sswitch_65
    const-string v3, "isRRSeatEqualMemory"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_66

    goto/16 :goto_1

    :cond_66
    const/16 v2, 0x31

    goto/16 :goto_1

    :sswitch_66
    const-string v3, "setRLSeatLegPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_67

    goto/16 :goto_1

    :cond_67
    const/16 v2, 0x30

    goto/16 :goto_1

    :sswitch_67
    const-string v3, "controlTrdRowRightSeatStart"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_68

    goto/16 :goto_1

    :cond_68
    const/16 v2, 0x2f

    goto/16 :goto_1

    :sswitch_68
    const-string v3, "setRLSeatHorPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_69

    goto/16 :goto_1

    :cond_69
    const/16 v2, 0x2e

    goto/16 :goto_1

    :sswitch_69
    const-string v3, "setTrdRowLtSeatHeadVerticalPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6a

    goto/16 :goto_1

    :cond_6a
    const/16 v2, 0x2d

    goto/16 :goto_1

    :sswitch_6a
    const-string v3, "controlPsnSeatEnd"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6b

    goto/16 :goto_1

    :cond_6b
    const/16 v2, 0x2c

    goto/16 :goto_1

    :sswitch_6b
    const-string v3, "getPSeatTiltPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6c

    goto/16 :goto_1

    :cond_6c
    const/16 v2, 0x2b

    goto/16 :goto_1

    :sswitch_6c
    const-string v3, "getTrdRowLtSeatHeadVerticalPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6d

    goto/16 :goto_1

    :cond_6d
    const/16 v2, 0x2a

    goto/16 :goto_1

    :sswitch_6d
    const-string v3, "setPsnSeatVerPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6e

    goto/16 :goto_1

    :cond_6e
    const/16 v2, 0x29

    goto/16 :goto_1

    :sswitch_6e
    const-string v3, "getTrdRowLTHeadStatus"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6f

    goto/16 :goto_1

    :cond_6f
    const/16 v2, 0x28

    goto/16 :goto_1

    :sswitch_6f
    const-string v3, "controlRearRightSeatEnd"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_70

    goto/16 :goto_1

    :cond_70
    const/16 v2, 0x27

    goto/16 :goto_1

    :sswitch_70
    const-string v3, "cancelShowDrvRestoreIcon"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_71

    goto/16 :goto_1

    :cond_71
    const/16 v2, 0x26

    goto/16 :goto_1

    :sswitch_71
    const-string v3, "comparePsnSeatPosition"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_72

    goto/16 :goto_1

    :cond_72
    const/16 v2, 0x25

    goto/16 :goto_1

    :sswitch_72
    const-string v3, "setDrvSeatTiltPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_73

    goto/16 :goto_1

    :cond_73
    const/16 v2, 0x24

    goto/16 :goto_1

    :sswitch_73
    const-string v3, "exitScene"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_74

    goto/16 :goto_1

    :cond_74
    const/16 v2, 0x23

    goto/16 :goto_1

    :sswitch_74
    const-string v3, "compareRLSeatPosition"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_75

    goto/16 :goto_1

    :cond_75
    const/16 v2, 0x22

    goto/16 :goto_1

    :sswitch_75
    const-string v3, "setPsnSeatLegHorPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_76

    goto/16 :goto_1

    :cond_76
    const/16 v2, 0x21

    goto/16 :goto_1

    :sswitch_76
    const-string v3, "getPsnSeatName"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_77

    goto/16 :goto_1

    :cond_77
    const/16 v2, 0x20

    goto/16 :goto_1

    :sswitch_77
    const-string v3, "getTrdRowRtSeatTiltPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_78

    goto/16 :goto_1

    :cond_78
    const/16 v2, 0x1f

    goto/16 :goto_1

    :sswitch_78
    const-string v3, "getGroupName"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_79

    goto/16 :goto_1

    :cond_79
    const/16 v2, 0x1e

    goto/16 :goto_1

    :sswitch_79
    const-string v3, "getTrdRowMidHeadStatus"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7a

    goto/16 :goto_1

    :cond_7a
    const/16 v2, 0x1d

    goto/16 :goto_1

    :sswitch_7a
    const-string v3, "controlRearRightSeatStart"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7b

    goto/16 :goto_1

    :cond_7b
    const/16 v2, 0x1c

    goto/16 :goto_1

    :sswitch_7b
    const-string v3, "restorePsnSeatPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7c

    goto/16 :goto_1

    :cond_7c
    const/16 v2, 0x1b

    goto/16 :goto_1

    :sswitch_7c
    const-string v3, "getDSeatVerPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7d

    goto/16 :goto_1

    :cond_7d
    const/16 v2, 0x1a

    goto/16 :goto_1

    :sswitch_7d
    const-string v3, "startVipSeatMode"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7e

    goto/16 :goto_1

    :cond_7e
    const/16 v2, 0x19

    goto/16 :goto_1

    :sswitch_7e
    const-string v3, "setPsnSeatHorPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7f

    goto/16 :goto_1

    :cond_7f
    const/16 v2, 0x18

    goto/16 :goto_1

    :sswitch_7f
    const-string v3, "restoreSelectRLSeatPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_80

    goto/16 :goto_1

    :cond_80
    const/16 v2, 0x17

    goto/16 :goto_1

    :sswitch_80
    const-string v3, "getPSeatVerPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_81

    goto/16 :goto_1

    :cond_81
    const/16 v2, 0x16

    goto/16 :goto_1

    :sswitch_81
    const-string v3, "saveRLSeatName"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_82

    goto/16 :goto_1

    :cond_82
    const/16 v2, 0x15

    goto/16 :goto_1

    :sswitch_82
    const-string v3, "getRRSeatLegVerPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_83

    goto/16 :goto_1

    :cond_83
    const/16 v2, 0x14

    goto/16 :goto_1

    :sswitch_83
    const-string v3, "setSecRowRtSeatEZ"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_84

    goto/16 :goto_1

    :cond_84
    const/16 v2, 0x13

    goto/16 :goto_1

    :sswitch_84
    const-string v3, "controlRearLeftSeatStart"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_85

    goto/16 :goto_1

    :cond_85
    const/16 v2, 0x12

    goto/16 :goto_1

    :sswitch_85
    const-string v3, "stopSecRowLeftSeatMoving"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_86

    goto/16 :goto_1

    :cond_86
    const/16 v2, 0x11

    goto/16 :goto_1

    :sswitch_86
    const-string v3, "getCurrentSelectedPsnHabit"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_87

    goto/16 :goto_1

    :cond_87
    const/16 v2, 0x10

    goto/16 :goto_1

    :sswitch_87
    const-string v3, "setRlLayFlat"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_88

    goto/16 :goto_1

    :cond_88
    const/16 v2, 0xf

    goto/16 :goto_1

    :sswitch_88
    const-string v3, "setTrdRowRtFoldInPause"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_89

    goto/16 :goto_1

    :cond_89
    const/16 v2, 0xe

    goto/16 :goto_1

    :sswitch_89
    const-string v3, "getDSeatLegPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8a

    goto/16 :goto_1

    :cond_8a
    const/16 v2, 0xd

    goto/16 :goto_1

    :sswitch_8a
    const-string v3, "getRLSeatLegPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8b

    goto/16 :goto_1

    :cond_8b
    const/16 v2, 0xc

    goto/16 :goto_1

    :sswitch_8b
    const-string v3, "setTrdRowRtSeatFol"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8c

    goto/16 :goto_1

    :cond_8c
    const/16 v2, 0xb

    goto/16 :goto_1

    :sswitch_8c
    const-string v3, "getPSeatLegPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8d

    goto/16 :goto_1

    :cond_8d
    const/16 v2, 0xa

    goto/16 :goto_1

    :sswitch_8d
    const-string v3, "isDrvSeatEqualMemory"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8e

    goto/16 :goto_1

    :cond_8e
    const/16 v2, 0x9

    goto/16 :goto_1

    :sswitch_8e
    const-string v3, "getRLSeatHorPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8f

    goto/16 :goto_1

    :cond_8f
    const/16 v2, 0x8

    goto/16 :goto_1

    :sswitch_8f
    const-string v3, "getTrdRowRightSeatTiltState"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_90

    goto :goto_1

    :cond_90
    const/4 v2, 0x7

    goto :goto_1

    :sswitch_90
    const-string v3, "setRLSeatLegVerPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_91

    goto :goto_1

    :cond_91
    const/4 v2, 0x6

    goto :goto_1

    :sswitch_91
    const-string v3, "getRRSeatLegHorPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_92

    goto :goto_1

    :cond_92
    const/4 v2, 0x5

    goto :goto_1

    :sswitch_92
    const-string v3, "controlDriverSeatEnd"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_93

    goto :goto_1

    :cond_93
    const/4 v2, 0x4

    goto :goto_1

    :sswitch_93
    const-string v3, "getTrdRowMidSeatHeadVerticalPos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_94

    goto :goto_1

    :cond_94
    const/4 v2, 0x3

    goto :goto_1

    :sswitch_94
    const-string v3, "controlTrdRowLeftSeatStart"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_95

    goto :goto_1

    :cond_95
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_95
    const-string v3, "getDrvLumbControlSw"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_96

    goto :goto_1

    :cond_96
    move v2, v4

    goto :goto_1

    :sswitch_96
    const-string v3, "isRLSeatEqualMemory"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_97

    goto :goto_1

    :cond_97
    move v2, v1

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 880
    iget-object p2, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 588
    :pswitch_0
    aget-object p1, v0, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setDSeatCushionPos(I)V

    goto/16 :goto_2

    .line 823
    :pswitch_1
    aget-object p1, v0, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setTrdRowMidSeatHeadVerticalPos(I)V

    goto/16 :goto_2

    .line 765
    :pswitch_2
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getSecRowRTFuctionStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_3

    .line 516
    :pswitch_3
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->isLogin()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_3

    .line 758
    :pswitch_4
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getSecRowRtSeatZeroGrav()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_3

    .line 868
    :pswitch_5
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getDriverAntiFatigueStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_3

    .line 772
    :pswitch_6
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getSecRowRTMoveStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_3

    .line 474
    :pswitch_7
    aget-object p1, v0, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getRRSeatName(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    .line 645
    :pswitch_8
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getRRSeatHeadVerPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_3

    .line 633
    :pswitch_9
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getRRSeatTiltPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_3

    .line 844
    :pswitch_a
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->showDrvLumberControlPanel()V

    goto/16 :goto_2

    .line 865
    :pswitch_b
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->previewDrvSeatAntiFatigue()V

    goto/16 :goto_2

    .line 762
    :pswitch_c
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getSecRowLTFuctionStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_3

    .line 799
    :pswitch_d
    aget-object p1, v0, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setTrdRowLtSeatTiltPos(I)V

    goto/16 :goto_2

    .line 738
    :pswitch_e
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getPsnLumbControlSw()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_3

    .line 534
    :pswitch_f
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getDSeatTiltPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_3

    .line 752
    :pswitch_10
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setSecRowRtSeatZeroGrav(I)V

    goto/16 :goto_2

    .line 684
    :pswitch_11
    aget-object p1, v0, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    aget-object p2, v0, v4

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->controlPsnSeatStart(II)V

    goto/16 :goto_2

    .line 792
    :pswitch_12
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getTrdRowRtSeatFol()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_3

    .line 648
    :pswitch_13
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getRRSeatHeadHorPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_3

    .line 871
    :pswitch_14
    aget-object p1, v0, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setTrdRowSeatStowInPause(Z)V

    goto/16 :goto_2

    .line 705
    :pswitch_15
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->controlTrdRowLeftSeatEnd(I)V

    goto/16 :goto_2

    .line 573
    :pswitch_16
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getRLSeatHeadVerPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_3

    .line 570
    :pswitch_17
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getRLSeatLegVerPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_3

    .line 447
    :pswitch_18
    aget-object p1, v0, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->saveSelectRLSeatData(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_3

    .line 847
    :pswitch_19
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->dismissSeatNotify()V

    goto/16 :goto_2

    .line 549
    :pswitch_1a
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getPSeatHorzPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_3

    .line 438
    :pswitch_1b
    aget-object p1, v0, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->selectRRHabit(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_3

    .line 531
    :pswitch_1c
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setRrRestore()V

    goto/16 :goto_2

    .line 546
    :pswitch_1d
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getDSeatCushionPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_3

    .line 672
    :pswitch_1e
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setRRSeatLegPos(I)V

    goto/16 :goto_2

    .line 769
    :pswitch_1f
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getSecRowLTMoveStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_3

    .line 501
    :pswitch_20
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->compareRRSeatPosition()V

    goto/16 :goto_2

    .line 779
    :pswitch_21
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getTrdRowSeatStow()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_3

    .line 435
    :pswitch_22
    aget-object p1, v0, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->selectRLHabit(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_3

    .line 654
    :pswitch_23
    aget-object p1, v0, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setRRSeatHorPos(I)V

    goto/16 :goto_2

    .line 576
    :pswitch_24
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getRLSeatHeadHorPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_3

    .line 585
    :pswitch_25
    aget-object p1, v0, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setDSeatVerPos(I)V

    goto/16 :goto_2

    .line 567
    :pswitch_26
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getRLSeatLegHorPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_3

    .line 561
    :pswitch_27
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getRLSeatTiltPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_3

    .line 853
    :pswitch_28
    aget-object p1, v0, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->onDrvLumbarControl(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_3

    .line 432
    :pswitch_29
    aget-object p1, v0, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->selectPsnHabit(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_3

    .line 742
    :pswitch_2a
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setSecRowLtSeatEZ(I)V

    goto/16 :goto_2

    .line 591
    :pswitch_2b
    aget-object p1, v0, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setDSeatLegPos(I)V

    goto/16 :goto_2

    .line 717
    :pswitch_2c
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->controlTrdRowMidSeatEnd(I)V

    goto/16 :goto_2

    .line 841
    :pswitch_2d
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getTrdRowSeatStowState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_3

    .line 729
    :pswitch_2e
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setDrvLumbControlSw(Z)V

    goto/16 :goto_2

    .line 693
    :pswitch_2f
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->controlRearLeftSeatEnd(I)V

    goto/16 :goto_2

    .line 711
    :pswitch_30
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->controlTrdRowRightSeatEnd(I)V

    goto/16 :goto_2

    .line 459
    :pswitch_31
    aget-object p1, v0, v1

    aget-object p2, v0, v4

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->savePsnSeatName(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 429
    :pswitch_32
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->savePsnSeatData()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_3

    .line 678
    :pswitch_33
    aget-object p1, v0, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    aget-object p2, v0, v4

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->controlDriverSeatStart(II)V

    goto/16 :goto_2

    .line 510
    :pswitch_34
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getCurrentSelectedRRHabit()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_3

    .line 444
    :pswitch_35
    aget-object p1, v0, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->restoreSelectPsnSeatPos(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_3

    .line 856
    :pswitch_36
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->cancelAllControlDrvLumbar()V

    goto/16 :goto_2

    .line 465
    :pswitch_37
    aget-object p1, v0, v1

    aget-object p2, v0, v4

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->saveRRSeatName(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 783
    :pswitch_38
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setTrdRowLtSeatFol(I)V

    goto/16 :goto_2

    .line 606
    :pswitch_39
    invoke-virtual {p0, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setRLSeatAllPositions(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 579
    :pswitch_3a
    aget-object p1, v0, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setDrvSeatHorPos(I)V

    goto/16 :goto_2

    .line 749
    :pswitch_3b
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setSecRowLtSeatZeroGrav(I)V

    goto/16 :goto_2

    .line 507
    :pswitch_3c
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getCurrentSelectedRLHabit()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_3

    .line 796
    :pswitch_3d
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getTrdRowLtSeatTiltPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_3

    .line 660
    :pswitch_3e
    aget-object p1, v0, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setRRSeatHeadVerPos(I)V

    goto/16 :goto_2

    .line 859
    :pswitch_3f
    aget-object p1, v0, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setDriverSeatAntiFatigueSw(Z)V

    goto/16 :goto_2

    .line 675
    :pswitch_40
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getRRSeatLegPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_3

    .line 456
    :pswitch_41
    aget-object p1, v0, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->restoreSelectRRSeatPos(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_3

    .line 755
    :pswitch_42
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getSecRowLtSeatZeroGrav()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_3

    .line 817
    :pswitch_43
    aget-object p1, v0, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setTrdRowRtSeatHeadVerticalPos(I)V

    goto/16 :goto_2

    .line 776
    :pswitch_44
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setTrdRowSeatStow(I)V

    goto/16 :goto_2

    .line 636
    :pswitch_45
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getRRSeatHorPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_3

    .line 726
    :pswitch_46
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->moveToExhibitionPos()V

    goto/16 :goto_2

    .line 480
    :pswitch_47
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->isPsnSeatEqualMemory()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_3

    .line 528
    :pswitch_48
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setRrLayFlat()V

    goto/16 :goto_2

    .line 814
    :pswitch_49
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getTrdRowRtSeatHeadVerticalPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_3

    .line 735
    :pswitch_4a
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setPsnLumbControlSw(Z)V

    goto/16 :goto_2

    .line 720
    :pswitch_4b
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->stopSeatControl()V

    goto/16 :goto_2

    .line 874
    :pswitch_4c
    aget-object p1, v0, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setTrdRowLtFoldInPause(Z)V

    goto/16 :goto_2

    .line 862
    :pswitch_4d
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getDriverSeatAntiFatigueSw()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_3

    .line 651
    :pswitch_4e
    aget-object p1, v0, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setRRSeatTiltPos(I)V

    goto/16 :goto_2

    .line 609
    :pswitch_4f
    invoke-virtual {p0, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setRRSeatAllPositions(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 663
    :pswitch_50
    aget-object p1, v0, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setRRSeatHeadHorPos(I)V

    goto/16 :goto_2

    .line 597
    :pswitch_51
    aget-object p1, v0, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setPsnSeatTiltPos(I)V

    goto/16 :goto_2

    .line 805
    :pswitch_52
    aget-object p1, v0, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setTrdRowRtSeatTiltPos(I)V

    goto/16 :goto_2

    .line 627
    :pswitch_53
    aget-object p1, v0, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setRLSeatHeadVerPos(I)V

    goto/16 :goto_2

    .line 471
    :pswitch_54
    aget-object p1, v0, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getRLSeatName(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    .line 615
    :pswitch_55
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->stopSecRowRightSeatMoving()V

    goto/16 :goto_2

    .line 835
    :pswitch_56
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getTrdRowLeftSeatTiltState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_3

    .line 537
    :pswitch_57
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getDSeatHorzPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_3

    .line 829
    :pswitch_58
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getTrdRowRTHeadStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_3

    .line 789
    :pswitch_59
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getTrdRowLtSeatFol()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_3

    .line 441
    :pswitch_5a
    aget-object p1, v0, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->saveSelectPsnSeatData(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_3

    .line 630
    :pswitch_5b
    aget-object p1, v0, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setRLSeatHeadHorPos(I)V

    goto/16 :goto_2

    .line 420
    :pswitch_5c
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->restoreDrvSeatPos()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_3

    .line 714
    :pswitch_5d
    aget-object p1, v0, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    aget-object p2, v0, v4

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->controlTrdRowMidSeatStart(II)V

    goto/16 :goto_2

    .line 525
    :pswitch_5e
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setRlRestore()V

    goto/16 :goto_2

    .line 657
    :pswitch_5f
    aget-object p1, v0, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setRRSeatLegVerPos(I)V

    goto/16 :goto_2

    .line 423
    :pswitch_60
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->saveDrvSeatData()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_3

    .line 426
    :pswitch_61
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->requestCreateNewSyncGroup()V

    goto/16 :goto_2

    .line 489
    :pswitch_62
    aget-object p1, v0, v1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->enterScene(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 621
    :pswitch_63
    aget-object p1, v0, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setRLSeatTiltPos(I)V

    goto/16 :goto_2

    .line 453
    :pswitch_64
    aget-object p1, v0, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->saveSelectRRSeatData(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_3

    .line 486
    :pswitch_65
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->isRRSeatEqualMemory()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_3

    .line 666
    :pswitch_66
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setRLSeatLegPos(I)V

    goto/16 :goto_2

    .line 708
    :pswitch_67
    aget-object p1, v0, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    aget-object p2, v0, v4

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->controlTrdRowRightSeatStart(II)V

    goto/16 :goto_2

    .line 618
    :pswitch_68
    aget-object p1, v0, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setRLSeatHorPos(I)V

    goto/16 :goto_2

    .line 811
    :pswitch_69
    aget-object p1, v0, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setTrdRowLtSeatHeadVerticalPos(I)V

    goto/16 :goto_2

    .line 687
    :pswitch_6a
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->controlPsnSeatEnd(I)V

    goto/16 :goto_2

    .line 552
    :pswitch_6b
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getPSeatTiltPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_3

    .line 808
    :pswitch_6c
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getTrdRowLtSeatHeadVerticalPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_3

    .line 603
    :pswitch_6d
    aget-object p1, v0, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setPsnSeatVerPos(I)V

    goto/16 :goto_2

    .line 826
    :pswitch_6e
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getTrdRowLTHeadStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_3

    .line 699
    :pswitch_6f
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->controlRearRightSeatEnd(I)V

    goto/16 :goto_2

    .line 850
    :pswitch_70
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->cancelShowDrvRestoreIcon()V

    goto/16 :goto_2

    .line 495
    :pswitch_71
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->comparePsnSeatPosition()V

    goto/16 :goto_2

    .line 582
    :pswitch_72
    aget-object p1, v0, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setDrvSeatTiltPos(I)V

    goto/16 :goto_2

    .line 492
    :pswitch_73
    aget-object p1, v0, v1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->exitScene(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 498
    :pswitch_74
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->compareRLSeatPosition()V

    goto/16 :goto_2

    .line 600
    :pswitch_75
    aget-object p1, v0, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setPsnSeatLegHorPos(I)V

    goto/16 :goto_2

    .line 468
    :pswitch_76
    aget-object p1, v0, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getPsnSeatName(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    .line 802
    :pswitch_77
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getTrdRowRtSeatTiltPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_3

    .line 519
    :pswitch_78
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getGroupName()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    .line 832
    :pswitch_79
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getTrdRowMidHeadStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_3

    .line 696
    :pswitch_7a
    aget-object p1, v0, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    aget-object p2, v0, v4

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->controlRearRightSeatStart(II)V

    goto/16 :goto_2

    .line 513
    :pswitch_7b
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->restorePsnSeatPos()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_3

    .line 540
    :pswitch_7c
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getDSeatVerPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_3

    .line 723
    :pswitch_7d
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->startVipSeatMode()V

    goto/16 :goto_2

    .line 594
    :pswitch_7e
    aget-object p1, v0, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setPsnSeatHorPos(I)V

    goto/16 :goto_2

    .line 450
    :pswitch_7f
    aget-object p1, v0, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->restoreSelectRLSeatPos(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_3

    .line 555
    :pswitch_80
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getPSeatVerPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_3

    .line 462
    :pswitch_81
    aget-object p1, v0, v1

    aget-object p2, v0, v4

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->saveRLSeatName(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 642
    :pswitch_82
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getRRSeatLegVerPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_3

    .line 745
    :pswitch_83
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setSecRowRtSeatEZ(I)V

    goto/16 :goto_2

    .line 690
    :pswitch_84
    aget-object p1, v0, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    aget-object p2, v0, v4

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->controlRearLeftSeatStart(II)V

    goto/16 :goto_2

    .line 612
    :pswitch_85
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->stopSecRowLeftSeatMoving()V

    goto/16 :goto_2

    .line 504
    :pswitch_86
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getCurrentSelectedPsnHabit()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_3

    .line 522
    :pswitch_87
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setRlLayFlat()V

    goto/16 :goto_2

    .line 877
    :pswitch_88
    aget-object p1, v0, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setTrdRowRtFoldInPause(Z)V

    goto/16 :goto_2

    .line 543
    :pswitch_89
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getDSeatLegPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_3

    .line 669
    :pswitch_8a
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getRLSeatLegPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_3

    .line 786
    :pswitch_8b
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setTrdRowRtSeatFol(I)V

    goto :goto_2

    .line 558
    :pswitch_8c
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getPSeatLegPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_3

    .line 477
    :pswitch_8d
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->isDrvSeatEqualMemory()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_3

    .line 564
    :pswitch_8e
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getRLSeatHorPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_3

    .line 838
    :pswitch_8f
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getTrdRowRightSeatTiltState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_3

    .line 624
    :pswitch_90
    aget-object p1, v0, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->setRLSeatLegVerPos(I)V

    goto :goto_2

    .line 639
    :pswitch_91
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getRRSeatLegHorPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_3

    .line 681
    :pswitch_92
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->controlDriverSeatEnd(I)V

    goto :goto_2

    .line 820
    :pswitch_93
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getTrdRowMidSeatHeadVerticalPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_3

    .line 702
    :pswitch_94
    aget-object p1, v0, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    aget-object p2, v0, v4

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->controlTrdRowLeftSeatStart(II)V

    :goto_2
    const/4 p1, 0x0

    goto :goto_3

    .line 732
    :pswitch_95
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getDrvLumbControlSw()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_3

    .line 483
    :pswitch_96
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->isRLSeatEqualMemory()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_3
    if-eqz p1, :cond_98

    .line 883
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_98
    const-string p1, ""

    :goto_4
    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x7f257374 -> :sswitch_96
        -0x7ec313ef -> :sswitch_95
        -0x7e2a817b -> :sswitch_94
        -0x7c559d45 -> :sswitch_93
        -0x7bd70b0f -> :sswitch_92
        -0x7b664744 -> :sswitch_91
        -0x786b79e2 -> :sswitch_90
        -0x77a91683 -> :sswitch_8f
        -0x756a3b62 -> :sswitch_8e
        -0x74bb11ee -> :sswitch_8d
        -0x733790db -> :sswitch_8c
        -0x70b5c4da -> :sswitch_8b
        -0x6f28c405 -> :sswitch_8a
        -0x6deff1e7 -> :sswitch_89
        -0x6c7354c8 -> :sswitch_88
        -0x6a1c369f -> :sswitch_87
        -0x69d89779 -> :sswitch_86
        -0x690a9e9b -> :sswitch_85
        -0x6665260b -> :sswitch_84
        -0x64b03db9 -> :sswitch_83
        -0x640f599c -> :sswitch_82
        -0x62e07039 -> :sswitch_81
        -0x62221a90 -> :sswitch_80
        -0x61b63775 -> :sswitch_7f
        -0x5ec26fa9 -> :sswitch_7e
        -0x5e639d3d -> :sswitch_7d
        -0x5cda7b9c -> :sswitch_7c
        -0x5c9a7e0e -> :sswitch_7b
        -0x5a6a265e -> :sswitch_7a
        -0x599e76d0 -> :sswitch_79
        -0x58fa010c -> :sswitch_78
        -0x57e8683a -> :sswitch_77
        -0x56d16b1b -> :sswitch_76
        -0x56049357 -> :sswitch_75
        -0x5564ea33 -> :sswitch_74
        -0x52528df2 -> :sswitch_73
        -0x509dc534 -> :sswitch_72
        -0x507566ec -> :sswitch_71
        -0x4f82c22a -> :sswitch_70
        -0x4aaf11e5 -> :sswitch_6f
        -0x49abe81c -> :sswitch_6e
        -0x476b8201 -> :sswitch_6d
        -0x476a1599 -> :sswitch_6c
        -0x455eef88 -> :sswitch_6b
        -0x41700b78 -> :sswitch_6a
        -0x3f520a25 -> :sswitch_69
        -0x3f214056 -> :sswitch_68
        -0x3b5038ee -> :sswitch_67
        -0x38dfc8f9 -> :sswitch_66
        -0x35ba403a -> :sswitch_65
        -0x35b694b8 -> :sswitch_64
        -0x34bdbb2a -> :sswitch_63
        -0x3178576c -> :sswitch_62
        -0x30d13d11 -> :sswitch_61
        -0x2e0b90a6 -> :sswitch_60
        -0x2d38c028 -> :sswitch_5f
        -0x2623074e -> :sswitch_5e
        -0x25d0c35a -> :sswitch_5d
        -0x2546d38b -> :sswitch_5c
        -0x227126d6 -> :sswitch_5b
        -0x2247775f -> :sswitch_5a
        -0x2126f854 -> :sswitch_59
        -0x1b8207e2 -> :sswitch_58
        -0x11e91c0e -> :sswitch_57
        -0x11a0b1a2 -> :sswitch_56
        -0xf2057fc -> :sswitch_55
        -0xbd55da0 -> :sswitch_54
        -0xb1a392e -> :sswitch_53
        -0x9a3a8c6 -> :sswitch_52
        -0x9427637 -> :sswitch_51
        -0x74ca950 -> :sswitch_50
        -0x70f4f50 -> :sswitch_4f
        -0x693daf0 -> :sswitch_4e
        -0x687673a -> :sswitch_4d
        -0x3857bce -> :sswitch_4c
        0x19e3a36 -> :sswitch_4b
        0x2fd04da -> :sswitch_4a
        0x42bab6d -> :sswitch_49
        0x52ad69b -> :sswitch_48
        0x636768f -> :sswitch_47
        0x7ca1f39 -> :sswitch_46
        0x7f1f524 -> :sswitch_45
        0x89b1b24 -> :sswitch_44
        0xc43b6e1 -> :sswitch_43
        0xd1da5a6 -> :sswitch_42
        0xd90d5c5 -> :sswitch_41
        0xe336c81 -> :sswitch_40
        0xfa87e3a -> :sswitch_3f
        0x100a4458 -> :sswitch_3e
        0x110570c0 -> :sswitch_3d
        0x1145249c -> :sswitch_3c
        0x11c1d7a0 -> :sswitch_3b
        0x128d32f4 -> :sswitch_3a
        0x14f57caa -> :sswitch_39
        0x15afa120 -> :sswitch_38
        0x16ba29cd -> :sswitch_37
        0x1a868f61 -> :sswitch_36
        0x1b306d8e -> :sswitch_35
        0x1b823856 -> :sswitch_34
        0x1e8782f8 -> :sswitch_33
        0x1ed2c97d -> :sswitch_32
        0x1ed7545e -> :sswitch_31
        0x1fe7778b -> :sswitch_30
        0x252fe72e -> :sswitch_2f
        0x2539811d -> :sswitch_2e
        0x270f5059 -> :sswitch_2d
        0x282f421f -> :sswitch_2c
        0x2875818d -> :sswitch_2b
        0x2c08b50d -> :sswitch_2a
        0x2e8c6285 -> :sswitch_29
        0x37a59405 -> :sswitch_28
        0x386bde62 -> :sswitch_27
        0x3966ff02 -> :sswitch_26
        0x398af7d8 -> :sswitch_25
        0x3992441e -> :sswitch_24
        0x3e3af030 -> :sswitch_23
        0x3f79f2de -> :sswitch_22
        0x40a4b318 -> :sswitch_21
        0x41ad3cd3 -> :sswitch_20
        0x420a870a -> :sswitch_1f
        0x447c678d -> :sswitch_1e
        0x484cc166 -> :sswitch_1d
        0x492405ec -> :sswitch_1c
        0x49b70698 -> :sswitch_1b
        0x4a6aa466 -> :sswitch_1a
        0x4e5663d8 -> :sswitch_19
        0x50aed142 -> :sswitch_18
        0x50bdecaa -> :sswitch_17
        0x50e931c6 -> :sswitch_16
        0x51ea6fbe -> :sswitch_15
        0x545c040d -> :sswitch_14
        0x54b6c1a4 -> :sswitch_13
        0x5873a1b2 -> :sswitch_12
        0x5b2cf8cf -> :sswitch_11
        0x5cf4915a -> :sswitch_10
        0x5e4d5004 -> :sswitch_f
        0x5f006fce -> :sswitch_e
        0x5f4a3034 -> :sswitch_d
        0x60c9ef53 -> :sswitch_c
        0x664804e0 -> :sswitch_b
        0x6653991d -> :sswitch_a
        0x6695be9c -> :sswitch_9
        0x6c0daf4c -> :sswitch_8
        0x6dc53c66 -> :sswitch_7
        0x70346744 -> :sswitch_6
        0x7302cdd9 -> :sswitch_5
        0x7ae8abe0 -> :sswitch_4
        0x7b0e9c5f -> :sswitch_3
        0x7bee6cd9 -> :sswitch_2
        0x7e93c5c7 -> :sswitch_1
        0x7f235ada -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public previewDrvSeatAntiFatigue()V
    .locals 1

    .line 2341
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->previewDrvSeatAntiFatigue()V

    return-void
.end method

.method public requestCreateNewSyncGroup()V
    .locals 1

    .line 1399
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->requestCreateNewSyncGroup()V

    return-void
.end method

.method public restoreDrvSeatPos()Z
    .locals 1

    .line 1383
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->restoreDrvSeatPos()Z

    move-result v0

    return v0
.end method

.method public restorePsnSeatPos()Z
    .locals 1

    .line 1424
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->restorePsnSeatPos()Z

    move-result v0

    return v0
.end method

.method public restoreSelectPsnSeatPos(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectId"
        }
    .end annotation

    .line 1486
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreSelectPsnSeatPos   selectId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->restorePsnSelectSeatPos(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public restoreSelectRLSeatPos(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectId"
        }
    .end annotation

    .line 1495
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreSelectRLSeatPos   selectId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->restoreRLSeatPos(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public restoreSelectRRSeatPos(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectId"
        }
    .end annotation

    .line 1504
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreSelectRRSeatPos   selectId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->restoreRRSeatPos(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public saveDrvSeatData()Z
    .locals 1

    .line 1391
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->memoryDrvSeatData()Z

    move-result v0

    return v0
.end method

.method public savePsnSeatData()Z
    .locals 1

    .line 1429
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->memoryPsnSeatData()Z

    move-result v0

    return v0
.end method

.method public savePsnSeatName(Ljava/lang/String;I)V
    .locals 1
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

    .line 1527
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->savePsnSeatName(Ljava/lang/String;I)V

    return-void
.end method

.method public saveRLSeatName(Ljava/lang/String;I)V
    .locals 1
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

    .line 1532
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->saveRLSeatName(Ljava/lang/String;I)V

    return-void
.end method

.method public saveRRSeatName(Ljava/lang/String;I)V
    .locals 1
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

    .line 1537
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->saveRRSeatName(Ljava/lang/String;I)V

    return-void
.end method

.method public saveSelectPsnSeatData(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectId"
        }
    .end annotation

    .line 1479
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveSelectPsnSeatData   selectId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->saveSelectPsnSeatData(I)Z

    move-result p1

    return p1
.end method

.method public saveSelectRLSeatData(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectId"
        }
    .end annotation

    .line 1513
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveSelectRLSeatData   selectId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->saveSelectRLSeatData(I)Z

    move-result p1

    return p1
.end method

.method public saveSelectRRSeatData(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectId"
        }
    .end annotation

    .line 1520
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveSelectRRSeatData   selectId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->saveSelectRRSeatData(I)Z

    move-result p1

    return p1
.end method

.method public selectPsnHabit(I)Z
    .locals 3
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->seat_psn_memory:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectId"
        }
    .end annotation

    .line 1435
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectPsnHabit   selectId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x64

    .line 1437
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/helper/ClickHelper;->isFastClick(J)Z

    move-result v0

    const-string v1, "seat_psn_memory"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getCurrentSelectedPsnHabit()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1438
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return v2

    .line 1441
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->restorePsnSelectSeatPos(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1442
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return v2

    :cond_1
    const/4 v0, 0x0

    .line 1444
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return v0
.end method

.method public selectRLHabit(I)Z
    .locals 3
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->seat_rl_memory:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectId"
        }
    .end annotation

    .line 1450
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectRLHabit   selectId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x64

    .line 1452
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/helper/ClickHelper;->isFastClick(J)Z

    move-result v0

    const-string v1, "seat_rl_memory"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getCurrentSelectedRLHabit()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1453
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return v2

    .line 1456
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->restoreRLSelectSeatPos(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1457
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return v2

    :cond_1
    const/4 v0, 0x0

    .line 1459
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return v0
.end method

.method public selectRRHabit(I)Z
    .locals 3
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->seat_rr_memory:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectId"
        }
    .end annotation

    .line 1465
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectRRHabit   selectId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x64

    .line 1467
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/helper/ClickHelper;->isFastClick(J)Z

    move-result v0

    const-string v1, "seat_rr_memory"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getCurrentSelectedRRHabit()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1468
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return v2

    .line 1471
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->restoreRRSelectSeatPos(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1472
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return v2

    :cond_1
    const/4 v0, 0x0

    .line 1474
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return v0
.end method

.method public setDSeatCushionPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1742
    sget-object v0, Lcom/xiaopeng/track/constant/BID;->seat_adjust_drv_slider:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {v0}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1743
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDSeatCushionPos(I)V

    return-void
.end method

.method public setDSeatLegPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1748
    sget-object v0, Lcom/xiaopeng/track/constant/BID;->seat_adjust_drv_slider:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {v0}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1749
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDSeatLegPos(I)V

    return-void
.end method

.method public setDSeatVerPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1736
    sget-object v0, Lcom/xiaopeng/track/constant/BID;->seat_adjust_drv_slider:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {v0}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1737
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDSeatVerPos(I)V

    return-void
.end method

.method public setDriverSeatAntiFatigueSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 2332
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDriverSeatAntiFatigueSw(Z)V

    return-void
.end method

.method public setDrvLumbControlSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2108
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDrvLumbControlSw(Z)V

    return-void
.end method

.method public setDrvSeatHorPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1724
    sget-object v0, Lcom/xiaopeng/track/constant/BID;->seat_adjust_drv_slider:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {v0}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1725
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDSeatHorzPos(I)V

    return-void
.end method

.method public setDrvSeatTiltPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1730
    sget-object v0, Lcom/xiaopeng/track/constant/BID;->seat_adjust_drv_slider:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {v0}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1731
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDSeatTiltPos(I)V

    return-void
.end method

.method public setPsnLumbControlSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2118
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPsnLumbControlSw(Z)V

    return-void
.end method

.method public setPsnSeatHorPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1754
    sget-object v0, Lcom/xiaopeng/track/constant/BID;->seat_adjust_psn_slider:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {v0}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1755
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPSeatHorzPos(I)V

    return-void
.end method

.method public setPsnSeatLegHorPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1766
    sget-object v0, Lcom/xiaopeng/track/constant/BID;->seat_adjust_psn_slider:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {v0}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1767
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPSeatLegPos(I)V

    return-void
.end method

.method public setPsnSeatTiltPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1760
    sget-object v0, Lcom/xiaopeng/track/constant/BID;->seat_adjust_psn_slider:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {v0}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1761
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPSeatTiltPos(I)V

    return-void
.end method

.method public setPsnSeatVerPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1772
    sget-object v0, Lcom/xiaopeng/track/constant/BID;->seat_adjust_psn_slider:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {v0}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1773
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPSeatVerPos(I)V

    return-void
.end method

.method public setRLSeatAllPositions(Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "posStr"
        }
    .end annotation

    const-string v0, ","

    .line 1778
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1779
    array-length v1, v0

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 1780
    iget-object v3, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 p1, 0x0

    aget-object p1, v0, p1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 p1, 0x1

    aget-object p1, v0, p1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 p1, 0x2

    aget-object p1, v0, p1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 p1, 0x3

    aget-object p1, v0, p1

    .line 1781
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 p1, 0x4

    aget-object p1, v0, p1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 p1, 0x5

    aget-object p1, v0, p1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 p1, 0x6

    aget-object p1, v0, p1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1780
    invoke-virtual/range {v3 .. v10}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatAllPositions(IIIIIII)V

    goto :goto_0

    .line 1783
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error  posStr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setRLSeatHeadHorPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1850
    sget-object v0, Lcom/xiaopeng/track/constant/BID;->seat_adjust_rl_slider:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {v0}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1851
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatHeadHorPos(I)V

    return-void
.end method

.method public setRLSeatHeadVerPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1839
    sget-object v0, Lcom/xiaopeng/track/constant/BID;->seat_adjust_rl_slider:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {v0}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1840
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatHeadVerPos(I)V

    return-void
.end method

.method public setRLSeatHorPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1816
    sget-object v0, Lcom/xiaopeng/track/constant/BID;->seat_adjust_rl_slider:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {v0}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1817
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatHorPos(I)V

    return-void
.end method

.method public setRLSeatLegHorPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1833
    sget-object v0, Lcom/xiaopeng/track/constant/BID;->seat_adjust_rl_slider:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {v0}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1834
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatLegHorPos(I)V

    return-void
.end method

.method public setRLSeatLegPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1934
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatLegPos(I)V

    return-void
.end method

.method public setRLSeatLegVerPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1827
    sget-object v0, Lcom/xiaopeng/track/constant/BID;->seat_adjust_rl_slider:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {v0}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1828
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatLegVerPos(I)V

    return-void
.end method

.method public setRLSeatTiltPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1810
    sget-object v0, Lcom/xiaopeng/track/constant/BID;->seat_adjust_rl_slider:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {v0}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1811
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatTiltPos(I)V

    return-void
.end method

.method public setRRSeatAllPositions(Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "posStr"
        }
    .end annotation

    const-string v0, ","

    .line 1789
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1790
    array-length v1, v0

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 1791
    iget-object v3, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 p1, 0x0

    aget-object p1, v0, p1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 p1, 0x1

    aget-object p1, v0, p1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 p1, 0x2

    aget-object p1, v0, p1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 p1, 0x3

    aget-object p1, v0, p1

    .line 1792
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 p1, 0x4

    aget-object p1, v0, p1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 p1, 0x5

    aget-object p1, v0, p1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 p1, 0x6

    aget-object p1, v0, p1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1791
    invoke-virtual/range {v3 .. v10}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatAllPositions(IIIIIII)V

    goto :goto_0

    .line 1794
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error  posStr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setRRSeatHeadHorPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1911
    sget-object v0, Lcom/xiaopeng/track/constant/BID;->seat_adjust_rr_slider:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {v0}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1912
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatHeadHorPos(I)V

    return-void
.end method

.method public setRRSeatHeadVerPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1900
    sget-object v0, Lcom/xiaopeng/track/constant/BID;->seat_adjust_rr_slider:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {v0}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1901
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatHeadVerPos(I)V

    return-void
.end method

.method public setRRSeatHorPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1877
    sget-object v0, Lcom/xiaopeng/track/constant/BID;->seat_adjust_rr_slider:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {v0}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1878
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatHorPos(I)V

    return-void
.end method

.method public setRRSeatLegHorPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1894
    sget-object v0, Lcom/xiaopeng/track/constant/BID;->seat_adjust_rr_slider:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {v0}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1895
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatLegHorPos(I)V

    return-void
.end method

.method public setRRSeatLegPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1950
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatLegPos(I)V

    return-void
.end method

.method public setRRSeatLegVerPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1888
    sget-object v0, Lcom/xiaopeng/track/constant/BID;->seat_adjust_rr_slider:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {v0}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1889
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatLegVerPos(I)V

    return-void
.end method

.method public setRRSeatTiltPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1871
    sget-object v0, Lcom/xiaopeng/track/constant/BID;->seat_adjust_rr_slider:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {v0}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1872
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatTiltPos(I)V

    return-void
.end method

.method public setRlLayFlat()V
    .locals 2

    .line 1595
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSpaceViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->getRlSeatStatus()Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->FlatMoving:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    if-ne v0, v1, :cond_0

    .line 1596
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSpaceViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->LayFlatPause:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setRlSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V

    goto :goto_0

    .line 1598
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSpaceViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->LayFlat:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setRlSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V

    :goto_0
    return-void
.end method

.method public setRlRestore()V
    .locals 2

    .line 1607
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSpaceViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->getRlSeatStatus()Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->RestoreMoving:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    if-ne v0, v1, :cond_0

    .line 1608
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSpaceViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->RestorePause:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setRlSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V

    goto :goto_0

    .line 1610
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSpaceViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->Restore:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setRlSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V

    :goto_0
    return-void
.end method

.method public setRrLayFlat()V
    .locals 2

    .line 1619
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSpaceViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->getRrSeatStatus()Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->FlatMoving:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    if-ne v0, v1, :cond_0

    .line 1620
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSpaceViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->LayFlatPause:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setRrSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V

    goto :goto_0

    .line 1622
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSpaceViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->LayFlat:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setRrSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V

    :goto_0
    return-void
.end method

.method public setRrRestore()V
    .locals 2

    .line 1631
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSpaceViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->getRrSeatStatus()Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->RestoreMoving:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    if-ne v0, v1, :cond_0

    .line 1632
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSpaceViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->RestorePause:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setRrSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V

    goto :goto_0

    .line 1634
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSpaceViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->Restore:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setRrSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V

    :goto_0
    return-void
.end method

.method public setSecRowLtSeatEZ(I)V
    .locals 3
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->seat_easy_left:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eZStatus"
        }
    .end annotation

    .line 2130
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSecRowLtSeatEZ   eZStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 2132
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setSecRowLtSeatEZ(I)V

    .line 2134
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "seat_easy_left"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSecRowLtSeatZeroGrav(I)V
    .locals 3
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->seat_zero_left:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zeroGravStatus"
        }
    .end annotation

    .line 2148
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSecRowLtSeatZeroGrav   zeroGravStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 2150
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setSecRowLtSeatZeroGrav(I)V

    .line 2152
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "seat_zero_left"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSecRowRtSeatEZ(I)V
    .locals 3
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->seat_easy_right:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eZStatus"
        }
    .end annotation

    .line 2139
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSecRowRtSeatEZ    eZStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 2141
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setSecRowRtSeatEZ(I)V

    .line 2143
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "seat_easy_right"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSecRowRtSeatZeroGrav(I)V
    .locals 3
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->seat_zero_right:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zeroGravStatus"
        }
    .end annotation

    .line 2157
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSecRowRtSeatZeroGrav    zeroGravStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 2159
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setSecRowRtSeatZeroGrav(I)V

    .line 2161
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "seat_zero_right"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setTrdRowLtFoldInPause(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isPause"
        }
    .end annotation

    .line 2351
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowLtFoldStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setTrdRowLtSeatFol(I)V
    .locals 3
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->seat_fold_left:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trdRowLtSeatFolStatus"
        }
    .end annotation

    .line 2232
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSecRowLtSeatEZ    trdRowLtSeatFolStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 2234
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowLtSeatFol(I)V

    .line 2236
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "seat_fold_left"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setTrdRowLtSeatHeadVerticalPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parseInt"
        }
    .end annotation

    .line 2286
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowLtSeatHeadVerticalPos(I)V

    return-void
.end method

.method public setTrdRowLtSeatTiltPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parseInt"
        }
    .end annotation

    .line 2274
    sget-object v0, Lcom/xiaopeng/track/constant/BID;->seat_adjust_tl_slider:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {v0}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2275
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowLtSeatTiltPos(I)V

    return-void
.end method

.method public setTrdRowMidSeatHeadVerticalPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parseInt"
        }
    .end annotation

    .line 2296
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowMidSeatHeadVerticalPos(I)V

    return-void
.end method

.method public setTrdRowRtFoldInPause(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isPause"
        }
    .end annotation

    .line 2356
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowRtFoldStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setTrdRowRtSeatFol(I)V
    .locals 3
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->seat_fold_right:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trdRowRtSeatFolStatus"
        }
    .end annotation

    .line 2241
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTrdRowRtSeatFol  trdRowRtSeatFolStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 2243
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowRtSeatFol(I)V

    .line 2245
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "seat_fold_right"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setTrdRowRtSeatHeadVerticalPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parseInt"
        }
    .end annotation

    .line 2291
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowRtSeatHeadVerticalPos(I)V

    return-void
.end method

.method public setTrdRowRtSeatTiltPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parseInt"
        }
    .end annotation

    .line 2280
    sget-object v0, Lcom/xiaopeng/track/constant/BID;->seat_adjust_tr_slider:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {v0}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2281
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowRtSeatTiltPos(I)V

    return-void
.end method

.method public setTrdRowSeatStow(I)V
    .locals 3
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->seat_stow:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stowStatus"
        }
    .end annotation

    .line 2223
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTrdRowSeatStow     stowStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 2225
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowSeatStow(I)V

    .line 2227
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "seat_stow"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setTrdRowSeatStowInPause(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isPause"
        }
    .end annotation

    .line 2361
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowStowStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public showDrvLumberControlPanel()V
    .locals 3

    .line 2301
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaopeng/carcontrol/ServerApp;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/carcontrol/CarControlService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_DRV_LUMBER_PANEL"

    .line 2302
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2303
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/App;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public startVipSeatMode()V
    .locals 3

    .line 2092
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->VipSeat:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->startScenario(ZLcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;)V

    return-void
.end method

.method public stopSeatControl()V
    .locals 1

    .line 2084
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->stopSeatControl()V

    return-void
.end method

.method public stopSecRowLeftSeatMoving()V
    .locals 1

    .line 1800
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->stopSecRowLeftSeatMoving()V

    return-void
.end method

.method public stopSecRowRightSeatMoving()V
    .locals 1

    .line 1805
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->stopSecRowRightSeatMoving()V

    return-void
.end method
