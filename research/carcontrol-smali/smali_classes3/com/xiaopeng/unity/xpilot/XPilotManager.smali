.class public Lcom/xiaopeng/unity/xpilot/XPilotManager;
.super Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;
.source "XPilotManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/xpilot/IXPilotManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/unity/xpilot/XPilotManager$SingleHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager<",
        "Lcom/xiaopeng/unity/xpilot/XPilotListener;",
        ">;",
        "Lcom/xiaopeng/unity/xpilot/IXPilotManager;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XPilotManager"


# instance fields
.field private mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

.field private mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

.field private final mIsSupportXpuNedc:Z

.field private mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

.field private mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

.field private mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;-><init>()V

    const-string v0, "isSupportXpuNedc"

    .line 66
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mIsSupportXpuNedc:Z

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private getXpuBrakeFunctionMode()I
    .locals 1

    .line 2402
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getXpuBrakeFunctionMode()I

    move-result v0

    return v0
.end method

.method private getXpuNedcState()Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;
    .locals 2

    .line 2228
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;->Off:Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

    .line 2229
    iget-boolean v1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mIsSupportXpuNedc:Z

    if-eqz v1, :cond_0

    .line 2230
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getNedcState()Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static get_instance()Lcom/xiaopeng/unity/xpilot/XPilotManager;
    .locals 1

    .line 70
    invoke-static {}, Lcom/xiaopeng/unity/xpilot/XPilotManager$SingleHolder;->access$000()Lcom/xiaopeng/unity/xpilot/XPilotManager;

    move-result-object v0

    return-object v0
.end method

.method private isNedcOn()Z
    .locals 1

    .line 1437
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->isXpuNedcActivated()Z

    move-result v0

    return v0
.end method

.method private isNgpMode()Z
    .locals 1

    .line 2406
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->isNgpMode()Z

    move-result v0

    return v0
.end method

.method private isParkingMode()Z
    .locals 1

    .line 2410
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->isParkingMode()Z

    move-result v0

    return v0
.end method

.method private isTtmOn()Z
    .locals 2

    .line 1441
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTrailerHitchStatus()Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;->Open:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$cDqBJMpHACvkd91tdhZiOJggbls(Lcom/xiaopeng/unity/xpilot/XPilotManager;Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->onTtmModeChanged(Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;)V

    return-void
.end method

.method public static synthetic lambda$n10-PsE3Og1GYDCGE3clqT8EwTA(Lcom/xiaopeng/unity/xpilot/XPilotManager;Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->onNedcStateChanged(Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;)V

    return-void
.end method

.method private onNedcStateChanged(Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nedcState"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2271
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;->ordinal()I

    move-result v0

    .line 2272
    iget-object v1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v1, :cond_0

    .line 2273
    iget-object v1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    invoke-interface {v1, v0}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onNedcStateChange(I)V

    .line 2274
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTrailerHitchStatus()Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->onXpilotErrorChanged(Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;)V

    :cond_0
    return-void
.end method

.method private onTtmModeChanged(Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ttmmode"
        }
    .end annotation

    .line 2280
    sget-object v0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTtmModeChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2281
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 2282
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getNedcState()Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->onXpilotErrorChanged(Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;)V

    :cond_0
    return-void
.end method

.method private onXpilotErrorChanged(Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nedcState",
            "ttmmode"
        }
    .end annotation

    .line 2287
    sget-object v0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onXpilotErrorChanged nedcState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " ttmmode: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2288
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz p1, :cond_5

    .line 2289
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isNedcOn()Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "isSupportXNgp"

    if-eqz p1, :cond_1

    .line 2291
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onLccChanged(I)V

    .line 2292
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onAlcChanged(I)V

    .line 2293
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onCrossBarrierChanged(I)V

    .line 2294
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onTrafficLightChanged(I)V

    .line 2295
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onNgpChanged(I)V

    .line 2296
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2297
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    invoke-interface {p1, v0}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onNgpTipsModeChanged(I)V

    .line 2299
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onNgpVoiceChangeLaneChanged(I)V

    .line 2300
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onNgpTruckOffsetChanged(I)V

    .line 2301
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onNgpFreeNgpChanged(I)V

    .line 2302
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onNgpAflChanged(I)V

    .line 2303
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onNgpActivateModeChanged(I)V

    .line 2306
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onFcwChanged(I)V

    .line 2307
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onLdwChanged(I)V

    .line 2308
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    iget-object p2, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getBsdState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onBsdChanged(I)V

    .line 2309
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    iget-object p2, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getDowState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onDowChanged(I)V

    .line 2310
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    iget-object p2, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getRcwState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onRcwChanged(I)V

    .line 2311
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    iget-object p2, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getRctaState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onRctaChanged(I)V

    .line 2312
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onRaebChanged(I)V

    .line 2313
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onSsaChanged(I)V

    .line 2314
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onXpuDDAWStatusChanged(I)V

    .line 2315
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onTiredDistractionStatusChanged(I)V

    .line 2316
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onTiredDistractionStatusManualChanged(I)V

    .line 2319
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onAutoParkChanged(I)V

    .line 2320
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onWogChanged(I)V

    .line 2321
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onMemParkChanged(I)V

    .line 2322
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onKeyParkChanged(I)V

    .line 2323
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onEnhancedParkChanged(I)V

    .line 2324
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onImageRetentionChanged(I)V

    goto/16 :goto_0

    .line 2325
    :cond_1
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;->Open:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    if-ne p2, p1, :cond_3

    .line 2327
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onLccChanged(I)V

    .line 2328
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onAlcChanged(I)V

    .line 2329
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onCrossBarrierChanged(I)V

    .line 2330
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onTrafficLightChanged(I)V

    .line 2331
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onNgpChanged(I)V

    .line 2332
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 2333
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    invoke-interface {p1, v0}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onNgpTipsModeChanged(I)V

    .line 2335
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onNgpVoiceChangeLaneChanged(I)V

    .line 2336
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onNgpTruckOffsetChanged(I)V

    .line 2337
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onNgpFreeNgpChanged(I)V

    .line 2338
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onNgpAflChanged(I)V

    .line 2339
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onNgpActivateModeChanged(I)V

    .line 2342
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    iget-object p2, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getFcwState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onFcwChanged(I)V

    .line 2343
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    iget-object p2, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getLdwState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onLdwChanged(I)V

    .line 2344
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onBsdChanged(I)V

    .line 2345
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onDowChanged(I)V

    .line 2346
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onRcwChanged(I)V

    .line 2347
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onRctaChanged(I)V

    .line 2348
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onRaebChanged(I)V

    .line 2349
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    iget-object p2, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getSsaSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onSsaChanged(I)V

    .line 2350
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    iget-object p2, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getDDAWStatus()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onXpuDDAWStatusChanged(I)V

    .line 2351
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    iget-object p2, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getDsmTiredDistractionSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onTiredDistractionStatusChanged(I)V

    .line 2352
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    iget-object p2, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getDsmTiredDistractionManualStatus()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onTiredDistractionStatusManualChanged(I)V

    .line 2355
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onAutoParkChanged(I)V

    .line 2356
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onWogChanged(I)V

    .line 2357
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onMemParkChanged(I)V

    .line 2358
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onKeyParkChanged(I)V

    .line 2359
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onEnhancedParkChanged(I)V

    .line 2360
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    iget-object p2, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getImageRetentionState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onImageRetentionChanged(I)V

    goto/16 :goto_0

    .line 2363
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    iget-object p2, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getLccState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onLccChanged(I)V

    .line 2364
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    iget-object p2, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getAlcState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onAlcChanged(I)V

    .line 2365
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    iget-object p2, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getLccCrossBarriersSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onCrossBarrierChanged(I)V

    .line 2366
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    iget-object p2, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getLccTrafficLightSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onTrafficLightChanged(I)V

    .line 2367
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    iget-object p2, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getNgpState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onNgpChanged(I)V

    .line 2368
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 2369
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    iget-object p2, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getNgpTipsMode()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onNgpTipsModeChanged(I)V

    .line 2371
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    iget-object p2, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getNgpVoiceChangeLane()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onNgpVoiceChangeLaneChanged(I)V

    .line 2372
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    iget-object p2, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getNgpTruckOffsetSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onNgpTruckOffsetChanged(I)V

    .line 2373
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    iget-object p2, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getNgpFreeNgpState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onNgpFreeNgpChanged(I)V

    .line 2374
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    iget-object p2, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getNgpAflState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onNgpAflChanged(I)V

    .line 2375
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    iget-object p2, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getNgpActivateModeState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onNgpActivateModeChanged(I)V

    .line 2378
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    iget-object p2, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getFcwState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onFcwChanged(I)V

    .line 2379
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    iget-object p2, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getLdwState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onLdwChanged(I)V

    .line 2380
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    iget-object p2, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getBsdState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onBsdChanged(I)V

    .line 2381
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    iget-object p2, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getDowState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onDowChanged(I)V

    .line 2382
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    iget-object p2, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getRcwState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onRcwChanged(I)V

    .line 2383
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    iget-object p2, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getRctaState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onRctaChanged(I)V

    .line 2384
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    iget-object p2, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getRaebState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onRaebChanged(I)V

    .line 2385
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    iget-object p2, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getSsaSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onSsaChanged(I)V

    .line 2386
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    iget-object p2, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getDDAWStatus()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onXpuDDAWStatusChanged(I)V

    .line 2387
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    iget-object p2, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getDsmTiredDistractionSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onTiredDistractionStatusChanged(I)V

    .line 2388
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    iget-object p2, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getDsmTiredDistractionManualStatus()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onTiredDistractionStatusManualChanged(I)V

    .line 2391
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    iget-object p2, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getAutoParkSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onAutoParkChanged(I)V

    .line 2392
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    iget-object p2, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getWogState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onWogChanged(I)V

    .line 2393
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    iget-object p2, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getMemoryParkSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onMemParkChanged(I)V

    .line 2394
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    iget-object p2, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getKeyParkSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onKeyParkChanged(I)V

    .line 2395
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    iget-object p2, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getPhoneParkSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onEnhancedParkChanged(I)V

    .line 2396
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    iget-object p2, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getImageRetentionState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onImageRetentionChanged(I)V

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public checkAllSafeExamResult()V
    .locals 1

    .line 2144
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->checkAllSafeExamResult()V

    return-void
.end method

.method public getAlcState()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_alc:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 1813
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isNedcOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1814
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0

    .line 1816
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isTtmOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1817
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0

    .line 1819
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getAlcState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0
.end method

.method public getAutoParkSafeExamResult()Z
    .locals 1

    .line 2109
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getApaSafeExamResult()Z

    move-result v0

    return v0
.end method

.method public getAutoParkState()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_auto_park:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 1679
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isNedcOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1680
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0

    .line 1682
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isTtmOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1683
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0

    .line 1685
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getAutoParkSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0
.end method

.method public getBsdState()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_bsd:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 1465
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isTtmOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1466
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0

    .line 1468
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getBsdState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0
.end method

.method public getCrossBarrierState()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_cross_barrier:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 1849
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isNedcOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1850
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0

    .line 1852
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isTtmOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1853
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0

    .line 1855
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getLccCrossBarriersSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0
.end method

.method public getDDAWStatus()I
    .locals 1

    .line 1386
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getDDAWStatus()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0
.end method

.method public getDomesticIslaMode()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_isla:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 1662
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getSimpleSasMode()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;->ordinal()I

    move-result v0

    return v0
.end method

.method public getDowState()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_dow:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 1480
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isTtmOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1481
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0

    .line 1483
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getDowState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0
.end method

.method public getDrivingSafeExamResult(Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lidar"
        }
    .end annotation

    .line 2119
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getDrivingSafeExamResult(Z)Z

    move-result p1

    return p1
.end method

.method public getDsmTiredDistractionManualSw()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->about_sap_tired_remind_manual:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 1372
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isNedcOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1373
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0

    .line 1375
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getDsmTiredDistractionManualStatus()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0
.end method

.method public getDsmTiredDistractionSensitivity()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->about_sap_tired_remind_sensitivity:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 1397
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getDsmTiredDistractionSensitivity()I

    move-result v0

    return v0
.end method

.method public getDsmTiredDistractionSw()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->about_sap_tired_remind:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 1357
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isNedcOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1358
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0

    .line 1360
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getDsmTiredDistractionSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0
.end method

.method public getEnhancedParkState()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_enhanced_park:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 1746
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isNedcOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1747
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0

    .line 1749
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isTtmOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1750
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0

    .line 1752
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getPhoneParkSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0
.end method

.method public getFcwSensitivity()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_fcw_sen:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 1453
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getFcwSensitivity()Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;->ordinal()I

    move-result v0

    return v0
.end method

.method public getFcwState()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_fcw:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 1415
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isNedcOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1416
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0

    .line 1418
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getFcwState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0
.end method

.method public getFreeNgpSafeExamResult()Z
    .locals 1

    .line 2139
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getFreeNgpSafeExamResult()Z

    move-result v0

    return v0
.end method

.method public getHintMode()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_hint_mode:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 1777
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getParkSoundEffect()I

    move-result v0

    return v0
.end method

.method public getImageRetentionState()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_image_retention:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 1764
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isNedcOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1765
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0

    .line 1767
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getImageRetentionState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0
.end method

.method public getIslaConfirmMode()I
    .locals 2

    .line 2088
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getSimpleSasMode()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;

    move-result-object v0

    .line 2089
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;->SLA:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    :goto_0
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0
.end method

.method public getKeyParkState()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_key_park:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 1727
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isNedcOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1728
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0

    .line 1730
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isTtmOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1731
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0

    .line 1733
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getKeyParkSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0
.end method

.method public getLccSafeExamResult()Z
    .locals 1

    .line 2114
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getLccSafeExamResult()Z

    move-result v0

    return v0
.end method

.method public getLccState()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_lcc:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 1794
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isNedcOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1795
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0

    .line 1797
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isTtmOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1798
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0

    .line 1800
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getLccState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0
.end method

.method public getLdwState()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_ldw:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 1430
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isNedcOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1431
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0

    .line 1433
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getLdwState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0
.end method

.method public getLssSensitivity()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_lss_sen:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 1636
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getLssSensitivity()I

    move-result v0

    return v0
.end method

.method public getLssState()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_lss:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 1570
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getLssMode()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;->ordinal()I

    move-result v0

    return v0
.end method

.method public getMapUserExperiencePlanState()Z
    .locals 1

    .line 2249
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getMapUserExperiencePlanState()Z

    move-result v0

    return v0
.end method

.method public getMemParkSafeExamResultV2()Z
    .locals 1

    .line 2134
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getMemParkSafeExamResultV2()Z

    move-result v0

    return v0
.end method

.method public getMemParkState()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_mem_park:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 1715
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isNedcOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1716
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0

    .line 1718
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isTtmOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1719
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0

    .line 1721
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getMemoryParkSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0
.end method

.method public getNedcState()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_nedc:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 2215
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getXpuNedcState()Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;->ordinal()I

    move-result v0

    return v0
.end method

.method public getNgpActivateModeState()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_ngp_activate_mode:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 1879
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isNedcOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1880
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0

    .line 1882
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isTtmOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1883
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0

    .line 1885
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getNgpActivateModeState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0
.end method

.method public getNgpAflFunctionVisibility()Z
    .locals 1

    .line 1953
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getNgpAflFunctionVisibility()Z

    move-result v0

    return v0
.end method

.method public getNgpAflState()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_ngp_afl:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 1936
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isNedcOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1937
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0

    .line 1939
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isTtmOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1940
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0

    .line 1942
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getNgpAflState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0
.end method

.method public getNgpCustomPreferenMode()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_ngp_custom_prefern:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 2062
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getNgpPreferLaneCfg()I

    move-result v0

    return v0
.end method

.method public getNgpCustomSpeedKph()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_ngp_custom_speed_kph:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 2023
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getNgpCustomSpeedKph()I

    move-result v0

    return v0
.end method

.method public getNgpCustomSpeedMode()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_ngp_custom_speed_mode:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 2011
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getNgpCustomSpeedMode()I

    move-result v0

    return v0
.end method

.method public getNgpCustomSpeedPercent()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_ngp_custom_speed_percent:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 2035
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getNgpCustomSpeedPercent()I

    move-result v0

    return v0
.end method

.method public getNgpFreeNgpState()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_ngp_fngp:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 1867
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isNedcOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1868
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0

    .line 1870
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isTtmOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1871
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0

    .line 1873
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getNgpFreeNgpState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0
.end method

.method public getNgpNewAflState()Z
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_ngp_new_afl:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 1958
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getNgpNewAflState()Z

    move-result v0

    return v0
.end method

.method public getNgpOvertakeMode()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_ngp_overtake_mode:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 1988
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getNgpOvertakeMode()I

    move-result v0

    return v0
.end method

.method public getNgpRemindMode()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_ngp_remind_mode:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 1999
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getNgpRemindMode()I

    move-result v0

    return v0
.end method

.method public getNgpSafeExamResultV2(Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lidar"
        }
    .end annotation

    .line 2129
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getNgpSafeExamResultV2(Z)Z

    move-result p1

    return p1
.end method

.method public getNgpState()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_ngp:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 1924
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isNedcOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1925
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0

    .line 1927
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isTtmOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1928
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0

    .line 1930
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getNgpState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0
.end method

.method public getNgpTipsMode()I
    .locals 2
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_ngp_tips_mode:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    const-string v0, "isSupportXNgp"

    .line 1904
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1905
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isNedcOn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1908
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isTtmOn()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 1912
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getNgpTipsMode()I

    move-result v0

    return v0
.end method

.method public getNgpTruckOffsetState()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_ngp_truck_offset:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 2047
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isNedcOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2048
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0

    .line 2050
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getNgpTruckOffsetSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0
.end method

.method public getNgpVoiceChangeLane()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_ngp_voice_change_lane:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 1970
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isNedcOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1971
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0

    .line 1973
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isTtmOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1974
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0

    .line 1976
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getNgpVoiceChangeLane()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0
.end method

.method public getOverseasElkState()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_overseas_elk:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 1624
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getOverseasElkMode()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasElkMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasElkMode;->ordinal()I

    move-result v0

    return v0
.end method

.method public getOverseasIslaMode()I
    .locals 1

    .line 2099
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getOverseasIslaMode()I

    move-result v0

    return v0
.end method

.method public getOverseasLkaState()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_overseas_lka:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 1597
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getOverseasLkaMode()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasLkaMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasLkaMode;->ordinal()I

    move-result v0

    return v0
.end method

.method public getParkingSafeExamResult(Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lidar"
        }
    .end annotation

    .line 2124
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getParkingSafeExamResult(Z)Z

    move-result p1

    return p1
.end method

.method public getRaebState()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_raeb:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 1495
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isTtmOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1496
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0

    .line 1498
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getRaebState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0
.end method

.method public getRctaState()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_rcta:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 1525
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isTtmOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1526
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0

    .line 1528
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getRctaState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0
.end method

.method public getRcwState()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_rcw:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 1510
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isTtmOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1511
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0

    .line 1513
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getRcwState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0
.end method

.method public getSoundSw()I
    .locals 1

    .line 2072
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getSoundSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0
.end method

.method public getSsaSw()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_ssa:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 1540
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isNedcOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1541
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0

    .line 1543
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getSsaSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0
.end method

.method public getStudyUrl(J)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taskId"
        }
    .end annotation

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 2170
    invoke-static {}, Lcom/xiaopeng/carcontrol/util/SafeExamUtils;->getNgpQrStudyUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/16 v0, 0x2

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 2173
    invoke-static {}, Lcom/xiaopeng/carcontrol/util/SafeExamUtils;->getLccQrStudyUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-wide/16 v0, 0x6

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 2176
    invoke-static {}, Lcom/xiaopeng/carcontrol/util/SafeExamUtils;->getCNGPQrStudyUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-wide/16 v0, 0x9

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 2179
    invoke-static {}, Lcom/xiaopeng/carcontrol/util/SafeExamUtils;->getXNGPQrStudyUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const-wide/16 v0, 0x3

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    .line 2182
    invoke-static {}, Lcom/xiaopeng/carcontrol/util/SafeExamUtils;->getMemParkQrStudyUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const-wide/16 v0, 0x4

    cmp-long v0, p1, v0

    if-nez v0, :cond_5

    .line 2185
    invoke-static {}, Lcom/xiaopeng/carcontrol/util/SafeExamUtils;->getAutoParkQrStudyUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    const-wide/16 v0, 0xc

    cmp-long v0, p1, v0

    if-nez v0, :cond_6

    .line 2188
    invoke-static {}, Lcom/xiaopeng/carcontrol/util/SafeExamUtils;->getDrivingQrStudyUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    const-wide/16 v0, 0xd

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    .line 2191
    invoke-static {}, Lcom/xiaopeng/carcontrol/util/SafeExamUtils;->getParkingQrStudyUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    const-wide/16 v0, 0xa

    cmp-long v0, p1, v0

    if-nez v0, :cond_8

    .line 2194
    invoke-static {}, Lcom/xiaopeng/carcontrol/util/SafeExamUtils;->getDrivingWithLidarQrStudyUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_8
    const-wide/16 v0, 0xb

    cmp-long p1, p1, v0

    if-nez p1, :cond_9

    .line 2197
    invoke-static {}, Lcom/xiaopeng/carcontrol/util/SafeExamUtils;->getParkingWithLidarQrStudyUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTrafficLightState()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_traffic_light:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 1831
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isNedcOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1832
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0

    .line 1834
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isTtmOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1835
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0

    .line 1837
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getLccTrafficLightSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0
.end method

.method public getVoiceSw()I
    .locals 1

    .line 2080
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getVoiceSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0
.end method

.method public getWogState()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_wog:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 1697
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isNedcOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1698
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0

    .line 1700
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isTtmOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1701
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0

    .line 1703
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getWogState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    return v0
.end method

.method public getXpilotUserExperiencePlanState()Z
    .locals 1

    .line 2241
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getXpilotUserExperiencePlanState()Z

    move-result v0

    return v0
.end method

.method public getXpilotUserExperienceTitle()Ljava/lang/String;
    .locals 1

    .line 2253
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getXpilotUserExperienceTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXpuXpilotState()I
    .locals 1

    .line 1667
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getXpuXpilotState()I

    move-result v0

    return v0
.end method

.method public initInternal()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    if-nez v0, :cond_0

    .line 76
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    if-nez v0, :cond_1

    .line 79
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/xpu/IXpuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    if-nez v0, :cond_2

    .line 82
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    if-nez v0, :cond_3

    .line 85
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/account/IAccountViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    .line 87
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    if-nez v0, :cond_4

    .line 88
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/IChassisViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    .line 90
    :cond_4
    new-instance v0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->set_listener(Lcom/xiaopeng/unity/carcontrol/base/INapaListener;)V

    return-void
.end method

.method public isCameraOverTemp()Z
    .locals 1

    .line 2209
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->isCameraOverTemp()Z

    move-result v0

    return v0
.end method

.method public isPGear()Z
    .locals 2

    .line 2204
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getGearLevelValue()Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;->P:Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$observeData$0$XPilotManager(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "scuResponse"
        }
    .end annotation

    .line 392
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p1

    .line 393
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_1

    .line 394
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isNedcOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onFcwChanged(I)V

    goto :goto_0

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onFcwChanged(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$observeData$1$XPilotManager(Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "sensitivity"
        }
    .end annotation

    .line 403
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;->ordinal()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onFcwSenChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$10$XPilotManager(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasElkMode;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "elkResponse"
        }
    .end annotation

    .line 502
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasElkMode;->ordinal()I

    move-result p1

    .line 503
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onOverseasElkModeChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$11$XPilotManager(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "lssResponse"
        }
    .end annotation

    .line 509
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;->ordinal()I

    move-result p1

    .line 510
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onLssModeChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$12$XPilotManager(Lcom/xiaopeng/carcontrol/viewmodel/xpu/LssSensitivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "lssSensitivity"
        }
    .end annotation

    .line 516
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/LssSensitivity;->ordinal()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onLssSenChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$13$XPilotManager(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "scuIslaMode"
        }
    .end annotation

    .line 526
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;->ordinal()I

    move-result p1

    .line 527
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onDomesticIslaModeChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$14$XPilotManager(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "aInt"
        }
    .end annotation

    .line 534
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_1

    .line 535
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;->SLA:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;

    if-ne p1, v1, :cond_0

    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    :goto_0
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onIslaConfirmModeChanged(I)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$15$XPilotManager(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "scuIslaMode"
        }
    .end annotation

    .line 542
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;->ordinal()I

    move-result p1

    .line 543
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onDomesticIslaModeChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$16$XPilotManager(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enable"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 550
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_1

    .line 551
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isNedcOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onTiredDistractionStatusChanged(I)V

    goto :goto_0

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onTiredDistractionStatusChanged(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$observeData$17$XPilotManager(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    .line 560
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_1

    .line 561
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isNedcOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onTiredDistractionStatusManualChanged(I)V

    goto :goto_0

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onTiredDistractionStatusManualChanged(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$observeData$18$XPilotManager(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "status"
        }
    .end annotation

    .line 571
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_1

    .line 572
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isNedcOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onXpuDDAWStatusChanged(I)V

    goto :goto_0

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onXpuDDAWStatusChanged(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$observeData$19$XPilotManager(Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmSensitivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "state"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 581
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmSensitivity;->ordinal()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onTiredDistractionSensitivityChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$2$XPilotManager(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "scuResponse"
        }
    .end annotation

    .line 410
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p1

    .line 411
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_1

    .line 412
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isNedcOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onLdwChanged(I)V

    goto :goto_0

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onLdwChanged(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$observeData$20$XPilotManager(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "scuResponse"
        }
    .end annotation

    .line 590
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p1

    .line 591
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_2

    .line 592
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isNedcOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onAutoParkChanged(I)V

    goto :goto_0

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTrailerHitchStatus()Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;->Open:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    if-ne v0, v1, :cond_1

    .line 595
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onAutoParkChanged(I)V

    goto :goto_0

    .line 597
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onAutoParkChanged(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$observeData$21$XPilotManager(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "state"
        }
    .end annotation

    .line 602
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_2

    .line 603
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isNedcOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onWogChanged(I)V

    goto :goto_0

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTrailerHitchStatus()Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;->Open:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    if-ne v0, v1, :cond_1

    .line 606
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onWogChanged(I)V

    goto :goto_0

    .line 608
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onWogChanged(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$observeData$22$XPilotManager(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "keyParkResponse"
        }
    .end annotation

    .line 615
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p1

    .line 616
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_2

    .line 617
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isNedcOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onKeyParkChanged(I)V

    goto :goto_0

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTrailerHitchStatus()Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;->Open:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    if-ne v0, v1, :cond_1

    .line 620
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onKeyParkChanged(I)V

    goto :goto_0

    .line 622
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onKeyParkChanged(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$observeData$23$XPilotManager(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "phoneParkResponse"
        }
    .end annotation

    .line 628
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p1

    .line 629
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_2

    .line 630
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isNedcOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onEnhancedParkChanged(I)V

    goto :goto_0

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTrailerHitchStatus()Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;->Open:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    if-ne v0, v1, :cond_1

    .line 633
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onEnhancedParkChanged(I)V

    goto :goto_0

    .line 635
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onEnhancedParkChanged(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$observeData$24$XPilotManager(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "vpaResponse"
        }
    .end annotation

    .line 643
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p1

    .line 644
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_2

    .line 645
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isNedcOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onMemParkChanged(I)V

    goto :goto_0

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTrailerHitchStatus()Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;->Open:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    if-ne v0, v1, :cond_1

    .line 648
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onMemParkChanged(I)V

    goto :goto_0

    .line 650
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onMemParkChanged(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$observeData$25$XPilotManager(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "state"
        }
    .end annotation

    .line 656
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_1

    .line 657
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isNedcOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onImageRetentionChanged(I)V

    goto :goto_0

    .line 660
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onImageRetentionChanged(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$observeData$26$XPilotManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mode"
        }
    .end annotation

    .line 665
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onHintModeChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$27$XPilotManager(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "scuResponse"
        }
    .end annotation

    .line 672
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p1

    .line 673
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_2

    .line 674
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isNedcOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 675
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onLccChanged(I)V

    goto :goto_0

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTrailerHitchStatus()Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;->Open:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    if-ne v0, v1, :cond_1

    .line 677
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onLccChanged(I)V

    goto :goto_0

    .line 679
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onLccChanged(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$observeData$28$XPilotManager(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "scuResponse"
        }
    .end annotation

    .line 687
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p1

    .line 688
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_2

    .line 689
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isNedcOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onAlcChanged(I)V

    goto :goto_0

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTrailerHitchStatus()Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;->Open:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    if-ne v0, v1, :cond_1

    .line 692
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onAlcChanged(I)V

    goto :goto_0

    .line 694
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onAlcChanged(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$observeData$29$XPilotManager(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "scuResponse"
        }
    .end annotation

    .line 702
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p1

    .line 703
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_2

    .line 704
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isNedcOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 705
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onTrafficLightChanged(I)V

    goto :goto_0

    .line 706
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTrailerHitchStatus()Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;->Open:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    if-ne v0, v1, :cond_1

    .line 707
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onTrafficLightChanged(I)V

    goto :goto_0

    .line 709
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onTrafficLightChanged(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$observeData$3$XPilotManager(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "scuResponse"
        }
    .end annotation

    .line 421
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p1

    .line 422
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_1

    .line 423
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTrailerHitchStatus()Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;->Open:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    if-ne v0, v1, :cond_0

    .line 424
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onBsdChanged(I)V

    goto :goto_0

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onBsdChanged(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$observeData$30$XPilotManager(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "scuResponse"
        }
    .end annotation

    .line 717
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p1

    .line 718
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_2

    .line 719
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isNedcOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 720
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onCrossBarrierChanged(I)V

    goto :goto_0

    .line 721
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTrailerHitchStatus()Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;->Open:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    if-ne v0, v1, :cond_1

    .line 722
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onCrossBarrierChanged(I)V

    goto :goto_0

    .line 724
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onCrossBarrierChanged(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$observeData$31$XPilotManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "xpilotActiveData"
        }
    .end annotation

    .line 732
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onXpuXPilotDataChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$32$XPilotManager(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "scuResponse"
        }
    .end annotation

    .line 740
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p1

    .line 741
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_2

    .line 742
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isNedcOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 743
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onNgpChanged(I)V

    goto :goto_0

    .line 744
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTrailerHitchStatus()Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;->Open:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    if-ne v0, v1, :cond_1

    .line 745
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onNgpChanged(I)V

    goto :goto_0

    .line 747
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onNgpChanged(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$observeData$33$XPilotManager(Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "aInter"
        }
    .end annotation

    .line 753
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_2

    .line 754
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isNedcOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "isSupportXNgp"

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 755
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onNgpTipsModeChanged(I)V

    goto :goto_0

    .line 756
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTrailerHitchStatus()Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;->Open:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    if-ne v0, v1, :cond_1

    .line 757
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onNgpTipsModeChanged(I)V

    goto :goto_0

    .line 759
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onNgpTipsModeChanged(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$observeData$34$XPilotManager(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "state"
        }
    .end annotation

    .line 765
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_2

    .line 766
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isNedcOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 767
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onNgpVoiceChangeLaneChanged(I)V

    goto :goto_0

    .line 768
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTrailerHitchStatus()Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;->Open:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    if-ne v0, v1, :cond_1

    .line 769
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onNgpVoiceChangeLaneChanged(I)V

    goto :goto_0

    .line 771
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onNgpVoiceChangeLaneChanged(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$observeData$35$XPilotManager(Lcom/xiaopeng/carcontrol/viewmodel/xpu/OverTakeMode;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mode"
        }
    .end annotation

    .line 777
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/OverTakeMode;->ordinal()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onNgpOvertakeModeChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$36$XPilotManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "aInter"
        }
    .end annotation

    .line 783
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onNgpRemindModeChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$37$XPilotManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mode"
        }
    .end annotation

    .line 788
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onNgpCustomSpeedModeChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$38$XPilotManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    .line 793
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onNgpCustomSpeedKphChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$39$XPilotManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    .line 798
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onNgpCustomSpeedPercentChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$4$XPilotManager(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "scuResponse"
        }
    .end annotation

    .line 432
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p1

    .line 433
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTrailerHitchStatus()Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;->Open:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    if-ne v0, v1, :cond_0

    .line 435
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onDowChanged(I)V

    goto :goto_0

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onDowChanged(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$observeData$40$XPilotManager(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    .line 804
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_2

    .line 805
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isNedcOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 806
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onNgpFreeNgpChanged(I)V

    goto :goto_0

    .line 807
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTrailerHitchStatus()Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;->Open:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    if-ne v0, v1, :cond_1

    .line 808
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onNgpFreeNgpChanged(I)V

    goto :goto_0

    .line 810
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onNgpFreeNgpChanged(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$observeData$41$XPilotManager(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    .line 816
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_2

    .line 817
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isNedcOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 818
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onNgpAflChanged(I)V

    goto :goto_0

    .line 819
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTrailerHitchStatus()Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;->Open:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    if-ne v0, v1, :cond_1

    .line 820
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onNgpAflChanged(I)V

    goto :goto_0

    .line 822
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onNgpAflChanged(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$observeData$42$XPilotManager(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    .line 828
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_2

    .line 829
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isNedcOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 830
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onNgpActivateModeChanged(I)V

    goto :goto_0

    .line 831
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTrailerHitchStatus()Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;->Open:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    if-ne v0, v1, :cond_1

    .line 832
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onNgpActivateModeChanged(I)V

    goto :goto_0

    .line 834
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onNgpActivateModeChanged(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$observeData$43$XPilotManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    .line 842
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onNgpNewAflChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$44$XPilotManager(Ljava/lang/Integer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mode"
        }
    .end annotation

    .line 850
    sget-object v0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNgpTruckOffsetChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onNgpTruckOffsetChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$45$XPilotManager(Ljava/lang/Integer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mode"
        }
    .end annotation

    .line 858
    sget-object v0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNgpCustomPreferenChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 860
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onNgpCustomPreferenChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$46$XPilotManager(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "state"
        }
    .end annotation

    .line 866
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onSoundSwChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$47$XPilotManager(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "state"
        }
    .end annotation

    .line 872
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onVoiceSwChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$48$XPilotManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "state"
        }
    .end annotation

    .line 879
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 880
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onOverseasIslaModeChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$49$XPilotManager(Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamError;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "result"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 886
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    iget-wide v1, p1, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamError;->taskId:J

    long-to-int v1, v1

    iget p1, p1, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamError;->examState:I

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onRequestFailure(II)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$5$XPilotManager(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "scuResponse"
        }
    .end annotation

    .line 443
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p1

    .line 444
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_2

    .line 445
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isNedcOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onRaebChanged(I)V

    goto :goto_0

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTrailerHitchStatus()Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;->Open:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    if-ne v0, v1, :cond_1

    .line 448
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onRaebChanged(I)V

    goto :goto_0

    .line 450
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onRaebChanged(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$observeData$50$XPilotManager(Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "result"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 892
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    iget-wide v1, p1, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamResult;->taskId:J

    long-to-int v1, v1

    iget p1, p1, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamResult;->examState:I

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onSafeExamResult(II)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$51$XPilotManager(Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "result"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 898
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    iget-wide v1, p1, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamResult;->taskId:J

    long-to-int v1, v1

    iget p1, p1, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamResult;->examState:I

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onLoopSafeExamResult(II)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$52$XPilotManager(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "result"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 904
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz p1, :cond_0

    .line 905
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    invoke-interface {p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onSafeExamCompleted()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$53$XPilotManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "result"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 910
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 911
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onFreeNgpUidResult(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$54$XPilotManager(Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamUrlResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "examUrl"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 918
    iget v0, p1, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamUrlResult;->examState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 919
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_1

    .line 920
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    iget-wide v1, p1, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamUrlResult;->taskId:J

    long-to-int v1, v1

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamUrlResult;->examUrl:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onSafeExamUrl(ILjava/lang/String;)V

    goto :goto_0

    .line 923
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_1

    .line 924
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    iget-wide v1, p1, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamUrlResult;->taskId:J

    long-to-int p1, v1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onSafeExamUrlExpired(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$observeData$55$XPilotManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "state"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 935
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 936
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onXpilotPrivacyCollectionAgreedStateChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$56$XPilotManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "state"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 941
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 942
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onMapPrivacyCollectionAgreedStateChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$57$XPilotManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "state"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 952
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 953
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onXpuBrakeFunctionModeChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$6$XPilotManager(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "scuResponse"
        }
    .end annotation

    .line 456
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p1

    .line 457
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_1

    .line 458
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTrailerHitchStatus()Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;->Open:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    if-ne v0, v1, :cond_0

    .line 459
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onRcwChanged(I)V

    goto :goto_0

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onRcwChanged(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$observeData$7$XPilotManager(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "scuResponse"
        }
    .end annotation

    .line 467
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p1

    .line 468
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_1

    .line 469
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTrailerHitchStatus()Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;->Open:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    if-ne v0, v1, :cond_0

    .line 470
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onRctaChanged(I)V

    goto :goto_0

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onRctaChanged(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$observeData$8$XPilotManager(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "scuResponse"
        }
    .end annotation

    .line 480
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p1

    .line 481
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_1

    .line 482
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isNedcOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    iget-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onSsaChanged(I)V

    goto :goto_0

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onSsaChanged(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$observeData$9$XPilotManager(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasLkaMode;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "lkaResponse"
        }
    .end annotation

    .line 495
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasLkaMode;->ordinal()I

    move-result p1

    .line 496
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/xpilot/XPilotListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotListener;->onOverseasLkaModeChanged(I)V

    :cond_0
    return-void
.end method

.method protected observeData()V
    .locals 2

    .line 391
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getFcwData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$D4PhE4qhS4Akm3ddV66LE8UeYps;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$D4PhE4qhS4Akm3ddV66LE8UeYps;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 402
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getFcwSenData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$alrmOQA54abfGbYYX7pN4LxT4DM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$alrmOQA54abfGbYYX7pN4LxT4DM;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 409
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getLdwStateData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$x1NHCH_md_Q0EalBgZgao1uNqE0;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$x1NHCH_md_Q0EalBgZgao1uNqE0;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 420
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getBsdData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$X_tqRJwhQAApouoiNQS4ia906_U;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$X_tqRJwhQAApouoiNQS4ia906_U;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 431
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getDowData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$wF3hQ_ypptMw_bZ5-9xcXONKL8A;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$wF3hQ_ypptMw_bZ5-9xcXONKL8A;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 442
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getRaebData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$XrjI8yHLmY1NWpepRT5GUSIthtU;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$XrjI8yHLmY1NWpepRT5GUSIthtU;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 455
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getRcwData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$dxVUZtVp-cu8BHKSGQep0kYOTvw;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$dxVUZtVp-cu8BHKSGQep0kYOTvw;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 466
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getRctaData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$ZbNhUP1DNzMgMDz82mx24CsAiZs;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$ZbNhUP1DNzMgMDz82mx24CsAiZs;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    const-string v0, "isSupportSsa"

    .line 478
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getSsaSwData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$BKrMylSRH1yv7xQAya1Ua0-fGPM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$BKrMylSRH1yv7xQAya1Ua0-fGPM;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_0
    const-string v0, "isSupportLka"

    .line 492
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 493
    invoke-static {}, Landroid/car/Car;->isExportVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 494
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getOverseasLkaModeData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$C8IKUxTsUxtPGhmwCVh13RFwNPQ;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$C8IKUxTsUxtPGhmwCVh13RFwNPQ;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 501
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getOverseasElkModeData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$x9ywkc2Jh4l9RJBefYZlzi_OMW8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$x9ywkc2Jh4l9RJBefYZlzi_OMW8;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    goto :goto_0

    .line 508
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getLssModeData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$v04ZpWh_CfejG6ezb0hNNBXeQCE;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$v04ZpWh_CfejG6ezb0hNNBXeQCE;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 515
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getLssSenData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$L4vYhKHJd6FlxLAy7xZlagcU5IA;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$L4vYhKHJd6FlxLAy7xZlagcU5IA;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_2
    const-string v0, "isExportVersion"

    .line 523
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 525
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getDomesticIslaData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$8yxKbJeLQoIWPaxcpNLuOsJeJks;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$8yxKbJeLQoIWPaxcpNLuOsJeJks;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    const-string v0, "isLssCertification"

    .line 532
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 533
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getDomesticIslaData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$zqq_haMSeNVsYI0mQFIVy1fA95w;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$zqq_haMSeNVsYI0mQFIVy1fA95w;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    goto :goto_1

    .line 541
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getDomesticIslaData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$-saOVwspxGmH12dokZIcb87MrxE;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$-saOVwspxGmH12dokZIcb87MrxE;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_4
    :goto_1
    const-string v0, "isSupportDsmCamera"

    .line 548
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 549
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getDsmTiredDistractionStateData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$1Mr0Onp8emrxSuSDT6Pvm_TTzTE;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$1Mr0Onp8emrxSuSDT6Pvm_TTzTE;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 559
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getDsmTiredDistractionManualStateData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$3iLuvwG46RL-YNBl0gWb3IBeiOI;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$3iLuvwG46RL-YNBl0gWb3IBeiOI;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 570
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getScuDDAWStatusData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$sfXHE1dSytG06avnDiALeTC5TB4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$sfXHE1dSytG06avnDiALeTC5TB4;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 580
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getDsmTiredDistractionSensitivityData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$oqLZ-65osequQxyEJtaGTAw_m9U;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$oqLZ-65osequQxyEJtaGTAw_m9U;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_5
    const-string v0, "isSupportAutoPark"

    .line 588
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 589
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getAutoParkData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$8wdHdqOxF14vjQxY6OQgvxohgvU;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$8wdHdqOxF14vjQxY6OQgvxohgvU;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 601
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getWogStateData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$OM2Zgq7exkyoQsvz0A-MLuGk5ck;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$OM2Zgq7exkyoQsvz0A-MLuGk5ck;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 614
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getKeyParkSwData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$quDkxJHl4mRzfZF7x_DBeiT0CLM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$quDkxJHl4mRzfZF7x_DBeiT0CLM;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 627
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getPhoneParkSwData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$Xe0OiEqtIUFaEKA9pcRzbbX5n-Y;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$Xe0OiEqtIUFaEKA9pcRzbbX5n-Y;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_6
    const-string v0, "isSupportMemPark"

    .line 641
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 642
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getMemoryParkData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$um74xyRY4xY8rYa1_3Ef_DQx-KI;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$um74xyRY4xY8rYa1_3Ef_DQx-KI;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 655
    :cond_7
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getImageRetentionSwData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$N7bCj6C1N8FJJpJY2ZHiaU7ua3s;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$N7bCj6C1N8FJJpJY2ZHiaU7ua3s;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 664
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getHintModeData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$tBMDq3tMdvdIARqSW7e_hIzN3TY;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$tBMDq3tMdvdIARqSW7e_hIzN3TY;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    const-string v0, "isSupportLcc"

    .line 670
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 671
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getLccData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$PemiBVGDlpZq7egUcC2kBtT4v54;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$PemiBVGDlpZq7egUcC2kBtT4v54;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_8
    const-string v0, "isSupportAlc"

    .line 685
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 686
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getAlcData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$JEz1SWLI57ep2JgkvwHeUZPBF9A;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$JEz1SWLI57ep2JgkvwHeUZPBF9A;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_9
    const-string v0, "isSupportTrafficLight"

    .line 700
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 701
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getLccTrafficLightData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$3kis2jOuTmT5CyV0GJDRFOVZtf8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$3kis2jOuTmT5CyV0GJDRFOVZtf8;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_a
    const-string v0, "isSupportCrossBarriers"

    .line 715
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 716
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getLccCrossBarriersData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$jfuV1BKalj3a0lGBNRlv5vl9zxk;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$jfuV1BKalj3a0lGBNRlv5vl9zxk;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_b
    const-string v0, "isSupportXpu"

    .line 730
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 731
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getXpuXPilotActiveData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$qBPDyzoZRy_5gUmx-yOiIY_7K6E;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$qBPDyzoZRy_5gUmx-yOiIY_7K6E;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_c
    const-string v0, "isSupportNgp"

    .line 738
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 739
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getNgpData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$9fVZcEYuYqYAfpe1Rpn2WiuMVEA;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$9fVZcEYuYqYAfpe1Rpn2WiuMVEA;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 752
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getNgpTipsModeData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$9uy7As8V_ihNVKr1A9Fm0Vm_oxA;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$9uy7As8V_ihNVKr1A9Fm0Vm_oxA;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 764
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getNgpVoiceChangeLaneData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$6k87s49oZYR6KOO7SG-8vgjq8P0;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$6k87s49oZYR6KOO7SG-8vgjq8P0;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 776
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getNgpOvertakeData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$YBVIE7HoEM2UoWJdrjXNVzzwf4E;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$YBVIE7HoEM2UoWJdrjXNVzzwf4E;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 782
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getNgpRemindData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$m01aDeciSz5jyEFh5zksJPLHUqY;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$m01aDeciSz5jyEFh5zksJPLHUqY;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 787
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getNgpCustomSpeedModeData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$EeKS1rJzBlv2uG3PR1uXudcf2Ro;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$EeKS1rJzBlv2uG3PR1uXudcf2Ro;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 792
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getNgpCustomSpeedKphData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$r__60r9-8AuvccFp1LQhMmjc-ic;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$r__60r9-8AuvccFp1LQhMmjc-ic;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 797
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getNgpCustomSpeedPercentData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$GciI2m0HMHqArmkHaZ0JzA3OYss;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$GciI2m0HMHqArmkHaZ0JzA3OYss;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 803
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getNgpFreeNgpData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$qjTls0cNlJGiXA8bGP6Yxxgjjq0;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$qjTls0cNlJGiXA8bGP6Yxxgjjq0;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 815
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getNgpAflData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$Nr9NTt6N_qIAIsy20sMT9fIH6f0;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$Nr9NTt6N_qIAIsy20sMT9fIH6f0;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 827
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getNgpActivateModeData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$nyHcVkz0BElLY0AL3d0OlxXhlzg;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$nyHcVkz0BElLY0AL3d0OlxXhlzg;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_d
    const-string v0, "isSupportNgpAfl"

    .line 840
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 841
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getNgpNewAflData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$DzMVLfCpXIvdIwX8B0ceyNAx2XY;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$DzMVLfCpXIvdIwX8B0ceyNAx2XY;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 849
    :cond_e
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getNgpTruckOffsetData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$xkmai8AvYmusQIb5VM3IdLOFd90;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$xkmai8AvYmusQIb5VM3IdLOFd90;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 857
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getNgpPreferLaneData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$AJ9UxaAOPnvesA3rFXR7PS95TE4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$AJ9UxaAOPnvesA3rFXR7PS95TE4;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 865
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getSoundSwData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$o-yk6NEAP1dyc-ihk9uvjvFbZIw;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$o-yk6NEAP1dyc-ihk9uvjvFbZIw;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 871
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getVoiceSwData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$Y9WC7XDYNLf_F0-a_QG2i6LqHWA;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$Y9WC7XDYNLf_F0-a_QG2i6LqHWA;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 877
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getOverseasIslaData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$XAbFTgyq_9MfGQPGPq0osPA9MeI;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$XAbFTgyq_9MfGQPGPq0osPA9MeI;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 885
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->getTaskFailure()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$tSyZcE19EWpyh8pD-tos51t7nxw;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$tSyZcE19EWpyh8pD-tos51t7nxw;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 891
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->getTaskResult()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$0gorzdVZn_ECDgxM20ArGlBqMoo;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$0gorzdVZn_ECDgxM20ArGlBqMoo;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 897
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->getTaskLoopResult()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$IFdpIzwfiPHDn0O455cJcnZYqeI;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$IFdpIzwfiPHDn0O455cJcnZYqeI;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 903
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->getTaskCompleted()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$WeoPXcy-zpP4rNADu5N4Mc0zonA;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$WeoPXcy-zpP4rNADu5N4Mc0zonA;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 908
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->getFreeNgpUidResult()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$7r4clL3cwxQdWcUpKCey6o9-d2I;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$7r4clL3cwxQdWcUpKCey6o9-d2I;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 916
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->getTaskQrCode()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$UgoCho9KlsfoxgctVicb5Cpxv30;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$UgoCho9KlsfoxgctVicb5Cpxv30;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 930
    iget-boolean v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mIsSupportXpuNedc:Z

    if-eqz v0, :cond_f

    .line 931
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getNedcStateData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$n10-PsE3Og1GYDCGE3clqT8EwTA;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$n10-PsE3Og1GYDCGE3clqT8EwTA;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_f
    const-string v0, "isSupportPrivacyCollection"

    .line 933
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 934
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getXpilotUserExperienceData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$DAVGBiGQwUqykaUOZpKnIR4Pc_o;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$DAVGBiGQwUqykaUOZpKnIR4Pc_o;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 940
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getMapUserExperienceData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$tkSvvUqPUWIrP5F-p3vAH21kDHM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$tkSvvUqPUWIrP5F-p3vAH21kDHM;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 949
    :cond_10
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTtmSwitchData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$cDqBJMpHACvkd91tdhZiOJggbls;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$cDqBJMpHACvkd91tdhZiOJggbls;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 951
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getXpuBrakeFunctionModeData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$id_s-5T3kN0hxV2Ut31lKuUdOWA;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$id_s-5T3kN0hxV2Ut31lKuUdOWA;-><init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method protected onRealCall(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
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

    .line 961
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "isCameraOverTemp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0x7a

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "getNgpTruckOffsetState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0x79

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "getAutoParkSafeExamResult"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x78

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "isPGear"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x77

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "setRaeb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x76

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "setNgpRemindMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0x75

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "getSsaSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0x74

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "setMapUserExperiencePlanState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v3, 0x73

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "getDrivingSafeExamResult"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0x72

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "getLccState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v3, 0x71

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "getParkingSafeExamResult"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v3, 0x70

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "setTrafficLightEnable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v3, 0x6f

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "setIslaConfirmMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v3, 0x6e

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "setNgpNewAflEnable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v3, 0x6d

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "getWogState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v3, 0x6c

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "setImageRetentionEnable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v3, 0x6b

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "getMemParkState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v3, 0x6a

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "setDowEnable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v3, 0x69

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "getVoiceSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v3, 0x68

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "setEnhancedParkSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v3, 0x67

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "getLssSensitivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v3, 0x66

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "setOverseasIslaMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v3, 0x65

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "setWogSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v3, 0x64

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "getNgpVoiceChangeLane"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v3, 0x63

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "isNgpMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v3, 0x62

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "setDsmTiredDistractionManualSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v3, 0x61

    goto/16 :goto_0

    :sswitch_1a
    const-string v0, "setAlcEnable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v3, 0x60

    goto/16 :goto_0

    :sswitch_1b
    const-string v0, "setNgpCustomSpeedMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v3, 0x5f

    goto/16 :goto_0

    :sswitch_1c
    const-string v0, "getImageRetentionState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v3, 0x5e

    goto/16 :goto_0

    :sswitch_1d
    const-string v0, "getDsmTiredDistractionManualSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v3, 0x5d

    goto/16 :goto_0

    :sswitch_1e
    const-string v0, "isParkingMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v3, 0x5c

    goto/16 :goto_0

    :sswitch_1f
    const-string v0, "getFcwSensitivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v3, 0x5b

    goto/16 :goto_0

    :sswitch_20
    const-string v0, "setOverseasLkaMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v3, 0x5a

    goto/16 :goto_0

    :sswitch_21
    const-string v0, "setDomesticIslaMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v3, 0x59

    goto/16 :goto_0

    :sswitch_22
    const-string v0, "setSoundSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto/16 :goto_0

    :cond_22
    const/16 v3, 0x58

    goto/16 :goto_0

    :sswitch_23
    const-string v0, "getIslaConfirmMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    goto/16 :goto_0

    :cond_23
    const/16 v3, 0x57

    goto/16 :goto_0

    :sswitch_24
    const-string v0, "setNgpOvertakeMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto/16 :goto_0

    :cond_24
    const/16 v3, 0x56

    goto/16 :goto_0

    :sswitch_25
    const-string v0, "getOverseasLkaState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto/16 :goto_0

    :cond_25
    const/16 v3, 0x55

    goto/16 :goto_0

    :sswitch_26
    const-string v0, "getNgpAflState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto/16 :goto_0

    :cond_26
    const/16 v3, 0x54

    goto/16 :goto_0

    :sswitch_27
    const-string v0, "getMemParkSafeExamResultV2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto/16 :goto_0

    :cond_27
    const/16 v3, 0x53

    goto/16 :goto_0

    :sswitch_28
    const-string v0, "getNgpNewAflState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto/16 :goto_0

    :cond_28
    const/16 v3, 0x52

    goto/16 :goto_0

    :sswitch_29
    const-string v0, "getNgpState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto/16 :goto_0

    :cond_29
    const/16 v3, 0x51

    goto/16 :goto_0

    :sswitch_2a
    const-string v0, "setSsaEnable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto/16 :goto_0

    :cond_2a
    const/16 v3, 0x50

    goto/16 :goto_0

    :sswitch_2b
    const-string v0, "getFcwState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto/16 :goto_0

    :cond_2b
    const/16 v3, 0x4f

    goto/16 :goto_0

    :sswitch_2c
    const-string v0, "getHintMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto/16 :goto_0

    :cond_2c
    const/16 v3, 0x4e

    goto/16 :goto_0

    :sswitch_2d
    const-string v0, "setNgpTipsMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto/16 :goto_0

    :cond_2d
    const/16 v3, 0x4d

    goto/16 :goto_0

    :sswitch_2e
    const-string v0, "getNgpAflFunctionVisibility"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto/16 :goto_0

    :cond_2e
    const/16 v3, 0x4c

    goto/16 :goto_0

    :sswitch_2f
    const-string v0, "setLssSensitivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto/16 :goto_0

    :cond_2f
    const/16 v3, 0x4b

    goto/16 :goto_0

    :sswitch_30
    const-string v0, "setHintMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    goto/16 :goto_0

    :cond_30
    const/16 v3, 0x4a

    goto/16 :goto_0

    :sswitch_31
    const-string v0, "setXpilotUserExperiencePlanState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    goto/16 :goto_0

    :cond_31
    const/16 v3, 0x49

    goto/16 :goto_0

    :sswitch_32
    const-string v0, "getXpuXpilotState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    goto/16 :goto_0

    :cond_32
    const/16 v3, 0x48

    goto/16 :goto_0

    :sswitch_33
    const-string v0, "setNedcEnable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    goto/16 :goto_0

    :cond_33
    const/16 v3, 0x47

    goto/16 :goto_0

    :sswitch_34
    const-string v0, "setFcwSensitivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    goto/16 :goto_0

    :cond_34
    const/16 v3, 0x46

    goto/16 :goto_0

    :sswitch_35
    const-string v0, "getNedcState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto/16 :goto_0

    :cond_35
    const/16 v3, 0x45

    goto/16 :goto_0

    :sswitch_36
    const-string v0, "getDsmTiredDistractionSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    goto/16 :goto_0

    :cond_36
    const/16 v3, 0x44

    goto/16 :goto_0

    :sswitch_37
    const-string v0, "setNgpActivateModeEnable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    goto/16 :goto_0

    :cond_37
    const/16 v3, 0x43

    goto/16 :goto_0

    :sswitch_38
    const-string v0, "getDsmTiredDistractionSensitivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto/16 :goto_0

    :cond_38
    const/16 v3, 0x42

    goto/16 :goto_0

    :sswitch_39
    const-string v0, "getRcwState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    goto/16 :goto_0

    :cond_39
    const/16 v3, 0x41

    goto/16 :goto_0

    :sswitch_3a
    const-string v0, "setDDAWSwitchStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    goto/16 :goto_0

    :cond_3a
    const/16 v3, 0x40

    goto/16 :goto_0

    :sswitch_3b
    const-string v0, "getCrossBarrierState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    goto/16 :goto_0

    :cond_3b
    const/16 v3, 0x3f

    goto/16 :goto_0

    :sswitch_3c
    const-string v0, "getAutoParkState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    goto/16 :goto_0

    :cond_3c
    const/16 v3, 0x3e

    goto/16 :goto_0

    :sswitch_3d
    const-string v0, "getNgpOvertakeMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    goto/16 :goto_0

    :cond_3d
    const/16 v3, 0x3d

    goto/16 :goto_0

    :sswitch_3e
    const-string v0, "checkAllSafeExamResult"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    goto/16 :goto_0

    :cond_3e
    const/16 v3, 0x3c

    goto/16 :goto_0

    :sswitch_3f
    const-string v0, "setBsdEnable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    goto/16 :goto_0

    :cond_3f
    const/16 v3, 0x3b

    goto/16 :goto_0

    :sswitch_40
    const-string v0, "getRaebState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    goto/16 :goto_0

    :cond_40
    const/16 v3, 0x3a

    goto/16 :goto_0

    :sswitch_41
    const-string v0, "setDsmTiredDistractionSensitivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    goto/16 :goto_0

    :cond_41
    const/16 v3, 0x39

    goto/16 :goto_0

    :sswitch_42
    const-string v0, "getStudyUrl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    goto/16 :goto_0

    :cond_42
    const/16 v3, 0x38

    goto/16 :goto_0

    :sswitch_43
    const-string v0, "setNgpVoiceChangeLane"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    goto/16 :goto_0

    :cond_43
    const/16 v3, 0x37

    goto/16 :goto_0

    :sswitch_44
    const-string v0, "getNgpRemindMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    goto/16 :goto_0

    :cond_44
    const/16 v3, 0x36

    goto/16 :goto_0

    :sswitch_45
    const-string v0, "setLccEnableWithSource"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    goto/16 :goto_0

    :cond_45
    const/16 v3, 0x35

    goto/16 :goto_0

    :sswitch_46
    const-string v0, "getNgpCustomPreferenMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    goto/16 :goto_0

    :cond_46
    const/16 v3, 0x34

    goto/16 :goto_0

    :sswitch_47
    const-string v0, "setKeyParkSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    goto/16 :goto_0

    :cond_47
    const/16 v3, 0x33

    goto/16 :goto_0

    :sswitch_48
    const-string v0, "getNgpSafeExamResultV2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    goto/16 :goto_0

    :cond_48
    const/16 v3, 0x32

    goto/16 :goto_0

    :sswitch_49
    const-string v0, "getXpuBrakeFunctionMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    goto/16 :goto_0

    :cond_49
    const/16 v3, 0x31

    goto/16 :goto_0

    :sswitch_4a
    const-string v0, "getLssState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    goto/16 :goto_0

    :cond_4a
    const/16 v3, 0x30

    goto/16 :goto_0

    :sswitch_4b
    const-string v0, "setDsmTiredDistractionSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    goto/16 :goto_0

    :cond_4b
    const/16 v3, 0x2f

    goto/16 :goto_0

    :sswitch_4c
    const-string v0, "getAlcState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    goto/16 :goto_0

    :cond_4c
    const/16 v3, 0x2e

    goto/16 :goto_0

    :sswitch_4d
    const-string v0, "setVoiceSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    goto/16 :goto_0

    :cond_4d
    const/16 v3, 0x2d

    goto/16 :goto_0

    :sswitch_4e
    const-string v0, "setRctaEnable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    goto/16 :goto_0

    :cond_4e
    const/16 v3, 0x2c

    goto/16 :goto_0

    :sswitch_4f
    const-string v0, "getRctaState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    goto/16 :goto_0

    :cond_4f
    const/16 v3, 0x2b

    goto/16 :goto_0

    :sswitch_50
    const-string v0, "setOverseasElkMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    goto/16 :goto_0

    :cond_50
    const/16 v3, 0x2a

    goto/16 :goto_0

    :sswitch_51
    const-string v0, "getDowState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    goto/16 :goto_0

    :cond_51
    const/16 v3, 0x29

    goto/16 :goto_0

    :sswitch_52
    const-string v0, "setLssMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    goto/16 :goto_0

    :cond_52
    const/16 v3, 0x28

    goto/16 :goto_0

    :sswitch_53
    const-string v0, "getNgpCustomSpeedPercent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    goto/16 :goto_0

    :cond_53
    const/16 v3, 0x27

    goto/16 :goto_0

    :sswitch_54
    const-string v0, "getKeyParkState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    goto/16 :goto_0

    :cond_54
    const/16 v3, 0x26

    goto/16 :goto_0

    :sswitch_55
    const-string v0, "getLdwState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    goto/16 :goto_0

    :cond_55
    const/16 v3, 0x25

    goto/16 :goto_0

    :sswitch_56
    const-string v0, "getEnhancedParkState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    goto/16 :goto_0

    :cond_56
    const/16 v3, 0x24

    goto/16 :goto_0

    :sswitch_57
    const-string v0, "getSoundSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    goto/16 :goto_0

    :cond_57
    const/16 v3, 0x23

    goto/16 :goto_0

    :sswitch_58
    const-string v0, "getFreeNgpSafeExamResult"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    goto/16 :goto_0

    :cond_58
    const/16 v3, 0x22

    goto/16 :goto_0

    :sswitch_59
    const-string v0, "getXpilotUserExperienceTitle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    goto/16 :goto_0

    :cond_59
    const/16 v3, 0x21

    goto/16 :goto_0

    :sswitch_5a
    const-string v0, "setMemParkEnableWithSource"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    goto/16 :goto_0

    :cond_5a
    const/16 v3, 0x20

    goto/16 :goto_0

    :sswitch_5b
    const-string v0, "getXpilotUserExperiencePlanState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    goto/16 :goto_0

    :cond_5b
    const/16 v3, 0x1f

    goto/16 :goto_0

    :sswitch_5c
    const-string v0, "getNgpActivateModeState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    goto/16 :goto_0

    :cond_5c
    const/16 v3, 0x1e

    goto/16 :goto_0

    :sswitch_5d
    const-string v0, "getNgpCustomSpeedMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    goto/16 :goto_0

    :cond_5d
    const/16 v3, 0x1d

    goto/16 :goto_0

    :sswitch_5e
    const-string v0, "requestSafeExamUrl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    goto/16 :goto_0

    :cond_5e
    const/16 v3, 0x1c

    goto/16 :goto_0

    :sswitch_5f
    const-string v0, "getNgpFreeNgpState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    goto/16 :goto_0

    :cond_5f
    const/16 v3, 0x1b

    goto/16 :goto_0

    :sswitch_60
    const-string v0, "getBsdState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    goto/16 :goto_0

    :cond_60
    const/16 v3, 0x1a

    goto/16 :goto_0

    :sswitch_61
    const-string v0, "showUserManual"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    goto/16 :goto_0

    :cond_61
    const/16 v3, 0x19

    goto/16 :goto_0

    :sswitch_62
    const-string v0, "requestSafeExamResult"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    goto/16 :goto_0

    :cond_62
    const/16 v3, 0x18

    goto/16 :goto_0

    :sswitch_63
    const-string v0, "getOverseasIslaMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    goto/16 :goto_0

    :cond_63
    const/16 v3, 0x17

    goto/16 :goto_0

    :sswitch_64
    const-string v0, "setNgpCustomPreferenMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64

    goto/16 :goto_0

    :cond_64
    const/16 v3, 0x16

    goto/16 :goto_0

    :sswitch_65
    const-string v0, "setFcwEnable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    goto/16 :goto_0

    :cond_65
    const/16 v3, 0x15

    goto/16 :goto_0

    :sswitch_66
    const-string v0, "getDDAWStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    goto/16 :goto_0

    :cond_66
    const/16 v3, 0x14

    goto/16 :goto_0

    :sswitch_67
    const-string v0, "getNgpCustomSpeedKph"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    goto/16 :goto_0

    :cond_67
    const/16 v3, 0x13

    goto/16 :goto_0

    :sswitch_68
    const-string v0, "setNgpEnableWithSource"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68

    goto/16 :goto_0

    :cond_68
    const/16 v3, 0x12

    goto/16 :goto_0

    :sswitch_69
    const-string v0, "setRcwEnable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    goto/16 :goto_0

    :cond_69
    const/16 v3, 0x11

    goto/16 :goto_0

    :sswitch_6a
    const-string v0, "shouldSkipSafeExam"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    goto/16 :goto_0

    :cond_6a
    const/16 v3, 0x10

    goto/16 :goto_0

    :sswitch_6b
    const-string v0, "getOverseasElkState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    goto/16 :goto_0

    :cond_6b
    const/16 v3, 0xf

    goto/16 :goto_0

    :sswitch_6c
    const-string v0, "setNgpCustomSpeedPercent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    goto/16 :goto_0

    :cond_6c
    const/16 v3, 0xe

    goto/16 :goto_0

    :sswitch_6d
    const-string v0, "requestFreengpUidResult"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    goto/16 :goto_0

    :cond_6d
    const/16 v3, 0xd

    goto/16 :goto_0

    :sswitch_6e
    const-string v0, "stopCheckSafeExamResult"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    goto/16 :goto_0

    :cond_6e
    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_6f
    const-string v0, "getDomesticIslaMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    goto/16 :goto_0

    :cond_6f
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_70
    const-string v0, "setCrossBarrierEnable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_70

    goto/16 :goto_0

    :cond_70
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_71
    const-string v0, "setLdwEnable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    goto/16 :goto_0

    :cond_71
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_72
    const-string v0, "setNgpFreeNgpEnable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    goto/16 :goto_0

    :cond_72
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_73
    const-string v0, "getTrafficLightState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    goto :goto_0

    :cond_73
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_74
    const-string v0, "getLccSafeExamResult"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_74

    goto :goto_0

    :cond_74
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_75
    const-string v0, "getNgpTipsMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_75

    goto :goto_0

    :cond_75
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_76
    const-string v0, "setNgpTruckOffsetEnable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_76

    goto :goto_0

    :cond_76
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_77
    const-string v0, "setNgpCustomSpeedKph"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    goto :goto_0

    :cond_77
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_78
    const-string v0, "getMapUserExperiencePlanState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_78

    goto :goto_0

    :cond_78
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_79
    const-string v0, "setNgpAflEnable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    goto :goto_0

    :cond_79
    move v3, v1

    goto :goto_0

    :sswitch_7a
    const-string v0, "setAutoParkEnableWithSource"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7a

    goto :goto_0

    :cond_7a
    move v3, v2

    :goto_0
    const-string v0, ","

    packed-switch v3, :pswitch_data_0

    .line 1348
    sget-object p2, Lcom/xiaopeng/unity/xpilot/XPilotManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1304
    :pswitch_0
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isCameraOverTemp()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_4

    .line 1155
    :pswitch_1
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getNgpTruckOffsetState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 1264
    :pswitch_2
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getAutoParkSafeExamResult()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_4

    .line 1301
    :pswitch_3
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isPGear()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_4

    .line 994
    :pswitch_4
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setRaeb(Z)V

    goto/16 :goto_3

    .line 1218
    :pswitch_5
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setNgpRemindMode(I)V

    goto/16 :goto_3

    .line 1015
    :pswitch_6
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getSsaSw()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 1327
    :pswitch_7
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setMapUserExperiencePlanState(Z)V

    goto/16 :goto_3

    .line 1270
    :pswitch_8
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getDrivingSafeExamResult(Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_4

    .line 1126
    :pswitch_9
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getLccState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 1273
    :pswitch_a
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getParkingSafeExamResult(Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_4

    .line 1135
    :pswitch_b
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setTrafficLightEnable(Z)V

    goto/16 :goto_3

    .line 1254
    :pswitch_c
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setIslaConfirmMode(Z)V

    goto/16 :goto_3

    .line 1179
    :pswitch_d
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setNgpNewAflEnable(Z)V

    goto/16 :goto_3

    .line 1086
    :pswitch_e
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getWogState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 1112
    :pswitch_f
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setImageRetentionEnable(Z)V

    goto/16 :goto_3

    .line 1094
    :pswitch_10
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getMemParkState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 987
    :pswitch_11
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setDowEnable(Z)V

    goto/16 :goto_3

    .line 1245
    :pswitch_12
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getVoiceSw()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 1106
    :pswitch_13
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setEnhancedParkSw(Z)V

    goto/16 :goto_3

    .line 1039
    :pswitch_14
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getLssSensitivity()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 1260
    :pswitch_15
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setOverseasIslaMode(I)V

    goto/16 :goto_3

    .line 1083
    :pswitch_16
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setWogSw(Z)V

    goto/16 :goto_3

    .line 1182
    :pswitch_17
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getNgpVoiceChangeLane()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 1340
    :pswitch_18
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isNgpMode()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_4

    .line 1057
    :pswitch_19
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setDsmTiredDistractionManualSw(Z)V

    goto/16 :goto_3

    .line 1129
    :pswitch_1a
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setAlcEnable(Z)V

    goto/16 :goto_3

    .line 1224
    :pswitch_1b
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setNgpCustomSpeedMode(I)V

    goto/16 :goto_3

    .line 1109
    :pswitch_1c
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getImageRetentionState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 1054
    :pswitch_1d
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getDsmTiredDistractionManualSw()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 1344
    :pswitch_1e
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->isParkingMode()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_4

    .line 978
    :pswitch_1f
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getFcwSensitivity()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 1024
    :pswitch_20
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setOverseasLkaMode(I)V

    goto/16 :goto_3

    .line 1042
    :pswitch_21
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setDomesticIslaMode(I)V

    goto/16 :goto_3

    .line 1242
    :pswitch_22
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setSoundSw(Z)V

    goto/16 :goto_3

    .line 1251
    :pswitch_23
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getIslaConfirmMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 1212
    :pswitch_24
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setNgpOvertakeMode(I)V

    goto/16 :goto_3

    .line 1027
    :pswitch_25
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getOverseasLkaState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 1170
    :pswitch_26
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getNgpAflState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 1279
    :pswitch_27
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getMemParkSafeExamResultV2()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_4

    .line 1176
    :pswitch_28
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getNgpNewAflState()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_4

    .line 1152
    :pswitch_29
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getNgpState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 1012
    :pswitch_2a
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setSsaEnable(Z)V

    goto/16 :goto_3

    .line 966
    :pswitch_2b
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getFcwState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 1115
    :pswitch_2c
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getHintMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 1206
    :pswitch_2d
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setNgpTipsMode(I)V

    goto/16 :goto_3

    .line 1173
    :pswitch_2e
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getNgpAflFunctionVisibility()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_4

    .line 1036
    :pswitch_2f
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLssSensitivity(I)V

    goto/16 :goto_3

    .line 1118
    :pswitch_30
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setHintMode(I)V

    goto/16 :goto_3

    .line 1321
    :pswitch_31
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setXpilotUserExperiencePlanState(Z)V

    goto/16 :goto_3

    .line 1072
    :pswitch_32
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getXpuXpilotState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 1310
    :pswitch_33
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setNedcEnable(Z)V

    goto/16 :goto_3

    .line 975
    :pswitch_34
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setFcwSensitivity(I)V

    goto/16 :goto_3

    .line 1307
    :pswitch_35
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getNedcState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 1048
    :pswitch_36
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getDsmTiredDistractionSw()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 1197
    :pswitch_37
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setNgpActivateModeEnable(Z)V

    goto/16 :goto_3

    .line 1066
    :pswitch_38
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getDsmTiredDistractionSensitivity()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 1003
    :pswitch_39
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getRcwState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 1063
    :pswitch_3a
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setDDAWSwitchStatus(Z)V

    goto/16 :goto_3

    .line 1144
    :pswitch_3b
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getCrossBarrierState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 1080
    :pswitch_3c
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getAutoParkState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 1209
    :pswitch_3d
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getNgpOvertakeMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 1282
    :pswitch_3e
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->checkAllSafeExamResult()V

    goto/16 :goto_3

    .line 981
    :pswitch_3f
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setBsdEnable(Z)V

    goto/16 :goto_3

    .line 997
    :pswitch_40
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getRaebState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 1069
    :pswitch_41
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setDsmTiredDistractionSensitivity(I)V

    goto/16 :goto_3

    .line 1298
    :pswitch_42
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getStudyUrl(J)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 1185
    :pswitch_43
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setNgpVoiceChangeLane(Z)V

    goto/16 :goto_3

    .line 1215
    :pswitch_44
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getNgpRemindMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 1121
    :pswitch_45
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1122
    aget-object p2, p1, v2

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    aget-object p1, p1, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLccEnableWithSource(ZI)V

    goto/16 :goto_3

    .line 1161
    :pswitch_46
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getNgpCustomPreferenMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 1100
    :pswitch_47
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setKeyParkSw(Z)V

    goto/16 :goto_3

    .line 1276
    :pswitch_48
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getNgpSafeExamResultV2(Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_4

    .line 1336
    :pswitch_49
    invoke-direct {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getXpuBrakeFunctionMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 1021
    :pswitch_4a
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getLssState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 1051
    :pswitch_4b
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setDsmTiredDistractionSw(Z)V

    goto/16 :goto_3

    .line 1132
    :pswitch_4c
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getAlcState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 1248
    :pswitch_4d
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setVoiceSw(Z)V

    goto/16 :goto_3

    .line 1006
    :pswitch_4e
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setRctaEnable(Z)V

    goto/16 :goto_3

    .line 1009
    :pswitch_4f
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getRctaState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 1030
    :pswitch_50
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setOverseasElkMode(I)V

    goto/16 :goto_3

    .line 990
    :pswitch_51
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getDowState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 1018
    :pswitch_52
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLssMode(I)V

    goto/16 :goto_3

    .line 1233
    :pswitch_53
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getNgpCustomSpeedPercent()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 1097
    :pswitch_54
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getKeyParkState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 972
    :pswitch_55
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getLdwState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 1103
    :pswitch_56
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getEnhancedParkState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 1239
    :pswitch_57
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getSoundSw()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 1200
    :pswitch_58
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getFreeNgpSafeExamResult()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_4

    .line 1333
    :pswitch_59
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getXpilotUserExperienceTitle()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 1089
    :pswitch_5a
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1090
    aget-object p2, p1, v2

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    aget-object p1, p1, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setMemParkEnableWithSource(ZI)V

    goto/16 :goto_3

    .line 1324
    :pswitch_5b
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getXpilotUserExperiencePlanState()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_4

    .line 1194
    :pswitch_5c
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getNgpActivateModeState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 1221
    :pswitch_5d
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getNgpCustomSpeedMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 1295
    :pswitch_5e
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->requestSafeExamUrl(J)V

    goto/16 :goto_3

    .line 1188
    :pswitch_5f
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getNgpFreeNgpState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 984
    :pswitch_60
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getBsdState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 1317
    :pswitch_61
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7b

    new-array p1, v2, [Ljava/lang/String;

    goto :goto_1

    :cond_7b
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1318
    :goto_1
    aget-object p2, p1, v2

    aget-object p1, p1, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->showUserManual(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 1285
    :pswitch_62
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7c

    new-array p1, v2, [Ljava/lang/String;

    goto :goto_2

    :cond_7c
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1286
    :goto_2
    aget-object p2, p1, v2

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aget-object p1, p1, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, v2, v3, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->requestSafeExamResult(JZ)V

    goto/16 :goto_3

    .line 1257
    :pswitch_63
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getOverseasIslaMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 1164
    :pswitch_64
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setNgpCustomPreferenMode(I)V

    goto/16 :goto_3

    .line 963
    :pswitch_65
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setFcwEnable(Z)V

    goto/16 :goto_3

    .line 1060
    :pswitch_66
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getDDAWStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 1227
    :pswitch_67
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getNgpCustomSpeedKph()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 1147
    :pswitch_68
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1148
    aget-object p2, p1, v2

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    aget-object p1, p1, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setNgpEnableWithSource(ZI)V

    goto/16 :goto_3

    .line 1000
    :pswitch_69
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setRcwEnable(Z)V

    goto/16 :goto_3

    .line 1313
    :pswitch_6a
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->shouldSkipSafeExam()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_4

    .line 1033
    :pswitch_6b
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getOverseasElkState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 1236
    :pswitch_6c
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setNgpCustomSpeedPercent(I)V

    goto/16 :goto_3

    .line 1289
    :pswitch_6d
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->requestFreengpUidResult()V

    goto/16 :goto_3

    .line 1292
    :pswitch_6e
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->stopCheckSafeExamResult()V

    goto/16 :goto_3

    .line 1045
    :pswitch_6f
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getDomesticIslaMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_4

    .line 1141
    :pswitch_70
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setCrossBarrierEnable(Z)V

    goto :goto_3

    .line 969
    :pswitch_71
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setLdwEnable(Z)V

    goto :goto_3

    .line 1191
    :pswitch_72
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setNgpFreeNgpEnable(Z)V

    goto :goto_3

    .line 1138
    :pswitch_73
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getTrafficLightState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_4

    .line 1267
    :pswitch_74
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getLccSafeExamResult()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_4

    .line 1203
    :pswitch_75
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getNgpTipsMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_4

    .line 1158
    :pswitch_76
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setNgpTruckOffsetEnable(Z)V

    goto :goto_3

    .line 1230
    :pswitch_77
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setNgpCustomSpeedKph(I)V

    goto :goto_3

    .line 1330
    :pswitch_78
    invoke-virtual {p0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getMapUserExperiencePlanState()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_4

    .line 1167
    :pswitch_79
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setNgpAflEnable(Z)V

    goto :goto_3

    .line 1075
    :pswitch_7a
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1076
    aget-object p2, p1, v2

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    aget-object p1, p1, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->setAutoParkEnableWithSource(ZI)V

    :goto_3
    const/4 p1, 0x0

    :goto_4
    if-eqz p1, :cond_7d

    .line 1351
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_7d
    const-string p1, ""

    :goto_5
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e5d9ac1 -> :sswitch_7a
        -0x7c16d94b -> :sswitch_79
        -0x7bf37633 -> :sswitch_78
        -0x795f1e1e -> :sswitch_77
        -0x785effa0 -> :sswitch_76
        -0x767ecd44 -> :sswitch_75
        -0x74633741 -> :sswitch_74
        -0x741fb5be -> :sswitch_73
        -0x71e346e7 -> :sswitch_72
        -0x706ad5e0 -> :sswitch_71
        -0x6deb4c44 -> :sswitch_70
        -0x6a7b72ea -> :sswitch_6f
        -0x688567b1 -> :sswitch_6e
        -0x67f75e6f -> :sswitch_6d
        -0x63d190fc -> :sswitch_6c
        -0x6221f945 -> :sswitch_6b
        -0x61f2d2c2 -> :sswitch_6a
        -0x5eb168b9 -> :sswitch_69
        -0x57cef167 -> :sswitch_68
        -0x54f52a92 -> :sswitch_67
        -0x544457e2 -> :sswitch_66
        -0x51e69cc5 -> :sswitch_65
        -0x4ea5dafe -> :sswitch_64
        -0x4de90d30 -> :sswitch_63
        -0x4db47f08 -> :sswitch_62
        -0x4d60a5b2 -> :sswitch_61
        -0x4d19846c -> :sswitch_60
        -0x4a3f3339 -> :sswitch_5f
        -0x4a0ccd8c -> :sswitch_5e
        -0x49af42c8 -> :sswitch_5d
        -0x47c44fa6 -> :sswitch_5c
        -0x47a84643 -> :sswitch_5b
        -0x41326edf -> :sswitch_5a
        -0x3d3a4c53 -> :sswitch_59
        -0x3c9e0482 -> :sswitch_58
        -0x3ab7f863 -> :sswitch_57
        -0x3a6914c5 -> :sswitch_56
        -0x375f28b8 -> :sswitch_55
        -0x3742de62 -> :sswitch_54
        -0x33e44370 -> :sswitch_53
        -0x32e9eb33 -> :sswitch_52
        -0x308403e5 -> :sswitch_51
        -0x2f6f5c53 -> :sswitch_50
        -0x2b6403e3 -> :sswitch_4f
        -0x2b30d27d -> :sswitch_4e
        -0x29420f8c -> :sswitch_4d
        -0x28fb28b1 -> :sswitch_4c
        -0x281f8eba -> :sswitch_4b
        -0x24b51265 -> :sswitch_4a
        -0x23a6be21 -> :sswitch_49
        -0x2235ce5a -> :sswitch_48
        -0x20ebab15 -> :sswitch_47
        -0x1eb88d72 -> :sswitch_46
        -0x1e0b8372 -> :sswitch_45
        -0x1c9c5a37 -> :sswitch_44
        -0x1858ae47 -> :sswitch_43
        -0x144b43a4 -> :sswitch_42
        -0x14182603 -> :sswitch_41
        -0x12eefdd1 -> :sswitch_40
        -0x11fbf0ac -> :sswitch_3f
        -0x4b6b39e -> :sswitch_3e
        -0x388cb21 -> :sswitch_3d
        0x484622 -> :sswitch_3c
        0x9dfec4 -> :sswitch_3b
        0x2c7d87e -> :sswitch_3a
        0x301a941 -> :sswitch_39
        0x5cb09f1 -> :sswitch_38
        0x714654e -> :sswitch_37
        0x7cdbed2 -> :sswitch_36
        0x8529705 -> :sswitch_35
        0xa39b3e7 -> :sswitch_34
        0x17ebef9b -> :sswitch_33
        0x186ecf6a -> :sswitch_32
        0x1a9ab831 -> :sswitch_31
        0x1eb78f4c -> :sswitch_30
        0x1ed64035 -> :sswitch_2f
        0x1f7fc230 -> :sswitch_2e
        0x1fe6a630 -> :sswitch_2d
        0x23ff2e40 -> :sswitch_2c
        0x24738ecd -> :sswitch_2b
        0x27dcbca2 -> :sswitch_2a
        0x2b23f670 -> :sswitch_29
        0x2bc75049 -> :sswitch_28
        0x2c7b8e2e -> :sswitch_27
        0x2c9361ab -> :sswitch_26
        0x2f0f8f5d -> :sswitch_25
        0x334dce53 -> :sswitch_24
        0x37863cae -> :sswitch_23
        0x38b95511 -> :sswitch_22
        0x39812222 -> :sswitch_21
        0x409a7ecb -> :sswitch_20
        0x42434bdb -> :sswitch_1f
        0x456161f1 -> :sswitch_1e
        0x46273eb8 -> :sswitch_1d
        0x4a800f18 -> :sswitch_1c
        0x4d7c3f44 -> :sswitch_1b
        0x4db12af9 -> :sswitch_1a
        0x4e3f4a2c -> :sswitch_19
        0x4e70db90 -> :sswitch_18
        0x507bcfad -> :sswitch_17
        0x53ecb011 -> :sswitch_16
        0x561387dc -> :sswitch_15
        0x56dfd829 -> :sswitch_14
        0x5c09e006 -> :sswitch_13
        0x634ca300 -> :sswitch_12
        0x641e9fad -> :sswitch_11
        0x64af1ee8 -> :sswitch_10
        0x679c5ae8 -> :sswitch_f
        0x69e4c6b8 -> :sswitch_e
        0x6bc0aa3f -> :sswitch_d
        0x6e5cd622 -> :sswitch_c
        0x6f1bd7fe -> :sswitch_b
        0x70df58ab -> :sswitch_a
        0x7199af9b -> :sswitch_9
        0x72ba5a7a -> :sswitch_8
        0x73cb3fd9 -> :sswitch_7
        0x7527f28f -> :sswitch_6
        0x763a0c3d -> :sswitch_5
        0x764f7a8e -> :sswitch_4
        0x7b34c315 -> :sswitch_3
        0x7bb19a18 -> :sswitch_2
        0x7d14daa0 -> :sswitch_1
        0x7dfa24d7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public requestFreengpUidResult()V
    .locals 1

    .line 2154
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->getFreengpUidResult()V

    return-void
.end method

.method public requestSafeExamResult(JZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "taskId",
            "loop"
        }
    .end annotation

    .line 2149
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->getTaskResult(JZ)V

    return-void
.end method

.method public requestSafeExamUrl(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taskId"
        }
    .end annotation

    .line 2164
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->getTaskQrCode(J)V

    return-void
.end method

.method public setAlcEnable(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_alc:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1807
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->setAlcEnable(Z)V

    .line 1808
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "xpilot_alc"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setAutoParkEnableWithSource(ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "source"
        }
    .end annotation

    .line 1672
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->setAutoParkSw(ZI)V

    .line 1673
    sget-object p2, Lcom/xiaopeng/track/constant/BID;->xpilot_auto_park:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {p2}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method

.method public setBsdEnable(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_bsd:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1459
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->setBsdEnable(Z)V

    .line 1460
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "xpilot_bsd"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCrossBarrierEnable(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_cross_barrier:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1843
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->setLccCrossBarriersSw(Z)V

    .line 1844
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "xpilot_cross_barrier"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setDDAWSwitchStatus(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1391
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->setDDAWSwitchStatus(Z)V

    return-void
.end method

.method public setDomesticIslaMode(I)V
    .locals 3
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_isla:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 1642
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;->OFF:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 1654
    sget-object v1, Lcom/xiaopeng/unity/xpilot/XPilotManager;->TAG:Ljava/lang/String;

    const-string v2, "Unity set error isla mode!"

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1651
    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;->ISLA:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;

    goto :goto_0

    .line 1648
    :cond_1
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;->SLA:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;

    goto :goto_0

    .line 1645
    :cond_2
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;->OFF:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;

    .line 1656
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->setSimpleSasMode(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;)V

    .line 1657
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v0, "xpilot_isla"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setDowEnable(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_dow:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1474
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->setDowEnable(Z)V

    .line 1475
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "xpilot_dow"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setDsmTiredDistractionManualSw(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->about_sap_tired_remind_manual:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 1381
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->setDsmTiredDistractionManualSw(Z)V

    .line 1382
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "about_sap_tired_remind_manual"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setDsmTiredDistractionSensitivity(I)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->about_sap_tired_remind_sensitivity:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1403
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->setDsmTiredDistractionSensitivity(I)V

    .line 1404
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "about_sap_tired_remind_sensitivity"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setDsmTiredDistractionSw(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->about_sap_tired_remind:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 1366
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->setDsmTiredDistractionSw(Z)V

    .line 1367
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "about_sap_tired_remind"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setEnhancedParkSw(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_enhanced_park:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1759
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->setPhoneParkSw(Z)V

    .line 1760
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "xpilot_enhanced_park"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFcwEnable(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_fcw:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1409
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->setFcwEnable()V

    .line 1410
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "xpilot_fcw"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFcwSensitivity(I)V
    .locals 2
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_fcw_sen:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1447
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;->values()[Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->setFcwSensitivity(Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;)V

    .line 1448
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v0, "xpilot_fcw_sen"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setHintMode(I)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_hint_mode:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1782
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->setParkSoundEffect(I)V

    .line 1783
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v0, "xpilot_hint_mode"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setImageRetentionEnable(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_image_retention:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1772
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->setImageRetentionEnable(Z)V

    .line 1773
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "xpilot_image_retention"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setIslaConfirmMode(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sw"
        }
    .end annotation

    .line 2094
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;->SLA:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;->ISLA:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->setSimpleSasMode(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;)V

    return-void
.end method

.method public setKeyParkSw(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_key_park:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1740
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->setKeyParkSw(Z)V

    .line 1741
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "xpilot_key_park"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLccEnableWithSource(ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "source"
        }
    .end annotation

    .line 1787
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->setLccEnable(ZI)V

    .line 1788
    sget-object p2, Lcom/xiaopeng/track/constant/BID;->xpilot_lcc:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {p2}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method

.method public setLdwEnable(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_ldw:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1424
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->setLdwEnable()V

    .line 1425
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "xpilot_ldw"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLssMode(I)V
    .locals 4
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_lss:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 1549
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;->Off:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 1561
    sget-object v1, Lcom/xiaopeng/unity/xpilot/XPilotManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unity set error lss mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1558
    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;->Lka:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;

    goto :goto_0

    .line 1555
    :cond_1
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;->Ldw:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;

    goto :goto_0

    .line 1552
    :cond_2
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;->Off:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;

    .line 1564
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->setLssMode(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;)V

    .line 1565
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v0, "xpilot_lss"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLssSensitivity(I)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_lss_sen:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1630
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->setLssSensitivity(I)V

    .line 1631
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v0, "xpilot_lss_sen"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setMapUserExperiencePlanState(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2245
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->setMapUserExperiencePlanState(Z)V

    return-void
.end method

.method public setMemParkEnableWithSource(ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "source"
        }
    .end annotation

    .line 1708
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->setMemoryParkSw(ZI)V

    .line 1709
    sget-object p2, Lcom/xiaopeng/track/constant/BID;->xpilot_mem_park:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {p2}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method

.method public setNedcEnable(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_nedc:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2221
    iget-boolean v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mIsSupportXpuNedc:Z

    if-eqz v0, :cond_0

    .line 2222
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->setNedcSwitch(Z)V

    .line 2224
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "xpilot_nedc"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setNgpActivateModeEnable(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_ngp_activate_mode:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1892
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->setNgpActivateModeEnable(Z)V

    .line 1893
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "xpilot_ngp_activate_mode"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setNgpAflEnable(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_ngp_afl:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1948
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->setNgpAflEnable(Z)V

    .line 1949
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "xpilot_ngp_afl"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setNgpCustomPreferenMode(I)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_ngp_custom_prefern:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 2068
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->setNgpPreferLaneCfg(I)V

    .line 2069
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v0, "xpilot_ngp_custom_prefern"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setNgpCustomSpeedKph(I)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_ngp_custom_speed_kph:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2029
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->setNgpCustomSpeedKph(I)V

    .line 2030
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v0, "xpilot_ngp_custom_speed_kph"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setNgpCustomSpeedMode(I)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_ngp_custom_speed_mode:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 2017
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->setNgpCustomSpeedMode(I)V

    .line 2018
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v0, "xpilot_ngp_custom_speed_mode"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setNgpCustomSpeedPercent(I)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_ngp_custom_speed_percent:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2041
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->setNgpCustomSpeedPercent(I)V

    .line 2042
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v0, "xpilot_ngp_custom_speed_percent"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setNgpEnableWithSource(ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "source"
        }
    .end annotation

    .line 1917
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->setNgpEnable(ZI)V

    .line 1918
    sget-object p2, Lcom/xiaopeng/track/constant/BID;->xpilot_ngp:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {p2}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method

.method public setNgpFreeNgpEnable(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_ngp_fngp:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1861
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->setNgpFreeNgpEnable(Z)V

    .line 1862
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "xpilot_ngp_fngp"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setNgpNewAflEnable(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_ngp_new_afl:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1964
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->setNgpNewAflEnable(Z)V

    .line 1965
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "xpilot_ngp_new_afl"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setNgpOvertakeMode(I)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_ngp_overtake_mode:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 1994
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->setNgpOvertakeMode(I)V

    .line 1995
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v0, "xpilot_ngp_overtake_mode"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setNgpRemindMode(I)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_ngp_remind_mode:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 2005
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->setNgpRemindMode(I)V

    .line 2006
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v0, "xpilot_ngp_remind_mode"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setNgpTipsMode(I)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_ngp_tips_mode:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 1898
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->setNgpTipsMode(I)V

    .line 1899
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v0, "xpilot_ngp_tips_mode"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setNgpTruckOffsetEnable(Z)V
    .locals 3
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_ngp_truck_offset:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2056
    sget-object v0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNgpTruckOffsetSw: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2057
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->setNgpTruckOffsetSw(Z)V

    .line 2058
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "xpilot_ngp_truck_offset"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setNgpVoiceChangeLane(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_ngp_voice_change_lane:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1982
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->setNgpVoiceChangeLane(Z)V

    .line 1983
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "xpilot_ngp_voice_change_lane"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setOverseasElkMode(I)V
    .locals 4
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_overseas_elk:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 1603
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasElkMode;->Off:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasElkMode;

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 1615
    sget-object v1, Lcom/xiaopeng/unity/xpilot/XPilotManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unity set error lss mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1612
    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasElkMode;->All:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasElkMode;

    goto :goto_0

    .line 1609
    :cond_1
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasElkMode;->Lka:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasElkMode;

    goto :goto_0

    .line 1606
    :cond_2
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasElkMode;->Off:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasElkMode;

    .line 1618
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->setOverseasElkMode(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasElkMode;)V

    .line 1619
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v0, "xpilot_overseas_elk"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setOverseasIslaMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 2104
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->setOverseasIslaMode(I)V

    return-void
.end method

.method public setOverseasLkaMode(I)V
    .locals 4
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_overseas_lka:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 1576
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasLkaMode;->Off:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasLkaMode;

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 1588
    sget-object v1, Lcom/xiaopeng/unity/xpilot/XPilotManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unity set error lss mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1585
    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasLkaMode;->Lka:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasLkaMode;

    goto :goto_0

    .line 1582
    :cond_1
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasLkaMode;->Ldw:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasLkaMode;

    goto :goto_0

    .line 1579
    :cond_2
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasLkaMode;->Off:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasLkaMode;

    .line 1591
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->setOverseasLkaMode(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasLkaMode;)V

    .line 1592
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v0, "xpilot_overseas_lka"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setRaeb(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_raeb:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1489
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->setRaebEnable(Z)V

    .line 1490
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "xpilot_raeb"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setRctaEnable(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_rcta:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1519
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->setRctaEnable()V

    .line 1520
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "xpilot_rcta"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setRcwEnable(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_rcw:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1504
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->setRcwEnable(Z)V

    .line 1505
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "xpilot_rcw"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSoundSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sw"
        }
    .end annotation

    .line 2077
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->setSoundSw(Z)V

    return-void
.end method

.method public setSsaEnable(Z)V
    .locals 2
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_ssa:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1534
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setSsaSwEnable(ZZ)V

    .line 1535
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "xpilot_ssa"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setTrafficLightEnable(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_traffic_light:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1825
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->setLccTrafficLightSw(Z)V

    .line 1826
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "xpilot_traffic_light"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setVoiceSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sw"
        }
    .end annotation

    .line 2085
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->setVoiceSw(Z)V

    return-void
.end method

.method public setWogSw(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_wog:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1691
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->setWogSw(Z)V

    .line 1692
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "xpilot_wog"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setXpilotUserExperiencePlanState(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2237
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->setXpilotUserExperiencePlanState(Z)V

    return-void
.end method

.method public shouldSkipSafeExam()Z
    .locals 1

    .line 2258
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->skipXpilotExam()Z

    move-result v0

    return v0
.end method

.method public showUserManual(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyword",
            "sharedId"
        }
    .end annotation

    .line 2262
    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/helper/UserBookHelper;->openUserBook(Ljava/lang/String;I)V

    return-void
.end method

.method public stopCheckSafeExamResult()V
    .locals 1

    .line 2159
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->cancelLoop()V

    return-void
.end method
