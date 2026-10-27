.class public Lcom/xiaopeng/unity/carcontrol/SettingsManager;
.super Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;
.source "SettingsManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/ISettingsManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/unity/carcontrol/SettingsManager$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager<",
        "Lcom/xiaopeng/unity/carcontrol/SettingsListener;",
        ">;",
        "Lcom/xiaopeng/unity/carcontrol/ISettingsManager;"
    }
.end annotation


# instance fields
.field private mAudioVm:Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;

.field private mAvasViewModel:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

.field private mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

.field private mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

.field private mLampViewModel:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

.field private mMeterViewModel:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

.field private mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

.field private mScuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

.field private mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

.field private mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

.field private mWindowDoorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

.field private mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$6000(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$6100(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$6300(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$6400(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$6700(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$6800(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private convertBpfMode(Lcom/xiaopeng/carcontrol/viewmodel/chassis/BpfMode;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bpfMode"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 2794
    sget-object v1, Lcom/xiaopeng/unity/carcontrol/SettingsManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$chassis$BpfMode:[I

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/BpfMode;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method private execBootSoundPreview(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shouldPlayPreview"
        }
    .end annotation

    .line 1850
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "com.xiaopeng.intent.action.bootsound"

    .line 1852
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string p1, "com.xiaopeng.intent.action.bootsound.stop"

    .line 1854
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1857
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/App;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1859
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execBootSoundPreview failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method

.method private getVMCSystemFault()Z
    .locals 4

    .line 2114
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getVMCSystemState()Z

    move-result v0

    .line 2115
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVMCSystemFault, enable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static get_instance()Lcom/xiaopeng/unity/carcontrol/SettingsManager;
    .locals 1

    .line 83
    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SettingsManager$Holder;->access$000()Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAbsFault()Z
    .locals 1

    .line 2577
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->isAbsFault()Z

    move-result v0

    return v0
.end method

.method public getAirSuspensionRepairMode()Z
    .locals 4

    .line 2017
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getAirSuspensionRepairMode()Z

    move-result v0

    .line 2018
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAirSuspensionRepairMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getAirSuspensionWelcome()Z
    .locals 4
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->welcome_as:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 2224
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->isAirSuspensionWelcomeEnable()Z

    move-result v0

    .line 2225
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAirSuspensionWelcome, enable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getAsEngineerMode()I
    .locals 1

    .line 2592
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getAsEngineerMode()Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsEngineerMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2594
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsEngineerMode;->toBcmCmd()I

    move-result v0

    return v0

    .line 2596
    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsEngineerMode;->NO_REQUEST:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsEngineerMode;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsEngineerMode;->toBcmCmd()I

    move-result v0

    return v0
.end method

.method public getAsFault()Z
    .locals 4

    .line 2174
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getAsFaultStatus()Z

    move-result v0

    .line 2175
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAsFault, fault: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getAsRequestEspState()I
    .locals 4

    .line 2545
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getAsRequestEspState()I

    move-result v0

    .line 2546
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAsRequestEspState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getAutoDoorHandleEnable()Z
    .locals 4
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->windowdoor_dhc_sw:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 1613
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mWindowDoorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isAutoDoorHandleEnabled()Z

    move-result v0

    .line 1614
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAutoDoorHandleEnable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getAutoEasyLoadMode()Z
    .locals 4
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->windowdoor_auto_easy_load:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 2254
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->isAutoEasyLoadingMode()Z

    move-result v0

    .line 2255
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAutoEasyLoadingMode, enable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getAutoPowerOffConfig()Z
    .locals 1

    .line 2774
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getAutoPowerOffConfig()Z

    move-result v0

    return v0
.end method

.method public getAutoWindowLockSw()Z
    .locals 4
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->windowdoor_lock_auto_win_close:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 1659
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mWindowDoorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getAutoWindowLockSw()Z

    move-result v0

    .line 1660
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAutoWindowLockSw: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getAvasLowSpdEffect()I
    .locals 5
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->sound_low_speed_mode:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 1903
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mAvasViewModel:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->isLowSpdEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1904
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mAvasViewModel:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->getLowSpdEffect()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1906
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAvasLowSpdEffect, value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getAvasLowSpdEffectWithoutOff()I
    .locals 4

    .line 1891
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mAvasViewModel:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->getLowSpdEffect()I

    move-result v0

    .line 1892
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAvasLowSpdEffectWithoutOff, value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getAvasSpeakerSw()Z
    .locals 4

    .line 1947
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mAvasViewModel:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->getAvasSpeakerSw()Z

    move-result v0

    .line 1948
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAvasSpeakerSw, enable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getAvhFault()Z
    .locals 4

    .line 2156
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getAvhFault()Z

    move-result v0

    .line 2157
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAvhFault, fault: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getAvhSw()Z
    .locals 4
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->drive_settings_avh:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 2046
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getAvhForUI()Z

    move-result v0

    .line 2047
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAvhSw, enable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getAwdSetting()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->drive_settings_awd:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 2720
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getAwdSetting()I

    move-result v0

    return v0
.end method

.method public getBackBeltSw()Z
    .locals 4
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->drive_settings_rsur:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 2286
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getBackBeltSw()Z

    move-result v0

    .line 2287
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBackBeltSw: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getBootEffectBeforeSw()I
    .locals 4

    .line 1864
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mAvasViewModel:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->getBootEffectBeforeSw()I

    move-result v0

    .line 1865
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBootEffectBeforeSw, value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getBootSoundEffectValue()I
    .locals 4
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->welcome_boot_effect_item:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 1798
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mAvasViewModel:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->getBootSoundEffect()I

    move-result v0

    .line 1799
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBootSoundEffectValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getCarpetLightWelcomeMode()Z
    .locals 4
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->welcome_carpet:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 1765
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mLampViewModel:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getCarpetLightWelcomeMode()Z

    move-result v0

    .line 1766
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCarpetLightWelcomeMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getCdcuTrailerModeStatus()Z
    .locals 1

    .line 2567
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getCdcuTrailerModeStatus()Z

    move-result v0

    return v0
.end method

.method public getCwcFRSwEnable()Z
    .locals 4
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->charge_cwc_psn:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 2433
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->isCwcFRSwEnable()Z

    move-result v0

    .line 2434
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCwcFRSwEnable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getCwcRLSwEnable()Z
    .locals 4
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->charge_cwc_sec_left:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 2448
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->isCwcRLSwEnable()Z

    move-result v0

    .line 2449
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCwcRLSwEnable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getCwcRRSwEnable()Z
    .locals 4
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->charge_cwc_sec_right:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 2463
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->isCwcRRSwEnable()Z

    move-result v0

    .line 2464
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCwcRRSwEnable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getCwcSwEnable()Z
    .locals 4
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->charge_cwc_drv:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 2416
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->isCwcSwEnable()Z

    move-result v0

    .line 2417
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCwcSwEnable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getDoorKeyValue()I
    .locals 4

    .line 2538
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mMeterViewModel:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->getDoorKeyForCustomer()I

    move-result v0

    .line 2539
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDoorKeyValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getDsmStatus()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->about_sap_vehicle_camera:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 2513
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mScuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getDsmState()Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmState;

    move-result-object v0

    .line 2514
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmState;->toScuCode()I

    move-result v0

    return v0
.end method

.method public getDtcFaultStatus()Z
    .locals 1

    .line 2572
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getDtcFaultStatus()Z

    move-result v0

    return v0
.end method

.method public getEasyLoadingSwitch()Z
    .locals 4

    .line 2239
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->isEasyLoadingEnable()Z

    move-result v0

    .line 2240
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEasyLoadingEnable, enable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getEpbSystemStatus()I
    .locals 4
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->drive_settings_epb:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 1963
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getApbSystemStatus()I

    move-result v0

    .line 1964
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEpbSystemStatus, status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getEsbMode()Z
    .locals 4
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_pbvw:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 2270
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getEsbMode()Z

    move-result v0

    .line 2271
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEsbMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getEspBpfMode()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->drive_settings_bpf:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 2708
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getEspBpfModeValue()Lcom/xiaopeng/carcontrol/viewmodel/chassis/BpfMode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->convertBpfMode(Lcom/xiaopeng/carcontrol/viewmodel/chassis/BpfMode;)I

    move-result v0

    return v0
.end method

.method public getEspCstSw()Z
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->drive_settings_espcst:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 2678
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getEspCstSw()Z

    move-result v0

    return v0
.end method

.method public getEspFault()Z
    .locals 4

    .line 2147
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getEspFault()Z

    move-result v0

    .line 2148
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEspFault, fault: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getEspSw()Z
    .locals 4
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->drive_settings_esp:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 2078
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getEspForUI()Z

    move-result v0

    .line 2079
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEspSw, enable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getHdc()Z
    .locals 4
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->drive_settings_hdc:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 2062
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getHdcFault()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getHdc()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2063
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHdc, enable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getHdcFault()Z
    .locals 4

    .line 2165
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getHdcFault()Z

    move-result v0

    .line 2166
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHdcFault, fault: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getHighSpdCloseWin()Z
    .locals 4
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->windowdoor_high_speed_win_close:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 1675
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mWindowDoorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isHighSpdCloseWinEnabled()Z

    move-result v0

    .line 1676
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isHighSpdCloseWinEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getLeaveAutoLock()Z
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->windowdoor_leave_lock:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 2743
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getLeaveAutoLock()Z

    move-result v0

    return v0
.end method

.method public getLeftChildLock()Z
    .locals 4
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->windowdoor_left_child_lock:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 1691
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->isLeftChildLocked()Z

    move-result v0

    .line 1692
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLeftChildLock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getLeftSlideDoorMode()I
    .locals 1

    .line 2754
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mWindowDoorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getLeftSlideDoorMode()I

    move-result v0

    return v0
.end method

.method public getLockResponseNew()I
    .locals 4
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->windowdoor_lock_feedback:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 1581
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getLockResponseNew()I

    move-result v0

    .line 1582
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLockResponseNew, mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getMicrophoneMute()Z
    .locals 4
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->about_sap_inner_mic:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 2490
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mAudioVm:Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->isMicrophoneMute()Z

    move-result v0

    .line 2491
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMicrophoneMute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getNGearWarningSwitch()Z
    .locals 4

    .line 2384
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getNGearWarningSwitchStatus()Z

    move-result v0

    .line 2385
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNGearWarningSwitch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getNearUnlock()Z
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->windowdoor_near_unlock:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 2731
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getNearUnlock()Z

    move-result v0

    return v0
.end method

.method public getNewDriveArchXPedalMode()Z
    .locals 4

    .line 2008
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getNewDriveArchXPedalMode()Z

    move-result v0

    .line 2009
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNewDriveArchXPedalMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getNgpMode()I
    .locals 1

    .line 2359
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mScuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getNgpMode()I

    move-result v0

    return v0
.end method

.method public getParkDropdownMenuEnable()Z
    .locals 1

    .line 2661
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getParkDropdownMenuEnable()Z

    move-result v0

    return v0
.end method

.method public getParkingAutoUnlock()Z
    .locals 4
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->windowdoor_parking_unlock:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 1629
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getParkingAutoUnlock()Z

    move-result v0

    .line 1630
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getParkingAutoUnlock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getPhoneRemindSw()Z
    .locals 1

    .line 2482
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getPhoneReminderSw()Z

    move-result v0

    return v0
.end method

.method public getPollingLightWelcomeMode()Z
    .locals 4
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->welcome_polling_light:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 1780
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mLampViewModel:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getPollingLightWelcomeMode()Z

    move-result v0

    .line 1781
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPollingLightWelcomeMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getPsnSrsEnable()Z
    .locals 4

    .line 2365
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPsnSrsEnable()Z

    move-result v0

    .line 2366
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPsnSrsEnable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getPsnWelcomeMode()Z
    .locals 4
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->welcome_psn:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 1736
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isPsnWelcomeEnabled()Z

    move-result v0

    .line 1737
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPsnWelcomeMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getRearLeaveRemindWarningSw()Z
    .locals 1

    .line 2784
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRearLeaveRemindWarningSw()Z

    move-result v0

    return v0
.end method

.method public getRearSeatWelcomeMode()Z
    .locals 4
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->welcome_rear:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 1750
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isRearSeatWelcomeEnabled()Z

    move-result v0

    .line 1751
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRearSeatWelcomeMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getRightChildLock()Z
    .locals 4
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->windowdoor_right_child_lock:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 1704
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->isRightChildLocked()Z

    move-result v0

    .line 1705
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRightChildLock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getRightSlideDoorMode()I
    .locals 1

    .line 2764
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mWindowDoorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getRightSlideDoorMode()I

    move-result v0

    return v0
.end method

.method public getRws()Z
    .locals 4
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->drive_settings_rws:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 2091
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getVMCRwsSwitchState()Z

    move-result v0

    .line 2092
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRws, enable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getSdcBrakeCloseDoorCfg()I
    .locals 1

    .line 2636
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mWindowDoorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getSdcBrakeCloseDoorCfg()I

    move-result v0

    return v0
.end method

.method public getSdcKeyCfg()I
    .locals 1

    .line 2606
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mWindowDoorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getSdcKeyCfg()I

    move-result v0

    return v0
.end method

.method public getSdcMaxAutoDoorOpeningAngle()I
    .locals 1

    .line 2626
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mWindowDoorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getSdcMaxAutoDoorOpeningAngle()I

    move-result v0

    return v0
.end method

.method public getSdcWinAutoDown()Z
    .locals 1

    .line 2616
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mWindowDoorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getSdcWinAutoDown()Z

    move-result v0

    return v0
.end method

.method public getSecRowLeftSeatBeltWarning()Z
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->about_sec_left_seat_belt_warning:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 2304
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowLeftSeatBeltWarning()Z

    move-result v0

    return v0
.end method

.method public getSecRowMiddleSeatBeltWarning()Z
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->about_sec_mid_seat_belt_warning:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 2314
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowMiddleSeatBeltWarning()Z

    move-result v0

    return v0
.end method

.method public getSecRowRightSeatBeltWarning()Z
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->about_sec_right_seat_belt_warning:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 2324
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowRightSeatBeltWarning()Z

    move-result v0

    return v0
.end method

.method public getSnowMode()Z
    .locals 4
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->drive_settings_snowmode:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 2122
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getSnowMode()Z

    move-result v0

    .line 2123
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSnowMode, enable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getStopNfcCardSw()Z
    .locals 4

    .line 1644
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getStopNfcCardSw()Z

    move-result v0

    .line 1645
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStopNfcCardSw: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getTorsionBarTorque()F
    .locals 1

    .line 2641
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTorsionBarTorque()F

    move-result v0

    return v0
.end method

.method public getTrailerModeStatus()Z
    .locals 4

    .line 1987
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getTrailerModeStatus()Z

    move-result v0

    .line 1988
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTrailerModeStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getTrdRowLeftSeatBeltWarning()Z
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->about_trd_left_seat_belt_warning:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 2334
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowLeftSeatBeltWarning()Z

    move-result v0

    return v0
.end method

.method public getTrdRowMiddleSeatBeltWarning()Z
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->about_trd_mid_seat_belt_warning:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 2344
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowMiddleSeatBeltWarning()Z

    move-result v0

    return v0
.end method

.method public getTrdRowRightSeatBeltWarning()Z
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->about_trd_right_seat_belt_warning:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 2354
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowRightSeatBeltWarning()Z

    move-result v0

    return v0
.end method

.method public getTrunkFullOpenPos()I
    .locals 4
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->windowdoor_trunk_open_angle:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 2208
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mWindowDoorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getTrunkFullOpenPos()I

    move-result v0

    .line 2209
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTrunkFullOpenPos: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getTrunkSensorEnable()Z
    .locals 4
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->windowdoor_sensor_trunk:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 2192
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mWindowDoorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isTrunkSensorEnable()Z

    move-result v0

    .line 2193
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTrunkSensorEnable, enable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getTsmFaultStatus()Z
    .locals 1

    .line 2557
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTsmFaultStatus()Z

    move-result v0

    return v0
.end method

.method public getTtmDenormalizeStatus()Z
    .locals 1

    .line 2587
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTtmDenormalizeStatus()Z

    move-result v0

    return v0
.end method

.method public getTtmLampConnectStatus()Z
    .locals 1

    .line 2582
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTtmLampConnectStatus()Z

    move-result v0

    return v0
.end method

.method public getTtmStatus()I
    .locals 4

    .line 2027
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTrailerHitchStatus()Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    move-result-object v0

    .line 2028
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTtmStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2029
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;->toBcmCmd()I

    move-result v0

    return v0
.end method

.method public getTtmSystemError()Z
    .locals 1

    .line 2552
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTtmSystemError()Z

    move-result v0

    return v0
.end method

.method public getUnLockResponseNew()I
    .locals 4
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->windowdoor_unlock_feedback:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 1596
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getUnLockResponseNew()I

    move-result v0

    .line 1597
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUnLockResponseNew, mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getUnlockResponse()I
    .locals 4

    .line 1568
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getUnlockResponse()I

    move-result v0

    .line 1569
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUnlockResponse, mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getWelcomeMode()Z
    .locals 4
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->welcome_drv:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 1720
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isWelcomeModeEnabled()Z

    move-result v0

    .line 1721
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWelcomeMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getWiperSensitivity()I
    .locals 4
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->windowdoor_wiper_level:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 2400
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getWiperIntervalValue()Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;->toSensitivityBcmCmd()I

    move-result v0

    .line 2401
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWiperSensitivity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getXKeyValue()I
    .locals 4

    .line 2528
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mMeterViewModel:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->getXKeyForCustomer()I

    move-result v0

    .line 2529
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getXKeyValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getZWalk()Z
    .locals 4

    .line 2103
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getVMCZWalkModeState()Z

    move-result v0

    .line 2104
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getZWalk, enable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public initInternal()V
    .locals 2

    .line 88
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    .line 89
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ICarBodyViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    iput-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    .line 90
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    iput-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mWindowDoorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    .line 91
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    iput-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    .line 92
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/avas/IAvasViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    iput-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mAvasViewModel:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    .line 93
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/IChassisViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    iput-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    .line 94
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/audio/IAudioViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;

    iput-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mAudioVm:Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;

    .line 95
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    iput-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mScuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    .line 96
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/meter/IMeterViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    iput-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mMeterViewModel:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    .line 97
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    iput-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    .line 98
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/scenario/IScenarioViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    iput-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    .line 99
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/xpu/IXpuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    iput-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    .line 100
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILampViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mLampViewModel:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    .line 102
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->set_listener(Lcom/xiaopeng/unity/carcontrol/base/INapaListener;)V

    return-void
.end method

.method public isAsFaultForAsRepair()Z
    .locals 1

    .line 2184
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->isAsFaultForAsRepair()Z

    move-result v0

    return v0
.end method

.method public isBreakPedalPressed()Z
    .locals 4

    .line 1978
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->isBreakPedalPressed()Z

    move-result v0

    .line 1979
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBreakPedalPressed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public isCngpRunning()Z
    .locals 1

    .line 2656
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mScuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->isCngpRunning()Z

    move-result v0

    return v0
.end method

.method public isExhibitionModeOn()Z
    .locals 1

    .line 2725
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->isExhibitionModeOn()Z

    move-result v0

    return v0
.end method

.method public isLccRunning()Z
    .locals 2

    .line 2651
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mScuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getLccWorkSt()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLowSpdSoundEnabled()Z
    .locals 4
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->sound_low_speed_outside:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 1877
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mAvasViewModel:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->isLowSpdEnabled()Z

    move-result v0

    .line 1878
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLowSpdSoundEnabled, value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public isMudDriveMode()Z
    .locals 5

    .line 2138
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->OffRoad:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getDriveModeValue()Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2139
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isMudDriveMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public isNgpRunning()Z
    .locals 1

    .line 2646
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mScuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->isNgpRunning()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$observeData$0$SettingsManager(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "unlockResponse"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 961
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;->Light:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 963
    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;->LightAndHorn:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;

    if-ne p1, v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 965
    :cond_1
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;->LightAndAvas:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;

    if-ne p1, v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 968
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v3, :cond_3

    if-eq v0, v2, :cond_3

    .line 969
    iget-object v2, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v2, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-interface {v2, v0}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onUnlockResponseChanged(I)V

    .line 971
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUnlockResponseChanged, unlockResponse: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_4
    return-void
.end method

.method public synthetic lambda$observeData$1$SettingsManager(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "lockResponse"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 978
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;->Light:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 980
    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;->LightAndHorn:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;

    if-ne p1, v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 982
    :cond_1
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;->LightAndAvas:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;

    if-ne p1, v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 985
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v3, :cond_3

    if-eq v0, v2, :cond_3

    .line 986
    iget-object v2, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v2, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-interface {v2, v0}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onLockResponseNewChanged(I)V

    .line 988
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLockResponseNewChanged, lockResponse: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_4
    return-void
.end method

.method public synthetic lambda$observeData$10$SettingsManager(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enable"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1067
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1068
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onWelcomeModeChanged(Z)V

    .line 1070
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWelcomeModeChanged, enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$11$SettingsManager(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enable"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1076
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1077
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onPsnWelcomeModeChanged(Z)V

    .line 1079
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPsnWelcomeModeChanged, enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$12$SettingsManager(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enable"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1086
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1087
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onRearSeatWelcomeModeChanged(Z)V

    .line 1089
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRearSeatWelcomeModeChanged, enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$13$SettingsManager(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enable"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1096
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1097
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onCarpetLightWelcomeChanged(Z)V

    .line 1099
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCarpetLightWelcomeChanged, enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$14$SettingsManager(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enable"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1107
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1108
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onPollingLightWelcomeChanged(Z)V

    .line 1110
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPollingLightWelcomeChanged, enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$15$SettingsManager(Ljava/lang/Boolean;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enabled"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1116
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_1

    .line 1117
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onAvasLowSpdEnableChanged(Z)V

    .line 1118
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mAvasViewModel:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->getLowSpdEffect()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onAvasLowSpdEffectChanged(I)V

    .line 1119
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLowSpdSwData, enable: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$16$SettingsManager(Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "effect"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1123
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1124
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mAvasViewModel:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->isLowSpdEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1125
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;->toAvasType()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onAvasLowSpdEffectChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$17$SettingsManager(Ljava/lang/Integer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "status"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1132
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1133
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onEpbStatusChanged(I)V

    .line 1135
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEpbStatusChanged, status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$18$SettingsManager(Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "status"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1140
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1141
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;->toBcmCmd()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onTtmStatusChanged(I)V

    .line 1142
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleTtmSwitchStatusChanged status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;->toBcmCmd()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$19$SettingsManager(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enable"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1148
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1149
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getAvhForUI()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onAvhSwChanged(Z)V

    .line 1151
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAvhSwChanged, enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$2$SettingsManager(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "unLockResponse"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 995
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;->Light:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 997
    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;->LightAndHorn:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;

    if-ne p1, v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 999
    :cond_1
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;->LightAndAvas:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;

    if-ne p1, v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1002
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v3, :cond_3

    if-eq v0, v2, :cond_3

    .line 1003
    iget-object v2, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v2, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-interface {v2, v0}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onUnLockResponseNewChanged(I)V

    .line 1005
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUnLockResponseNewChanged, unLockResponse: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_4
    return-void
.end method

.method public synthetic lambda$observeData$20$SettingsManager(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "isFault"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1156
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1157
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getAvhForUI()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onAvhSwChanged(Z)V

    .line 1159
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAvhFaultData, isFault: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$21$SettingsManager(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enabled"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1164
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1165
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onHdcSwChanged(Z)V

    .line 1167
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHdcSwChanged, enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$22$SettingsManager(Ljava/lang/Boolean;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "isFault"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1172
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1173
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1174
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onHdcSwChanged(Z)V

    goto :goto_0

    .line 1176
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    iget-object v2, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getHdc()Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onHdcSwChanged(Z)V

    .line 1179
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHdcFaultData, isFault: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public synthetic lambda$observeData$23$SettingsManager(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enable"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1184
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1185
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onAsWelcomeModeChanged(Z)V

    .line 1187
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAsWelcomeModeChanged, enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$24$SettingsManager(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enable"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1192
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1193
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onEasyLoadingModeChanged(Z)V

    .line 1195
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEasyLoadingModeChanged, enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$25$SettingsManager(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enable"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1200
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1201
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onAutoEasyLoadModeChanged(Z)V

    .line 1203
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAutoEasyLoadModeChanged, enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$26$SettingsManager(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mode"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1208
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1209
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getEspForUI()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onEspSwChanged(Z)V

    .line 1211
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mChassisViewModel onEspSwChanged getEspModeData, mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$27$SettingsManager(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "fault"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1216
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1217
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getEspForUI()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onEspSwChanged(Z)V

    .line 1219
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mChassisViewModel onEspSwChanged getEspFaultData, fault "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$28$SettingsManager(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enable"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1224
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1225
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onSnowModeChanged(Z)V

    .line 1227
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVcuViewModel getSnowModeData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$29$SettingsManager(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enable"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1232
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1233
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onTrunkSensorSwChanged(Z)V

    .line 1235
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrunkSensorSwChanged, enable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$3$SettingsManager(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enable"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1011
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1012
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onDoorHandleSwChanged(Z)V

    .line 1014
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDoorHandleSwChanged, enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$30$SettingsManager(Ljava/lang/Integer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1240
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1241
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onTrunkFullOpenPosChanged(I)V

    .line 1243
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrunkFullOpenPosChanged, pos "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$31$SettingsManager(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enabled"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1248
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1249
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onEsbModeChanged(Z)V

    .line 1251
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEsbModeChanged, enable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$32$SettingsManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enabled"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1256
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1257
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onBackBeltWaringChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$33$SettingsManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enabled"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1264
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1265
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onSecLeftBeltWarningStateChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$34$SettingsManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enabled"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1271
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1272
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onSecMidBeltWarningStateChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$35$SettingsManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enabled"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1278
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1279
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onSecRightBeltWarningStateChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$36$SettingsManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enabled"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1285
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1286
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onTrdLeftBeltWarningStateChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$37$SettingsManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enabled"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1292
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1293
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onTrdMidBeltWarningStateChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$38$SettingsManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enabled"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1299
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1300
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onTrdRightBeltWarningStateChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$39$SettingsManager(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enable"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1306
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1307
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onPsnSrsStatusChanged(Z)V

    .line 1309
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPsnSrsEnableData, enable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$4$SettingsManager(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enable"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1019
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1020
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onParkingAutoUnlockSwChanged(Z)V

    .line 1022
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onParkingAutoUnlockSwChanged, enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$40$SettingsManager(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enable"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1314
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1315
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onNGearWarningSwChanged(Z)V

    .line 1317
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNGearWarningSwChanged, enable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$41$SettingsManager(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "interval"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1322
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1323
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;->toSensitivityBcmCmd()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onWiperSensitivityChanged(I)V

    .line 1325
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWiperSensitivityChanged, interval "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$42$SettingsManager(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enable"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1330
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1331
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onCwcSwChanged(Z)V

    .line 1333
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCwcSwChanged, enable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$43$SettingsManager(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enable"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1339
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1340
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onCwcFRSwChanged(Z)V

    .line 1342
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCwcFRSwChanged, enable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$44$SettingsManager(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enable"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1349
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1350
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onCwcRLSwChanged(Z)V

    .line 1352
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCwcRLSwChanged, enable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$45$SettingsManager(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enable"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1359
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1360
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onCwcRRSwChanged(Z)V

    .line 1362
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCwcRRSwChanged, enable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$46$SettingsManager(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enable"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1368
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1369
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onPhoneRemindChanged(Z)V

    .line 1371
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPhoneRemindChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$47$SettingsManager(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mute"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1376
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1377
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onMicrophoneMuteSwChanged(Z)V

    .line 1379
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMicrophoneMuteSwChanged, mute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$48$SettingsManager(Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmState;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "state"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1385
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1386
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmState;->toScuCode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onDsmStatusChanged(I)V

    .line 1387
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDsmStatusChanged, state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$49$SettingsManager(Ljava/lang/Integer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "effect"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1394
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1395
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onBootEffectChanged(I)V

    .line 1397
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBootEffectChanged, effect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$5$SettingsManager(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enable"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1027
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1028
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onStopNfcSwChanged(Z)V

    .line 1030
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStopNfcSwChanged, enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$50$SettingsManager(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enable"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1402
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1403
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onTrailerModeStatusChanged(Z)V

    .line 1405
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrailerModeStatusChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$51$SettingsManager(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "isErr"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1420
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1421
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onTtmSysErrStatusChanged(Z)V

    .line 1423
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTtmSysErrStatusChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$52$SettingsManager(Ljava/lang/Integer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "cfg"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1431
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1432
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onSdcKeyCfgChanged(I)V

    .line 1434
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSdcKeyCfgChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$53$SettingsManager(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "auto"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1440
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1441
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onSdcWinAutoDown(Z)V

    .line 1443
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSdcWinAutoDown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$54$SettingsManager(Ljava/lang/Integer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "angle"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1449
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1450
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onSdcMaxDoorOpeningAngleChanged(I)V

    .line 1452
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSdcMaxDoorOpeningAngleChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$55$SettingsManager(Ljava/lang/Integer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "cfg"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1458
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1459
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onSdcBrakeCloseDoorCfgChanged(I)V

    .line 1461
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSdcBrakeCloseDoorCfgChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$56$SettingsManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enabled"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1467
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1468
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onParkDropdownMenuChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$57$SettingsManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1474
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1475
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onEspCstSwChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$58$SettingsManager(Lcom/xiaopeng/carcontrol/viewmodel/chassis/BpfMode;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "bpfMode"
        }
    .end annotation

    .line 1482
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1483
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-direct {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->convertBpfMode(Lcom/xiaopeng/carcontrol/viewmodel/chassis/BpfMode;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onEspBpfModeChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$59$SettingsManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mode"
        }
    .end annotation

    .line 1490
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1491
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onAwdSettingChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$6$SettingsManager(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enable"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1035
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1036
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onAutoWindowLockSwChanged(Z)V

    .line 1038
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAutoWindowLockSwChanged, enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$60$SettingsManager(Ljava/lang/Boolean;)V
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

    .line 1496
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1497
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onNearUnlockStatusChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$61$SettingsManager(Ljava/lang/Boolean;)V
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

    .line 1501
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1502
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onLeaveLockStatusChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$62$SettingsManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mode"
        }
    .end annotation

    .line 1507
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1508
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onLeftSlideDoorModeChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$63$SettingsManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mode"
        }
    .end annotation

    .line 1512
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1513
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onRightSlideDoorModeChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$64$SettingsManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "auto"
        }
    .end annotation

    .line 1520
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1521
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onAutoPowerOffConfigStatusChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$65$SettingsManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mode"
        }
    .end annotation

    .line 1527
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1528
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onRwsModeChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$66$SettingsManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mode"
        }
    .end annotation

    .line 1533
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1534
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onZwalkModeChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$67$SettingsManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mode"
        }
    .end annotation

    .line 1539
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1540
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onVMCSystemStateChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$7$SettingsManager(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enable"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1043
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1044
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onHighSpdCloseWinSwChanged(Z)V

    .line 1046
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHighSpdCloseWinSwChanged, enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$8$SettingsManager(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "lock"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1051
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1052
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onLeftChildLockChanged(Z)V

    .line 1054
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLeftChildLockChanged, enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$9$SettingsManager(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "lock"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1059
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1060
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SettingsListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsListener;->onRightChildLockChanged(Z)V

    .line 1062
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRightChildLockChanged, enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method protected observeData()V
    .locals 2

    .line 958
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getUnlockResponseData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$IjGGWSgr5jzy6anLfHMmInr3naE;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$IjGGWSgr5jzy6anLfHMmInr3naE;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    const-string v0, "isSupportLockUnLockRspSep"

    .line 974
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 975
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getLockResponseNewData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$p0f1SMXRP7IXisnEA8Nm2L84M14;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$p0f1SMXRP7IXisnEA8Nm2L84M14;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 992
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getUnLockResponseNewData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$DOU1ieCfgOm4_kns4xLZ5NSSsGo;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$DOU1ieCfgOm4_kns4xLZ5NSSsGo;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1009
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mWindowDoorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getDoorHandle()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$pQgG36PXPtvip1xazF6L3fv8S1I;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$pQgG36PXPtvip1xazF6L3fv8S1I;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1017
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getParkingAutoUnlockData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$ZmKYJY49dYyYHnAcej8ON39iTOI;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$ZmKYJY49dYyYHnAcej8ON39iTOI;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1025
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getStopNfcSwData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$z0AGRU-fHOvLAuBh4G6udQG686M;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$z0AGRU-fHOvLAuBh4G6udQG686M;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1033
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mWindowDoorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getAutoWindowLockSwData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$1JSmAZADA9IH38ADqkaoqwEr6js;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$1JSmAZADA9IH38ADqkaoqwEr6js;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1041
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mWindowDoorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getHighSpdCloseWinSwData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$lermN99TOaNEdS3M8Ne_tFsVTxw;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$lermN99TOaNEdS3M8Ne_tFsVTxw;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1049
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getLeftChildLockData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$piEUdhPoK1ZlqMSRBP5fhw5WqQo;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$piEUdhPoK1ZlqMSRBP5fhw5WqQo;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1057
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getRightChildLockData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$QyNfRVaugUOIyEnSTMZh_PLMj_4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$QyNfRVaugUOIyEnSTMZh_PLMj_4;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1065
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getWelcomeModeData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$MGINy_byogu635FEmPwC1fBq6io;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$MGINy_byogu635FEmPwC1fBq6io;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    const-string v0, "isSupportPsnWelcomeMode"

    .line 1073
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1074
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPsnSeatWelcomeMode()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$snlKlPWEGeLC-YI0XFlH6JBOfoY;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$snlKlPWEGeLC-YI0XFlH6JBOfoY;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_1
    const-string v0, "isSupportRearSeatWelcomeMode"

    .line 1083
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1084
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRearSeatWelcomeMode()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$4_fkuGlS1d0TR6EVIyIlUr6myiA;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$4_fkuGlS1d0TR6EVIyIlUr6myiA;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_2
    const-string v0, "isSupportCarpetLightWelcomeMode"

    .line 1093
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1094
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mLampViewModel:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getCarpetLightWelcomeSwData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$1qRDN-K0P7fmZU5UZMJRb7-yCWs;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$1qRDN-K0P7fmZU5UZMJRb7-yCWs;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_3
    const-string v0, "isSupportPollingLightWelcomeMode"

    .line 1104
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1105
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mLampViewModel:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getPollingLightWelcomeSwData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$UnvSkxW2PCYNEKyVAl_eUM_3aRQ;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$UnvSkxW2PCYNEKyVAl_eUM_3aRQ;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1115
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mAvasViewModel:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->getLowSpdSwData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$ACOEDOhM9xRsEWh_Vejx6Har3fc;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$ACOEDOhM9xRsEWh_Vejx6Har3fc;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1122
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mAvasViewModel:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->getAvasLowSpdEffectData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$-kZBoN7kUZWTNVeBKE0oWXXjyTM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$-kZBoN7kUZWTNVeBKE0oWXXjyTM;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1130
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getApbStatusData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$lo8ob5MNx5IlrnRED6wW_B8C9nM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$lo8ob5MNx5IlrnRED6wW_B8C9nM;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1138
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTtmSwitchData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$SQWk2tOihBHcGat4fkJ7MzBzt4U;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$SQWk2tOihBHcGat4fkJ7MzBzt4U;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1146
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getAvhSwData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$YzB4BsjCopqW9CLZnw6Omw7VCHY;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$YzB4BsjCopqW9CLZnw6Omw7VCHY;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1154
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getAvhFaultData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$gHRmDuE-t0HoifmFpZU-9X3-mBA;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$gHRmDuE-t0HoifmFpZU-9X3-mBA;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1162
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getHdcData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$OPzZQk1XeVcws8CnszXOf6kn43c;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$OPzZQk1XeVcws8CnszXOf6kn43c;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1170
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getHdcFaultData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$ULSDHW9-T-gTEsKkLCnEf6pXM5Q;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$ULSDHW9-T-gTEsKkLCnEf6pXM5Q;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1182
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getAsWelcomeMode()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$WlxkoemBdCtpxKM56oC5DWMum-4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$WlxkoemBdCtpxKM56oC5DWMum-4;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1190
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getAsEasyLoadingMode()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$QEY6hgAoRFasDplHDFixTGhMSJM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$QEY6hgAoRFasDplHDFixTGhMSJM;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1198
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getAsAutoEasyLoadMode()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$1wHHBLK2m1VYiz5yp6puNi3cx64;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$1wHHBLK2m1VYiz5yp6puNi3cx64;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1206
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getEspModeData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$VWLySGKh5wtSKQkSBZ1j8z2BgpU;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$VWLySGKh5wtSKQkSBZ1j8z2BgpU;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1214
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getEspFaultData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$qpDGEO5T3RI38TKZ-ZXjNOK9B1Y;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$qpDGEO5T3RI38TKZ-ZXjNOK9B1Y;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1222
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getSnowModeData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$8i-0IYbeKq9tzSiKWMa3YZLp6Mo;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$8i-0IYbeKq9tzSiKWMa3YZLp6Mo;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1230
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mWindowDoorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getTrunkSensorData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$YuPQVAVfIm0s6cksgeBM3rA46ok;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$YuPQVAVfIm0s6cksgeBM3rA46ok;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1238
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mWindowDoorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getTrunkFullOpenPosData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$Xn-Hpe0GwP1mwnZjobfebPt4c8c;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$Xn-Hpe0GwP1mwnZjobfebPt4c8c;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1246
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getEsbModeData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$2yskCE4vEhIMndyYqjEGJHee388;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$2yskCE4vEhIMndyYqjEGJHee388;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1254
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getBackBeltWaringData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$U2CuJrnip91Jy_tTLuOV_oYnO-A;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$U2CuJrnip91Jy_tTLuOV_oYnO-A;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1262
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecLeftBeltWarningData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$A-PYpIY8sug79qAay0pOtN75vA4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$A-PYpIY8sug79qAay0pOtN75vA4;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1269
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecMidBeltWarningData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$jwHd9nCHS9uBwwxk52vi8e5C4uI;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$jwHd9nCHS9uBwwxk52vi8e5C4uI;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1276
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRightBeltWarningData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$779eWMk-DQ3MFQJxJ3rZGN0dPi8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$779eWMk-DQ3MFQJxJ3rZGN0dPi8;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1283
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdLeftBeltWarningData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$gpwt2_DgPab2K9G8K5sFgpKe-DU;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$gpwt2_DgPab2K9G8K5sFgpKe-DU;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1290
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdMidBeltWarningData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$xB6-dPyXCHRqrGD6I08mVJcWaTU;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$xB6-dPyXCHRqrGD6I08mVJcWaTU;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1297
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRightBeltWarningData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$YpbTjDS7bYXm625TlUf4-2OfZ7o;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$YpbTjDS7bYXm625TlUf4-2OfZ7o;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1304
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPsnSrsEnableData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$Az9Wg_yJdyjy5z7D0Fs-T_vp1TU;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$Az9Wg_yJdyjy5z7D0Fs-T_vp1TU;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1312
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getNGearWarningSwData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$VjyfPotyVZVyTg8EtE3Mskp2ZN0;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$VjyfPotyVZVyTg8EtE3Mskp2ZN0;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1320
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getWiperIntervalData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$Jhs-0XuXvphEu4WvondrKmLS-b4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$Jhs-0XuXvphEu4WvondrKmLS-b4;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1328
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getCwcSwData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$_MNMccj6Y_PYwiPXswu7IynERog;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$_MNMccj6Y_PYwiPXswu7IynERog;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    const-string v0, "isSupportCwcFR"

    .line 1336
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1337
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getCwcFRSwData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$z5Zuu4p2fQAhkfLu8anoejij09s;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$z5Zuu4p2fQAhkfLu8anoejij09s;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_5
    const-string v0, "isSupportCwcRL"

    .line 1346
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1347
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getCwcRLSwData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$zfed2MmXkh4zxQspQViL5KnFldQ;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$zfed2MmXkh4zxQspQViL5KnFldQ;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_6
    const-string v0, "isSupportCwcRR"

    .line 1356
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1357
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getCwcRRSwData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$LSWCWgghA6uBixCU1w72Xde3o-A;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$LSWCWgghA6uBixCU1w72Xde3o-A;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1366
    :cond_7
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getPhoneRemindData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$QgPO1CuoJsCtN9Z9wSG7a9p4_5M;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$QgPO1CuoJsCtN9Z9wSG7a9p4_5M;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1374
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mAudioVm:Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->getMicrophoneMuteData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$3hlIxADc_LlwVbwSQx9mpeVpB10;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$3hlIxADc_LlwVbwSQx9mpeVpB10;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    const-string v0, "isSupportDsmCamera"

    .line 1383
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1384
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mScuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getDsmStateData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$hqVPvhkNLH83485nFWUQ5_oZt50;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$hqVPvhkNLH83485nFWUQ5_oZt50;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1392
    :cond_8
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mAvasViewModel:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->getAvasBootEffectData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$78LJL4Hl5VX3cq7QcF-IRB0DPV4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$78LJL4Hl5VX3cq7QcF-IRB0DPV4;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1400
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTrailerModeData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$dOpKvYGhMUUVD5OVnetIcRlsHvQ;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$dOpKvYGhMUUVD5OVnetIcRlsHvQ;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1418
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTtmSysErrData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$I7_bL2k4kgoBfEvcW9qiCayNpwQ;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$I7_bL2k4kgoBfEvcW9qiCayNpwQ;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    const-string v0, "isSupportSdc"

    .line 1427
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1429
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mWindowDoorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getSdcKeyCfgData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$zzAHIjDvaPAaB7b8w-X2tFlFLVA;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$zzAHIjDvaPAaB7b8w-X2tFlFLVA;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1438
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mWindowDoorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getSdcWinAutoDownData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$8sRuZnCw1ACi7BduFEMp7CdaXZs;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$8sRuZnCw1ACi7BduFEMp7CdaXZs;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1447
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mWindowDoorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getSdcMaxAutoDoorOpeningAngleData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$NWSNOA_e1ajFbHLTicE6B9vA_rM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$NWSNOA_e1ajFbHLTicE6B9vA_rM;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1456
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mWindowDoorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getSdcBrakeCloseDoorCfgData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$0vE6T3pvwNsimzmxG0pjZk2C7Ro;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$0vE6T3pvwNsimzmxG0pjZk2C7Ro;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1466
    :cond_9
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getParkDropdownMenuData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$E-yfzBhHgXIla_XXf9lHyLsPyuk;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$E-yfzBhHgXIla_XXf9lHyLsPyuk;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    const-string v0, "isSupportEspCst"

    .line 1472
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1473
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getEspCstSwData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$sMsf7zgQgvhVqubJb95KXtdUeBk;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$sMsf7zgQgvhVqubJb95KXtdUeBk;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_a
    const-string v0, "isSupportEspBpf"

    .line 1480
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1481
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getEspBpfModeData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$5_ldTNHpuIIIFanfHyP2S2ByK7I;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$5_ldTNHpuIIIFanfHyP2S2ByK7I;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_b
    const-string v0, "isSupportAwdSetting"

    .line 1488
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1489
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getAwdSettingData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$KAb0hCOGdNptUnG9QjkIyIvFlvw;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$KAb0hCOGdNptUnG9QjkIyIvFlvw;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1495
    :cond_c
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getNearAutoUnlockData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$3gdELjUQxeKuJNOm4hSYgz491Co;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$3gdELjUQxeKuJNOm4hSYgz491Co;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1500
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getLeaveAutoLockData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$OTCgHsUyFyGDRjxEKVBHqub8H3U;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$OTCgHsUyFyGDRjxEKVBHqub8H3U;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    const-string v0, "isSupportSlideDoor"

    .line 1505
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1506
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mWindowDoorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getLeftSlideDoorModeData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$tHvQT00loZJ5Kl_sdZO8XUCeAMY;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$tHvQT00loZJ5Kl_sdZO8XUCeAMY;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1511
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mWindowDoorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getRightSlideDoorModeData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$ldJgeoTntQoMKFLXGmqAZ1XYoAQ;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$ldJgeoTntQoMKFLXGmqAZ1XYoAQ;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_d
    const-string v0, "isSupportAutoPowerOff"

    .line 1518
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1519
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getAutoPowerOffData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$S7qMgsTUbPG1IEtsRzP1H7za_-8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$S7qMgsTUbPG1IEtsRzP1H7za_-8;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1526
    :cond_e
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getRwsModeData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$PzmWtYtbYGnPvXIMuPU35YKDyEI;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$PzmWtYtbYGnPvXIMuPU35YKDyEI;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1532
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getZwalkModeData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$ifPcHbwanxYoi8tmqFc3cxSJ8-E;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$ifPcHbwanxYoi8tmqFc3cxSJ8-E;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 1538
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getVMCSystemData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$B16LX2joGBJlcapadyejkfsFRtQ;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$B16LX2joGBJlcapadyejkfsFRtQ;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method protected onRealCall(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
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

    .line 449
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "setTrdRowMiddleSeatBeltWarning"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0xa5

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "getHighSpdCloseWin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xa4

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "getTrdRowMiddleSeatBeltWarning"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0xa3

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "setPollingLightWelcomeMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0xa2

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "getZWalk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0xa1

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "setSecRowRightSeatBeltWarning"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0xa0

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "getEspSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x9f

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "getAvhSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x9e

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "setAvasSpeakerSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x9d

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "setWelcomeMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x9c

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "setLeftChildLock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x9b

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "resetTtmSwitch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x9a

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "getSdcWinAutoDown"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x99

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "getAutoPowerOffConfig"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0x98

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "setPsnSrsEnable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0x97

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "getAvasLowSpdEffectWithoutOff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0x96

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "getPollingLightWelcomeMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0x95

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "setBootSoundEffectValue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v1, 0x94

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "getBackBeltSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v1, 0x93

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "setPsnWelcomeMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v1, 0x92

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "getLeftSlideDoorMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v1, 0x91

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "getTtmStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v1, 0x90

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "setEsbMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v1, 0x8f

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "setAutoEasyLoadMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v1, 0x8e

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "getEpbSystemStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v1, 0x8d

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "getAvasLowSpdEffect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v1, 0x8c

    goto/16 :goto_0

    :sswitch_1a
    const-string v0, "setZWalk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v1, 0x8b

    goto/16 :goto_0

    :sswitch_1b
    const-string v0, "setAutoWindowLockSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v1, 0x8a

    goto/16 :goto_0

    :sswitch_1c
    const-string v0, "setAirSuspensionWelcome"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v1, 0x89

    goto/16 :goto_0

    :sswitch_1d
    const-string v0, "setEspSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v1, 0x88

    goto/16 :goto_0

    :sswitch_1e
    const-string v0, "setDsmSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v1, 0x87

    goto/16 :goto_0

    :sswitch_1f
    const-string v0, "setAvhSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v1, 0x86

    goto/16 :goto_0

    :sswitch_20
    const-string v0, "isNgpRunning"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v1, 0x85

    goto/16 :goto_0

    :sswitch_21
    const-string v0, "getStopNfcCardSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v1, 0x84

    goto/16 :goto_0

    :sswitch_22
    const-string v0, "setRearSeatWelcomeMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto/16 :goto_0

    :cond_22
    const/16 v1, 0x83

    goto/16 :goto_0

    :sswitch_23
    const-string v0, "setCwcSwRLEnable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    goto/16 :goto_0

    :cond_23
    const/16 v1, 0x82

    goto/16 :goto_0

    :sswitch_24
    const-string v0, "setTrunkFullOpenPos"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto/16 :goto_0

    :cond_24
    const/16 v1, 0x81

    goto/16 :goto_0

    :sswitch_25
    const-string v0, "getLeaveAutoLock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto/16 :goto_0

    :cond_25
    const/16 v1, 0x80

    goto/16 :goto_0

    :sswitch_26
    const-string v0, "getTrdRowLeftSeatBeltWarning"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto/16 :goto_0

    :cond_26
    const/16 v1, 0x7f

    goto/16 :goto_0

    :sswitch_27
    const-string v0, "getWiperSensitivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto/16 :goto_0

    :cond_27
    const/16 v1, 0x7e

    goto/16 :goto_0

    :sswitch_28
    const-string v0, "getTrdRowRightSeatBeltWarning"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto/16 :goto_0

    :cond_28
    const/16 v1, 0x7d

    goto/16 :goto_0

    :sswitch_29
    const-string v0, "getTtmDenormalizeStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto/16 :goto_0

    :cond_29
    const/16 v1, 0x7c

    goto/16 :goto_0

    :sswitch_2a
    const-string v0, "setLockResponseNew"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto/16 :goto_0

    :cond_2a
    const/16 v1, 0x7b

    goto/16 :goto_0

    :sswitch_2b
    const-string v0, "setLeftSlideDoorMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto/16 :goto_0

    :cond_2b
    const/16 v1, 0x7a

    goto/16 :goto_0

    :sswitch_2c
    const-string v0, "isExhibitionModeOn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto/16 :goto_0

    :cond_2c
    const/16 v1, 0x79

    goto/16 :goto_0

    :sswitch_2d
    const-string v0, "getNewDriveArchXPedalMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto/16 :goto_0

    :cond_2d
    const/16 v1, 0x78

    goto/16 :goto_0

    :sswitch_2e
    const-string v0, "getCwcFRSwEnable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto/16 :goto_0

    :cond_2e
    const/16 v1, 0x77

    goto/16 :goto_0

    :sswitch_2f
    const-string v0, "setSdcWinAutoDown"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto/16 :goto_0

    :cond_2f
    const/16 v1, 0x76

    goto/16 :goto_0

    :sswitch_30
    const-string v0, "getPsnSrsEnable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    goto/16 :goto_0

    :cond_30
    const/16 v1, 0x75

    goto/16 :goto_0

    :sswitch_31
    const-string v0, "getRightSlideDoorMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    goto/16 :goto_0

    :cond_31
    const/16 v1, 0x74

    goto/16 :goto_0

    :sswitch_32
    const-string v0, "getSdcKeyCfg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    goto/16 :goto_0

    :cond_32
    const/16 v1, 0x73

    goto/16 :goto_0

    :sswitch_33
    const-string v0, "setTrdRowRightSeatBeltWarning"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    goto/16 :goto_0

    :cond_33
    const/16 v1, 0x72

    goto/16 :goto_0

    :sswitch_34
    const-string v0, "getAutoDoorHandleEnable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    goto/16 :goto_0

    :cond_34
    const/16 v1, 0x71

    goto/16 :goto_0

    :sswitch_35
    const-string v0, "getCwcRLSwEnable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto/16 :goto_0

    :cond_35
    const/16 v1, 0x70

    goto/16 :goto_0

    :sswitch_36
    const-string v0, "setBootEffectBeforeSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    goto/16 :goto_0

    :cond_36
    const/16 v1, 0x6f

    goto/16 :goto_0

    :sswitch_37
    const-string v0, "getPhoneRemindSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    goto/16 :goto_0

    :cond_37
    const/16 v1, 0x6e

    goto/16 :goto_0

    :sswitch_38
    const-string v0, "getCdcuTrailerModeStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto/16 :goto_0

    :cond_38
    const/16 v1, 0x6d

    goto/16 :goto_0

    :sswitch_39
    const-string v0, "showPsnSrsCloseConfirmDialog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    goto/16 :goto_0

    :cond_39
    const/16 v1, 0x6c

    goto/16 :goto_0

    :sswitch_3a
    const-string v0, "setLowSpdSoundEnable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    goto/16 :goto_0

    :cond_3a
    const/16 v1, 0x6b

    goto/16 :goto_0

    :sswitch_3b
    const-string v0, "getTsmFaultStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    goto/16 :goto_0

    :cond_3b
    const/16 v1, 0x6a

    goto/16 :goto_0

    :sswitch_3c
    const-string v0, "setCarpetLightWelcomeMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    goto/16 :goto_0

    :cond_3c
    const/16 v1, 0x69

    goto/16 :goto_0

    :sswitch_3d
    const-string v0, "getAsRequestEspState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    goto/16 :goto_0

    :cond_3d
    const/16 v1, 0x68

    goto/16 :goto_0

    :sswitch_3e
    const-string v0, "getNGearWarningSwitch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    goto/16 :goto_0

    :cond_3e
    const/16 v1, 0x67

    goto/16 :goto_0

    :sswitch_3f
    const-string v0, "showMicrophoneConfirmDialog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    goto/16 :goto_0

    :cond_3f
    const/16 v1, 0x66

    goto/16 :goto_0

    :sswitch_40
    const-string v0, "setNearUnlock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    goto/16 :goto_0

    :cond_40
    const/16 v1, 0x65

    goto/16 :goto_0

    :sswitch_41
    const-string v0, "getCwcSwEnable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    goto/16 :goto_0

    :cond_41
    const/16 v1, 0x64

    goto/16 :goto_0

    :sswitch_42
    const-string v0, "setParkDropdownMenuEnable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    goto/16 :goto_0

    :cond_42
    const/16 v1, 0x63

    goto/16 :goto_0

    :sswitch_43
    const-string v0, "isCngpRunning"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    goto/16 :goto_0

    :cond_43
    const/16 v1, 0x62

    goto/16 :goto_0

    :sswitch_44
    const-string v0, "getAsFault"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    goto/16 :goto_0

    :cond_44
    const/16 v1, 0x61

    goto/16 :goto_0

    :sswitch_45
    const-string v0, "getRightChildLock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    goto/16 :goto_0

    :cond_45
    const/16 v1, 0x60

    goto/16 :goto_0

    :sswitch_46
    const-string v0, "getSdcBrakeCloseDoorCfg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    goto/16 :goto_0

    :cond_46
    const/16 v1, 0x5f

    goto/16 :goto_0

    :sswitch_47
    const-string v0, "getEasyLoadingSwitch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    goto/16 :goto_0

    :cond_47
    const/16 v1, 0x5e

    goto/16 :goto_0

    :sswitch_48
    const-string v0, "getTrunkSensorEnable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    goto/16 :goto_0

    :cond_48
    const/16 v1, 0x5d

    goto/16 :goto_0

    :sswitch_49
    const-string v0, "getHdcFault"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    goto/16 :goto_0

    :cond_49
    const/16 v1, 0x5c

    goto/16 :goto_0

    :sswitch_4a
    const-string v0, "setAwdSetting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    goto/16 :goto_0

    :cond_4a
    const/16 v1, 0x5b

    goto/16 :goto_0

    :sswitch_4b
    const-string v0, "getDoorKeyValue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    goto/16 :goto_0

    :cond_4b
    const/16 v1, 0x5a

    goto/16 :goto_0

    :sswitch_4c
    const-string v0, "getAsEngineerMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    goto/16 :goto_0

    :cond_4c
    const/16 v1, 0x59

    goto/16 :goto_0

    :sswitch_4d
    const-string v0, "getSdcMaxAutoDoorOpeningAngle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    goto/16 :goto_0

    :cond_4d
    const/16 v1, 0x58

    goto/16 :goto_0

    :sswitch_4e
    const-string v0, "getLockResponseNew"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    goto/16 :goto_0

    :cond_4e
    const/16 v1, 0x57

    goto/16 :goto_0

    :sswitch_4f
    const-string v0, "getUnLockResponseNew"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    goto/16 :goto_0

    :cond_4f
    const/16 v1, 0x56

    goto/16 :goto_0

    :sswitch_50
    const-string v0, "getEspFault"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    goto/16 :goto_0

    :cond_50
    const/16 v1, 0x55

    goto/16 :goto_0

    :sswitch_51
    const-string v0, "getEspCstSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    goto/16 :goto_0

    :cond_51
    const/16 v1, 0x54

    goto/16 :goto_0

    :sswitch_52
    const-string v0, "getRearSeatWelcomeMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    goto/16 :goto_0

    :cond_52
    const/16 v1, 0x53

    goto/16 :goto_0

    :sswitch_53
    const-string v0, "setAutoPowerOffConfig"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    goto/16 :goto_0

    :cond_53
    const/16 v1, 0x52

    goto/16 :goto_0

    :sswitch_54
    const-string v0, "setAvasLowSpdEffect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    goto/16 :goto_0

    :cond_54
    const/16 v1, 0x51

    goto/16 :goto_0

    :sswitch_55
    const-string v0, "setEspCstSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    goto/16 :goto_0

    :cond_55
    const/16 v1, 0x50

    goto/16 :goto_0

    :sswitch_56
    const-string v0, "isAsFaultForAsRepair"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    goto/16 :goto_0

    :cond_56
    const/16 v1, 0x4f

    goto/16 :goto_0

    :sswitch_57
    const-string v0, "getTorsionBarTorque"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    goto/16 :goto_0

    :cond_57
    const/16 v1, 0x4e

    goto/16 :goto_0

    :sswitch_58
    const-string v0, "setEspBpfMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    goto/16 :goto_0

    :cond_58
    const/16 v1, 0x4d

    goto/16 :goto_0

    :sswitch_59
    const-string v0, "setSdcMaxAutoDoorOpeningAngle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    goto/16 :goto_0

    :cond_59
    const/16 v1, 0x4c

    goto/16 :goto_0

    :sswitch_5a
    const-string v0, "setCdcuTrailerModeStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    goto/16 :goto_0

    :cond_5a
    const/16 v1, 0x4b

    goto/16 :goto_0

    :sswitch_5b
    const-string v0, "getTtmLampConnectStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    goto/16 :goto_0

    :cond_5b
    const/16 v1, 0x4a

    goto/16 :goto_0

    :sswitch_5c
    const-string v0, "getAvhFault"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    goto/16 :goto_0

    :cond_5c
    const/16 v1, 0x49

    goto/16 :goto_0

    :sswitch_5d
    const-string v0, "getParkingAutoUnlock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    goto/16 :goto_0

    :cond_5d
    const/16 v1, 0x48

    goto/16 :goto_0

    :sswitch_5e
    const-string v0, "setSecRowLeftSeatBeltWarning"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    goto/16 :goto_0

    :cond_5e
    const/16 v1, 0x47

    goto/16 :goto_0

    :sswitch_5f
    const-string v0, "getCarpetLightWelcomeMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    goto/16 :goto_0

    :cond_5f
    const/16 v1, 0x46

    goto/16 :goto_0

    :sswitch_60
    const-string v0, "getNearUnlock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    goto/16 :goto_0

    :cond_60
    const/16 v1, 0x45

    goto/16 :goto_0

    :sswitch_61
    const-string v0, "getEsbMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    goto/16 :goto_0

    :cond_61
    const/16 v1, 0x44

    goto/16 :goto_0

    :sswitch_62
    const-string v0, "setEasyLoadingSwitch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    goto/16 :goto_0

    :cond_62
    const/16 v1, 0x43

    goto/16 :goto_0

    :sswitch_63
    const-string v0, "getBootSoundEffectValue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    goto/16 :goto_0

    :cond_63
    const/16 v1, 0x42

    goto/16 :goto_0

    :sswitch_64
    const-string v0, "getRearLeaveRemindWarningSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64

    goto/16 :goto_0

    :cond_64
    const/16 v1, 0x41

    goto/16 :goto_0

    :sswitch_65
    const-string v0, "getMicrophoneMute"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    goto/16 :goto_0

    :cond_65
    const/16 v1, 0x40

    goto/16 :goto_0

    :sswitch_66
    const-string v0, "setTrunkSensorEnable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    goto/16 :goto_0

    :cond_66
    const/16 v1, 0x3f

    goto/16 :goto_0

    :sswitch_67
    const-string v0, "getAbsFault"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    goto/16 :goto_0

    :cond_67
    const/16 v1, 0x3e

    goto/16 :goto_0

    :sswitch_68
    const-string v0, "getAvasSpeakerSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68

    goto/16 :goto_0

    :cond_68
    const/16 v1, 0x3d

    goto/16 :goto_0

    :sswitch_69
    const-string v0, "getParkDropdownMenuEnable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    goto/16 :goto_0

    :cond_69
    const/16 v1, 0x3c

    goto/16 :goto_0

    :sswitch_6a
    const-string v0, "setWiperSensitivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    goto/16 :goto_0

    :cond_6a
    const/16 v1, 0x3b

    goto/16 :goto_0

    :sswitch_6b
    const-string v0, "setStopNfcCardSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    goto/16 :goto_0

    :cond_6b
    const/16 v1, 0x3a

    goto/16 :goto_0

    :sswitch_6c
    const-string v0, "getLeftChildLock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    goto/16 :goto_0

    :cond_6c
    const/16 v1, 0x39

    goto/16 :goto_0

    :sswitch_6d
    const-string v0, "setUnLockResponseNew"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    goto/16 :goto_0

    :cond_6d
    const/16 v1, 0x38

    goto/16 :goto_0

    :sswitch_6e
    const-string v0, "getWelcomeMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    goto/16 :goto_0

    :cond_6e
    const/16 v1, 0x37

    goto/16 :goto_0

    :sswitch_6f
    const-string v0, "getAirSuspensionWelcome"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    goto/16 :goto_0

    :cond_6f
    const/16 v1, 0x36

    goto/16 :goto_0

    :sswitch_70
    const-string v0, "setRightChildLock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_70

    goto/16 :goto_0

    :cond_70
    const/16 v1, 0x35

    goto/16 :goto_0

    :sswitch_71
    const-string v0, "getAwdSetting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    goto/16 :goto_0

    :cond_71
    const/16 v1, 0x34

    goto/16 :goto_0

    :sswitch_72
    const-string v0, "setLeaveAutoLock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    goto/16 :goto_0

    :cond_72
    const/16 v1, 0x33

    goto/16 :goto_0

    :sswitch_73
    const-string v0, "getUnlockResponse"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    goto/16 :goto_0

    :cond_73
    const/16 v1, 0x32

    goto/16 :goto_0

    :sswitch_74
    const-string v0, "isLccRunning"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_74

    goto/16 :goto_0

    :cond_74
    const/16 v1, 0x31

    goto/16 :goto_0

    :sswitch_75
    const-string v0, "getVMCSystemFault"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_75

    goto/16 :goto_0

    :cond_75
    const/16 v1, 0x30

    goto/16 :goto_0

    :sswitch_76
    const-string v0, "setRws"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_76

    goto/16 :goto_0

    :cond_76
    const/16 v1, 0x2f

    goto/16 :goto_0

    :sswitch_77
    const-string v0, "setHdc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    goto/16 :goto_0

    :cond_77
    const/16 v1, 0x2e

    goto/16 :goto_0

    :sswitch_78
    const-string v0, "setParkingAutoUnlock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_78

    goto/16 :goto_0

    :cond_78
    const/16 v1, 0x2d

    goto/16 :goto_0

    :sswitch_79
    const-string v0, "getEspBpfMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    goto/16 :goto_0

    :cond_79
    const/16 v1, 0x2c

    goto/16 :goto_0

    :sswitch_7a
    const-string v0, "getTrailerModeStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7a

    goto/16 :goto_0

    :cond_7a
    const/16 v1, 0x2b

    goto/16 :goto_0

    :sswitch_7b
    const-string v0, "setRightSlideDoorMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    goto/16 :goto_0

    :cond_7b
    const/16 v1, 0x2a

    goto/16 :goto_0

    :sswitch_7c
    const-string v0, "isMudDriveMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7c

    goto/16 :goto_0

    :cond_7c
    const/16 v1, 0x29

    goto/16 :goto_0

    :sswitch_7d
    const-string v0, "setTtmSwitch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7d

    goto/16 :goto_0

    :cond_7d
    const/16 v1, 0x28

    goto/16 :goto_0

    :sswitch_7e
    const-string v0, "getRws"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7e

    goto/16 :goto_0

    :cond_7e
    const/16 v1, 0x27

    goto/16 :goto_0

    :sswitch_7f
    const-string v0, "getHdc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7f

    goto/16 :goto_0

    :cond_7f
    const/16 v1, 0x26

    goto/16 :goto_0

    :sswitch_80
    const-string v0, "getAutoEasyLoadMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    goto/16 :goto_0

    :cond_80
    const/16 v1, 0x25

    goto/16 :goto_0

    :sswitch_81
    const-string v0, "setPhoneRemindSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_81

    goto/16 :goto_0

    :cond_81
    const/16 v1, 0x24

    goto/16 :goto_0

    :sswitch_82
    const-string v0, "isLowSpdSoundEnabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_82

    goto/16 :goto_0

    :cond_82
    const/16 v1, 0x23

    goto/16 :goto_0

    :sswitch_83
    const-string v0, "getAutoWindowLockSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_83

    goto/16 :goto_0

    :cond_83
    const/16 v1, 0x22

    goto/16 :goto_0

    :sswitch_84
    const-string v0, "getNgpMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_84

    goto/16 :goto_0

    :cond_84
    const/16 v1, 0x21

    goto/16 :goto_0

    :sswitch_85
    const-string v0, "getDsmStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    goto/16 :goto_0

    :cond_85
    const/16 v1, 0x20

    goto/16 :goto_0

    :sswitch_86
    const-string v0, "setNGearWarningSwitch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_86

    goto/16 :goto_0

    :cond_86
    const/16 v1, 0x1f

    goto/16 :goto_0

    :sswitch_87
    const-string v0, "setHighSpdCloseWin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_87

    goto/16 :goto_0

    :cond_87
    const/16 v1, 0x1e

    goto/16 :goto_0

    :sswitch_88
    const-string v0, "setMicrophoneMute"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_88

    goto/16 :goto_0

    :cond_88
    const/16 v1, 0x1d

    goto/16 :goto_0

    :sswitch_89
    const-string v0, "setCwcSwEnable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_89

    goto/16 :goto_0

    :cond_89
    const/16 v1, 0x1c

    goto/16 :goto_0

    :sswitch_8a
    const-string v0, "setCwcSwFREnable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    goto/16 :goto_0

    :cond_8a
    const/16 v1, 0x1b

    goto/16 :goto_0

    :sswitch_8b
    const-string v0, "setSecRowMiddleSeatBeltWarning"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    goto/16 :goto_0

    :cond_8b
    const/16 v1, 0x1a

    goto/16 :goto_0

    :sswitch_8c
    const-string v0, "getTtmSystemError"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8c

    goto/16 :goto_0

    :cond_8c
    const/16 v1, 0x19

    goto/16 :goto_0

    :sswitch_8d
    const-string v0, "startRescueMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8d

    goto/16 :goto_0

    :cond_8d
    const/16 v1, 0x18

    goto/16 :goto_0

    :sswitch_8e
    const-string v0, "getSnowMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8e

    goto/16 :goto_0

    :cond_8e
    const/16 v1, 0x17

    goto/16 :goto_0

    :sswitch_8f
    const-string v0, "getSecRowLeftSeatBeltWarning"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8f

    goto/16 :goto_0

    :cond_8f
    const/16 v1, 0x16

    goto/16 :goto_0

    :sswitch_90
    const-string v0, "getTrunkFullOpenPos"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    goto/16 :goto_0

    :cond_90
    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_91
    const-string v0, "setAutoDoorHandleEnable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_91

    goto/16 :goto_0

    :cond_91
    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_92
    const-string v0, "setRearLeaveRemindWarningSwitch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_92

    goto/16 :goto_0

    :cond_92
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_93
    const-string v0, "stopSoundPreview"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_93

    goto/16 :goto_0

    :cond_93
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_94
    const-string v0, "getXKeyValue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_94

    goto/16 :goto_0

    :cond_94
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_95
    const-string v0, "getSecRowMiddleSeatBeltWarning"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95

    goto/16 :goto_0

    :cond_95
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_96
    const-string v0, "getCwcRRSwEnable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_96

    goto/16 :goto_0

    :cond_96
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_97
    const-string v0, "setSnowMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_97

    goto/16 :goto_0

    :cond_97
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_98
    const-string v0, "getDtcFaultStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_98

    goto/16 :goto_0

    :cond_98
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_99
    const-string v0, "setUnlockResponse"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_99

    goto/16 :goto_0

    :cond_99
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_9a
    const-string v0, "getPsnWelcomeMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9a

    goto/16 :goto_0

    :cond_9a
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_9b
    const-string v0, "getAirSuspensionRepairMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9b

    goto/16 :goto_0

    :cond_9b
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_9c
    const-string v0, "setEpbSystemStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9c

    goto/16 :goto_0

    :cond_9c
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_9d
    const-string v0, "getBootEffectBeforeSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9d

    goto/16 :goto_0

    :cond_9d
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_9e
    const-string v0, "setBackBeltSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9e

    goto :goto_0

    :cond_9e
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_9f
    const-string v0, "showTrailerModePanel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9f

    goto :goto_0

    :cond_9f
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_a0
    const-string v0, "setTrdRowLeftSeatBeltWarning"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a0

    goto :goto_0

    :cond_a0
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_a1
    const-string v0, "setCwcSwRREnable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a1

    goto :goto_0

    :cond_a1
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_a2
    const-string v0, "setSdcKeyCfg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a2

    goto :goto_0

    :cond_a2
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_a3
    const-string v0, "getSecRowRightSeatBeltWarning"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a3

    goto :goto_0

    :cond_a3
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_a4
    const-string v0, "setSdcBrakeCloseDoorCfg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a4

    goto :goto_0

    :cond_a4
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_a5
    const-string v0, "isBreakPedalPressed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a5

    goto :goto_0

    :cond_a5
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 950
    iget-object p2, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

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

    goto/16 :goto_1

    .line 730
    :pswitch_0
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setTrdRowMiddleSeatBeltWarning(Z)V

    goto/16 :goto_1

    .line 493
    :pswitch_1
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getHighSpdCloseWin()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 733
    :pswitch_2
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getTrdRowMiddleSeatBeltWarning()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 538
    :pswitch_3
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setPollingLightWelcomeMode(Z)V

    goto/16 :goto_1

    .line 634
    :pswitch_4
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getZWalk()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 718
    :pswitch_5
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setSecRowRightSeatBeltWarning(Z)V

    goto/16 :goto_1

    .line 622
    :pswitch_6
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getEspSw()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 610
    :pswitch_7
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getAvhSw()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 574
    :pswitch_8
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setAvasSpeakerSw(Z)V

    goto/16 :goto_1

    .line 514
    :pswitch_9
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setWelcomeMode(Z)V

    goto/16 :goto_1

    .line 502
    :pswitch_a
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLeftChildLock(Z)V

    goto/16 :goto_1

    .line 607
    :pswitch_b
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->resetTtmSwitch()V

    goto/16 :goto_1

    .line 856
    :pswitch_c
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getSdcWinAutoDown()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 935
    :pswitch_d
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getAutoPowerOffConfig()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 748
    :pswitch_e
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setPsnSrsEnable(Z)V

    goto/16 :goto_1

    .line 559
    :pswitch_f
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getAvasLowSpdEffectWithoutOff()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 535
    :pswitch_10
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getPollingLightWelcomeMode()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 544
    :pswitch_11
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setBootSoundEffectValue(I)V

    goto/16 :goto_1

    .line 703
    :pswitch_12
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getBackBeltSw()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 520
    :pswitch_13
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setPsnWelcomeMode(Z)V

    goto/16 :goto_1

    .line 923
    :pswitch_14
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getLeftSlideDoorMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 601
    :pswitch_15
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getTtmStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 700
    :pswitch_16
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setEsbMode(Z)V

    goto/16 :goto_1

    .line 694
    :pswitch_17
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setAutoEasyLoadMode(Z)V

    goto/16 :goto_1

    .line 577
    :pswitch_18
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getEpbSystemStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 562
    :pswitch_19
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getAvasLowSpdEffect()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 637
    :pswitch_1a
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setZWalk(Z)V

    goto/16 :goto_1

    .line 490
    :pswitch_1b
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setAutoWindowLockSw(Z)V

    goto/16 :goto_1

    .line 682
    :pswitch_1c
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setAirSuspensionWelcome(Z)V

    goto/16 :goto_1

    .line 625
    :pswitch_1d
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setEspSw(Z)V

    goto/16 :goto_1

    .line 808
    :pswitch_1e
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setDsmSw(Z)V

    goto/16 :goto_1

    .line 613
    :pswitch_1f
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setAvhSw(Z)V

    goto/16 :goto_1

    .line 874
    :pswitch_20
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->isNgpRunning()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 481
    :pswitch_21
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getStopNfcCardSw()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 526
    :pswitch_22
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setRearSeatWelcomeMode(Z)V

    goto/16 :goto_1

    .line 781
    :pswitch_23
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setCwcSwRLEnable(Z)V

    goto/16 :goto_1

    .line 676
    :pswitch_24
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setTrunkFullOpenPos(I)V

    goto/16 :goto_1

    .line 917
    :pswitch_25
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getLeaveAutoLock()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 727
    :pswitch_26
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getTrdRowLeftSeatBeltWarning()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 760
    :pswitch_27
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getWiperSensitivity()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 739
    :pswitch_28
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getTrdRowRightSeatBeltWarning()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 841
    :pswitch_29
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getTtmDenormalizeStatus()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 460
    :pswitch_2a
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLockResponseNew(I)V

    goto/16 :goto_1

    .line 926
    :pswitch_2b
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLeftSlideDoorMode(I)V

    goto/16 :goto_1

    .line 908
    :pswitch_2c
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->isExhibitionModeOn()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 595
    :pswitch_2d
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getNewDriveArchXPedalMode()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 772
    :pswitch_2e
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getCwcFRSwEnable()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 853
    :pswitch_2f
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setSdcWinAutoDown(Z)V

    goto/16 :goto_1

    .line 745
    :pswitch_30
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getPsnSrsEnable()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 929
    :pswitch_31
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getRightSlideDoorMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 850
    :pswitch_32
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getSdcKeyCfg()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 736
    :pswitch_33
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setTrdRowRightSeatBeltWarning(Z)V

    goto/16 :goto_1

    .line 469
    :pswitch_34
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getAutoDoorHandleEnable()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 778
    :pswitch_35
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getCwcRLSwEnable()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 550
    :pswitch_36
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setBootEffectBeforeSw(I)V

    goto/16 :goto_1

    .line 793
    :pswitch_37
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getPhoneRemindSw()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 829
    :pswitch_38
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getCdcuTrailerModeStatus()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 751
    :pswitch_39
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->showPsnSrsCloseConfirmDialog()V

    goto/16 :goto_1

    .line 556
    :pswitch_3a
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLowSpdSoundEnable(Z)V

    goto/16 :goto_1

    .line 823
    :pswitch_3b
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getTsmFaultStatus()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 532
    :pswitch_3c
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setCarpetLightWelcomeMode(Z)V

    goto/16 :goto_1

    .line 817
    :pswitch_3d
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getAsRequestEspState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 754
    :pswitch_3e
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getNGearWarningSwitch()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 802
    :pswitch_3f
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->showMicrophoneConfirmDialog()V

    goto/16 :goto_1

    .line 914
    :pswitch_40
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setNearUnlock(Z)V

    goto/16 :goto_1

    .line 766
    :pswitch_41
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getCwcSwEnable()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 886
    :pswitch_42
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setParkDropdownMenuEnable(Z)V

    goto/16 :goto_1

    .line 880
    :pswitch_43
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->isCngpRunning()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 661
    :pswitch_44
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getAsFault()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 505
    :pswitch_45
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getRightChildLock()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 868
    :pswitch_46
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getSdcBrakeCloseDoorCfg()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 685
    :pswitch_47
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getEasyLoadingSwitch()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 667
    :pswitch_48
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getTrunkSensorEnable()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 658
    :pswitch_49
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getHdcFault()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 905
    :pswitch_4a
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setAwdSetting(I)V

    goto/16 :goto_1

    .line 814
    :pswitch_4b
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getDoorKeyValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 844
    :pswitch_4c
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getAsEngineerMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 862
    :pswitch_4d
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getSdcMaxAutoDoorOpeningAngle()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 457
    :pswitch_4e
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getLockResponseNew()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 463
    :pswitch_4f
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getUnLockResponseNew()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 652
    :pswitch_50
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getEspFault()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 889
    :pswitch_51
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getEspCstSw()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 523
    :pswitch_52
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getRearSeatWelcomeMode()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 938
    :pswitch_53
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setAutoPowerOffConfig(Z)V

    goto/16 :goto_1

    .line 565
    :pswitch_54
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setAvasLowSpdEffect(I)V

    goto/16 :goto_1

    .line 892
    :pswitch_55
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setEspCstSw(Z)V

    goto/16 :goto_1

    .line 664
    :pswitch_56
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->isAsFaultForAsRepair()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 871
    :pswitch_57
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getTorsionBarTorque()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto/16 :goto_2

    .line 898
    :pswitch_58
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setEspBpfMode(I)Ljava/lang/String;

    goto/16 :goto_1

    .line 859
    :pswitch_59
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setSdcMaxAutoDoorOpeningAngle(I)V

    goto/16 :goto_1

    .line 826
    :pswitch_5a
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setCdcuTrailerModeStatus(Z)V

    goto/16 :goto_1

    .line 838
    :pswitch_5b
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getTtmLampConnectStatus()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 655
    :pswitch_5c
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getAvhFault()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 475
    :pswitch_5d
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getParkingAutoUnlock()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 706
    :pswitch_5e
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setSecRowLeftSeatBeltWarning(Z)V

    goto/16 :goto_1

    .line 529
    :pswitch_5f
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getCarpetLightWelcomeMode()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 911
    :pswitch_60
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getNearUnlock()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 697
    :pswitch_61
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getEsbMode()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 688
    :pswitch_62
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setEasyLoadingSwitch(Z)V

    goto/16 :goto_1

    .line 541
    :pswitch_63
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getBootSoundEffectValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 944
    :pswitch_64
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getRearLeaveRemindWarningSw()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 796
    :pswitch_65
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getMicrophoneMute()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 670
    :pswitch_66
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setTrunkSensorEnable(Z)V

    goto/16 :goto_1

    .line 832
    :pswitch_67
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getAbsFault()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 571
    :pswitch_68
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getAvasSpeakerSw()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 883
    :pswitch_69
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getParkDropdownMenuEnable()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 763
    :pswitch_6a
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setWiperSensitivity(I)V

    goto/16 :goto_1

    .line 484
    :pswitch_6b
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setStopNfcCardSw(Z)V

    goto/16 :goto_1

    .line 499
    :pswitch_6c
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getLeftChildLock()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 466
    :pswitch_6d
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setUnLockResponseNew(I)V

    goto/16 :goto_1

    .line 511
    :pswitch_6e
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getWelcomeMode()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 679
    :pswitch_6f
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getAirSuspensionWelcome()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 508
    :pswitch_70
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setRightChildLock(Z)V

    goto/16 :goto_1

    .line 902
    :pswitch_71
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getAwdSetting()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 920
    :pswitch_72
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setLeaveAutoLock(Z)V

    goto/16 :goto_1

    .line 451
    :pswitch_73
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getUnlockResponse()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 877
    :pswitch_74
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->isLccRunning()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 640
    :pswitch_75
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getVMCSystemFault()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 631
    :pswitch_76
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setRws(Z)V

    goto/16 :goto_1

    .line 619
    :pswitch_77
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setHdc(Z)V

    goto/16 :goto_1

    .line 478
    :pswitch_78
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setParkingAutoUnlock(Z)V

    goto/16 :goto_1

    .line 895
    :pswitch_79
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getEspBpfMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 586
    :pswitch_7a
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getTrailerModeStatus()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 932
    :pswitch_7b
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setRightSlideDoorMode(I)V

    goto/16 :goto_1

    .line 649
    :pswitch_7c
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->isMudDriveMode()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 604
    :pswitch_7d
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setTtmSwitch(Z)V

    goto/16 :goto_1

    .line 628
    :pswitch_7e
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getRws()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 616
    :pswitch_7f
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getHdc()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 691
    :pswitch_80
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getAutoEasyLoadMode()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 790
    :pswitch_81
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setPhoneRemindSw(Z)V

    goto/16 :goto_1

    .line 553
    :pswitch_82
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->isLowSpdSoundEnabled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 487
    :pswitch_83
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getAutoWindowLockSw()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 941
    :pswitch_84
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getNgpMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 805
    :pswitch_85
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getDsmStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 757
    :pswitch_86
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setNGearWarningSwitch(Z)V

    goto/16 :goto_1

    .line 496
    :pswitch_87
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setHighSpdCloseWin(Z)V

    goto/16 :goto_1

    .line 799
    :pswitch_88
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setMicrophoneMute(Z)V

    goto/16 :goto_1

    .line 769
    :pswitch_89
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setCwcSwEnable(Z)V

    goto/16 :goto_1

    .line 775
    :pswitch_8a
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setCwcSwFREnable(Z)V

    goto/16 :goto_1

    .line 712
    :pswitch_8b
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setSecRowMiddleSeatBeltWarning(Z)V

    goto/16 :goto_1

    .line 820
    :pswitch_8c
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getTtmSystemError()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 589
    :pswitch_8d
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->startRescueMode()V

    goto/16 :goto_1

    .line 643
    :pswitch_8e
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getSnowMode()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 709
    :pswitch_8f
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getSecRowLeftSeatBeltWarning()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 673
    :pswitch_90
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getTrunkFullOpenPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 472
    :pswitch_91
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setAutoDoorHandleEnable(Z)V

    goto/16 :goto_1

    .line 947
    :pswitch_92
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setRearLeaveRemindWarningSwitch(Z)V

    goto/16 :goto_1

    .line 568
    :pswitch_93
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->stopSoundPreview()V

    goto/16 :goto_1

    .line 811
    :pswitch_94
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getXKeyValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 715
    :pswitch_95
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getSecRowMiddleSeatBeltWarning()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 784
    :pswitch_96
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getCwcRRSwEnable()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 646
    :pswitch_97
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setSnowMode(Z)V

    goto/16 :goto_1

    .line 835
    :pswitch_98
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getDtcFaultStatus()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 454
    :pswitch_99
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setUnlockResponse(I)V

    goto :goto_1

    .line 517
    :pswitch_9a
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getPsnWelcomeMode()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2

    .line 598
    :pswitch_9b
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getAirSuspensionRepairMode()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2

    .line 580
    :pswitch_9c
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setEpbSystemStatus(Z)V

    goto :goto_1

    .line 547
    :pswitch_9d
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getBootEffectBeforeSw()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    .line 742
    :pswitch_9e
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setBackBeltSw(Z)V

    goto :goto_1

    .line 592
    :pswitch_9f
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->showTrailerModePanel()V

    goto :goto_1

    .line 724
    :pswitch_a0
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setTrdRowLeftSeatBeltWarning(Z)V

    goto :goto_1

    .line 787
    :pswitch_a1
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setCwcSwRREnable(Z)V

    goto :goto_1

    .line 847
    :pswitch_a2
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setSdcKeyCfg(I)V

    goto :goto_1

    .line 721
    :pswitch_a3
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getSecRowRightSeatBeltWarning()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2

    .line 865
    :pswitch_a4
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setSdcBrakeCloseDoorCfg(I)V

    :goto_1
    const/4 p1, 0x0

    goto :goto_2

    .line 583
    :pswitch_a5
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->isBreakPedalPressed()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_2
    if-eqz p1, :cond_a6

    .line 953
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_a6
    const-string p1, ""

    :goto_3
    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x7bdb9c23 -> :sswitch_a5
        -0x7ba3ff07 -> :sswitch_a4
        -0x7b2cd791 -> :sswitch_a3
        -0x7abfb9eb -> :sswitch_a2
        -0x77a0a72c -> :sswitch_a1
        -0x778f0371 -> :sswitch_a0
        -0x768e58b5 -> :sswitch_9f
        -0x72de8968 -> :sswitch_9e
        -0x72ce4384 -> :sswitch_9d
        -0x7144130a -> :sswitch_9c
        -0x6eafb93f -> :sswitch_9b
        -0x6a0192b0 -> :sswitch_9a
        -0x6419f759 -> :sswitch_99
        -0x608b8e29 -> :sswitch_98
        -0x603d3bb8 -> :sswitch_97
        -0x5f7ccca0 -> :sswitch_96
        -0x5f6a7708 -> :sswitch_95
        -0x5f4cfbcc -> :sswitch_94
        -0x5e9e6325 -> :sswitch_93
        -0x5dfbe006 -> :sswitch_92
        -0x5dd28c16 -> :sswitch_91
        -0x5c8ac8c3 -> :sswitch_90
        -0x5bd1837a -> :sswitch_8f
        -0x5af59cc4 -> :sswitch_8e
        -0x5a7cc028 -> :sswitch_8d
        -0x586c5e1e -> :sswitch_8c
        -0x57526b94 -> :sswitch_8b
        -0x562ec1a0 -> :sswitch_8a
        -0x55b7792c -> :sswitch_89
        -0x543b109b -> :sswitch_88
        -0x52c9a639 -> :sswitch_87
        -0x52266e2b -> :sswitch_86
        -0x51761366 -> :sswitch_85
        -0x5133301c -> :sswitch_84
        -0x5032303c -> :sswitch_83
        -0x4cfe40b1 -> :sswitch_82
        -0x4ba2cb6b -> :sswitch_81
        -0x4a933f70 -> :sswitch_80
        -0x4a77bc4f -> :sswitch_7f
        -0x4a779468 -> :sswitch_7e
        -0x48cc4ec1 -> :sswitch_7d
        -0x47962fc5 -> :sswitch_7c
        -0x3f1fb578 -> :sswitch_7b
        -0x3bcdbbae -> :sswitch_7a
        -0x3b481051 -> :sswitch_79
        -0x360ab897 -> :sswitch_78
        -0x35fd94db -> :sswitch_77
        -0x35fd6cf4 -> :sswitch_76
        -0x2dc58203 -> :sswitch_75
        -0x2d6654e3 -> :sswitch_74
        -0x2c105f65 -> :sswitch_73
        -0x2a5329f1 -> :sswitch_72
        -0x288ea488 -> :sswitch_71
        -0x28848d53 -> :sswitch_70
        -0x26aafeef -> :sswitch_6f
        -0x2665f111 -> :sswitch_6e
        -0x252334a7 -> :sswitch_6d
        -0x241a6b96 -> :sswitch_6c
        -0x21a87805 -> :sswitch_6b
        -0x217b1aea -> :sswitch_6a
        -0x20796ccd -> :sswitch_69
        -0x2050805a -> :sswitch_68
        -0x1f6b79ba -> :sswitch_67
        -0x1dad9691 -> :sswitch_66
        -0x1c3178a7 -> :sswitch_65
        -0x1b54fee2 -> :sswitch_64
        -0x1ac2bea7 -> :sswitch_63
        -0x1a6ce594 -> :sswitch_62
        -0x199666ff -> :sswitch_61
        -0x190bb27e -> :sswitch_60
        -0x17f2b8f0 -> :sswitch_5f
        -0x12052b06 -> :sswitch_5e
        -0x11a0c50b -> :sswitch_5d
        -0x1034277b -> :sswitch_5c
        -0xfa79373 -> :sswitch_5b
        -0xe90aa8d -> :sswitch_5a
        -0xe7e6a14 -> :sswitch_59
        -0xd23c245 -> :sswitch_58
        -0x99187b9 -> :sswitch_57
        -0x76eda1e -> :sswitch_56
        -0x7251e58 -> :sswitch_55
        -0x6a50d93 -> :sswitch_54
        -0x47b9663 -> :sswitch_53
        -0x31aa49a -> :sswitch_52
        -0x1dd7f64 -> :sswitch_51
        -0x1bb60ca -> :sswitch_50
        -0xb9411b -> :sswitch_4f
        0x191853e -> :sswitch_4e
        0x1c2dfe0 -> :sswitch_4d
        0x39ccefa -> :sswitch_4c
        0x503b296 -> :sswitch_4b
        0x595a984 -> :sswitch_4a
        0x63bacf1 -> :sswitch_49
        0x6bc5cfb -> :sswitch_48
        0x9fd0df8 -> :sswitch_47
        0xa08d1ed -> :sswitch_46
        0xf850aa1 -> :sswitch_45
        0x114f48da -> :sswitch_44
        0x11a85101 -> :sswitch_43
        0x11ca2f3f -> :sswitch_42
        0x13e31360 -> :sswitch_41
        0x15189b8e -> :sswitch_40
        0x154ffb61 -> :sswitch_3f
        0x16ae0fc9 -> :sswitch_3e
        0x1a264c96 -> :sswitch_3d
        0x1a50e31c -> :sswitch_3c
        0x1bbe7afc -> :sswitch_3b
        0x1d40df7d -> :sswitch_3a
        0x1e50dc36 -> :sswitch_39
        0x215ca2ff -> :sswitch_38
        0x2186ce21 -> :sswitch_37
        0x245d3e88 -> :sswitch_36
        0x26e8995a -> :sswitch_35
        0x27da44de -> :sswitch_34
        0x28e0a986 -> :sswitch_33
        0x28ec85a1 -> :sswitch_32
        0x29b4c87c -> :sswitch_31
        0x2cd27c82 -> :sswitch_30
        0x2ce5885d -> :sswitch_2f
        0x2d11e5ec -> :sswitch_2e
        0x2ed2d2fb -> :sswitch_2d
        0x318e4edb -> :sswitch_2c
        0x374f5239 -> :sswitch_2b
        0x38681eb2 -> :sswitch_2a
        0x3898d0c7 -> :sswitch_29
        0x3921f37a -> :sswitch_28
        0x3a88500a -> :sswitch_27
        0x3ea4a41b -> :sswitch_26
        0x42d66f9b -> :sswitch_25
        0x4771cc49 -> :sswitch_24
        0x4af9f54e -> :sswitch_23
        0x4b2a1ada -> :sswitch_22
        0x4b812187 -> :sswitch_21
        0x52ad90b2 -> :sswitch_20
        0x52b9dd55 -> :sswitch_1f
        0x52e2d980 -> :sswitch_1e
        0x52f0fc44 -> :sswitch_1d
        0x53a8301d -> :sswitch_1c
        0x53ca64d0 -> :sswitch_1b
        0x540bfa21 -> :sswitch_1a
        0x555e5d61 -> :sswitch_19
        0x57e55382 -> :sswitch_18
        0x5969559c -> :sswitch_17
        0x59dae675 -> :sswitch_16
        0x5ab20989 -> :sswitch_15
        0x5bb945c5 -> :sswitch_14
        0x5df4d55c -> :sswitch_13
        0x5efd288c -> :sswitch_12
        0x5f907065 -> :sswitch_11
        0x5fd68adc -> :sswitch_10
        0x601dd3c8 -> :sswitch_f
        0x631b778e -> :sswitch_e
        0x6458e791 -> :sswitch_d
        0x64ef2051 -> :sswitch_c
        0x65a90af2 -> :sswitch_b
        0x6ebbfade -> :sswitch_a
        0x6fff8263 -> :sswitch_9
        0x7285e61a -> :sswitch_8
        0x742bc2e1 -> :sswitch_7
        0x7462e1d0 -> :sswitch_6
        0x7491de7b -> :sswitch_5
        0x757ddfad -> :sswitch_4
        0x76067050 -> :sswitch_3
        0x76201f4d -> :sswitch_2
        0x765fc053 -> :sswitch_1
        0x7e382ac1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
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

.method public resetTtmSwitch()V
    .locals 1

    .line 2038
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->resetTtmSwitchStatus()V

    return-void
.end method

.method public setAirSuspensionWelcome(Z)V
    .locals 3
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->welcome_as:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 2231
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAirSuspensionWelcome: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2232
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setAirSuspensionWelcome(Z)V

    .line 2233
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "welcome_as"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setAutoDoorHandleEnable(Z)V
    .locals 3
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->windowdoor_dhc_sw:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1620
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAutoDoorHandleEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1621
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mWindowDoorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setAutoDoorHandleEnable(Z)V

    .line 1622
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "windowdoor_dhc_sw"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setAutoEasyLoadMode(Z)V
    .locals 3
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->windowdoor_auto_easy_load:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 2261
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAutoEasyLoadMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2262
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setAutoEasyLoadMode(Z)V

    .line 2263
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "windowdoor_auto_easy_load"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setAutoPowerOffConfig(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 2779
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setAutoPowerOffConfig(Z)V

    return-void
.end method

.method public setAutoWindowLockSw(Z)V
    .locals 3
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->windowdoor_lock_auto_win_close:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1666
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAutoWindowLockSw: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1667
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mWindowDoorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setAutoWindowLockSw(Z)V

    .line 1668
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "windowdoor_lock_auto_win_close"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setAvasLowSpdEffect(I)V
    .locals 4
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->sound_low_speed_mode:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation

    .line 1912
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAvasLowSpdEffect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, ""

    if-nez p1, :cond_0

    .line 1914
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mAvasViewModel:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->setLowSpdEnable(Z)V

    .line 1915
    invoke-static {v0, v2, v2}, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->play(Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 1917
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mAvasViewModel:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;->fromAvasType(I)Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->setAvasLowSpdEffect(Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;)V

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "/system/media/audio/xiaopeng/cdu/wav/CDU_avas_low_speed_3.wav"

    goto :goto_0

    :cond_2
    const-string v0, "/system/media/audio/xiaopeng/cdu/wav/CDU_avas_low_speed_2.wav"

    goto :goto_0

    :cond_3
    const-string v0, "/system/media/audio/xiaopeng/cdu/wav/CDU_avas_low_speed_1.wav"

    .line 1930
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1931
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->play(Ljava/lang/String;ZZ)V

    .line 1934
    :cond_4
    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "sound_low_speed_mode"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setAvasSpeakerSw(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1953
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAvasSpeakerSw: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1954
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mAvasViewModel:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->setAvasSpeakerSw(Z)V

    return-void
.end method

.method public setAvhSw(Z)V
    .locals 3
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->drive_settings_avh:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 2053
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAvhSw: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2054
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setAvhSw(Z)V

    .line 2055
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "drive_settings_avh"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setAwdSetting(I)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->drive_settings_awd:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 2714
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setAwdSetting(I)V

    .line 2715
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "drive_settings_awd"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setBackBeltSw(Z)V
    .locals 3
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->drive_settings_rsur:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 2293
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBackBeltSw: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2294
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setBackBeltSw(Z)V

    .line 2295
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "drive_settings_rsur"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setBootEffectBeforeSw(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1870
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBootEffectBeforeSw: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1871
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mAvasViewModel:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->setBootEffectBeforeSw(I)V

    return-void
.end method

.method public setBootSoundEffectValue(I)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->welcome_boot_effect_item:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1805
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->setBootSoundEffectValue(IZ)V

    .line 1806
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v0, "welcome_boot_effect_item"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setBootSoundEffectValue(IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "audioEffect"
        }
    .end annotation

    .line 1835
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBootSoundEffectValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1836
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mAvasViewModel:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->setBootSoundEffect(I)V

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    .line 1845
    :cond_0
    invoke-direct {p0, v2}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->execBootSoundPreview(Z)V

    :cond_1
    return-void
.end method

.method public setCarpetLightWelcomeMode(Z)V
    .locals 3
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->welcome_carpet:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1773
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCarpetLightWelcomeMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1774
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mLampViewModel:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->setCarpetLightWelcomeMode(Z)V

    .line 1775
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "welcome_carpet"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCdcuTrailerModeStatus(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2562
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setTrailerModeStatus(Z)V

    return-void
.end method

.method public setCwcSwEnable(Z)V
    .locals 3
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->charge_cwc_drv:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2423
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCwcSwEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2424
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setCwcSwEnable(Z)V

    .line 2425
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "charge_cwc_drv"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCwcSwFREnable(Z)V
    .locals 3
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->charge_cwc_psn:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2441
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCwcFRSwEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2442
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setCwcFRSwEnable(Z)V

    .line 2443
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "charge_cwc_psn"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCwcSwRLEnable(Z)V
    .locals 3
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->charge_cwc_sec_left:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2456
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCwcSwRLEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2457
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setCwcRLSwEnable(Z)V

    .line 2458
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "charge_cwc_sec_left"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCwcSwRREnable(Z)V
    .locals 3
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->charge_cwc_sec_right:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2471
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCwcSwRREnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2472
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setCwcRRSwEnable(Z)V

    .line 2473
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "charge_cwc_sec_right"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setDsmSw(Z)V
    .locals 3
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->about_sap_vehicle_camera:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 2519
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDsmSw: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2520
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mScuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->setDsmSw(Z)V

    .line 2521
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "about_sap_vehicle_camera"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setEasyLoadingSwitch(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 2245
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEasyLoadingSwitch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2246
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setEasyLoadingSwitch(Z)V

    return-void
.end method

.method public setEpbSystemStatus(Z)V
    .locals 3
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->drive_settings_epb:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1970
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEpbSystemStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1971
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setEpbSystemStatus(Z)V

    .line 1972
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "drive_settings_epb"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setEsbMode(Z)V
    .locals 3
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xpilot_pbvw:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 2277
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEsbMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2278
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setEsbMode(Z)V

    .line 2279
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "xpilot_pbvw"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setEspBpfMode(I)Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->drive_settings_bpf:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 2684
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->defaultBpfInfoCodeAndNotifyMsg()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 2694
    :cond_0
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/BpfMode;->Sport:Lcom/xiaopeng/carcontrol/viewmodel/chassis/BpfMode;

    goto :goto_0

    .line 2691
    :cond_1
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/BpfMode;->Economic:Lcom/xiaopeng/carcontrol/viewmodel/chassis/BpfMode;

    goto :goto_0

    .line 2688
    :cond_2
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/BpfMode;->Normal:Lcom/xiaopeng/carcontrol/viewmodel/chassis/BpfMode;

    :goto_0
    if-eqz v1, :cond_3

    .line 2700
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setEspBpfModeValue(Lcom/xiaopeng/carcontrol/viewmodel/chassis/BpfMode;)Ljava/lang/String;

    move-result-object v0

    .line 2702
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "drive_settings_bpf"

    invoke-static {v1, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public setEspCstSw(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->drive_settings_espcst:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2672
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setEspCstSw(Z)V

    .line 2673
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "drive_settings_espcst"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setEspSw(Z)V
    .locals 3
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->drive_settings_esp:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 2085
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEspSw: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2086
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setEspSw()V

    .line 2087
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "drive_settings_esp"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setHdc(Z)V
    .locals 3
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->drive_settings_hdc:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 2069
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHdc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2070
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setHdc(Z)V

    .line 2071
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "drive_settings_hdc"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setHighSpdCloseWin(Z)V
    .locals 3
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->windowdoor_high_speed_win_close:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1682
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHighSpdCloseWin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1683
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mWindowDoorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setHighSpdCloseWin(Z)V

    .line 1684
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "windowdoor_high_speed_win_close"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLeaveAutoLock(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->windowdoor_leave_lock:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2749
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setLeaveAutoLock(Z)V

    .line 2750
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "windowdoor_leave_lock"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLeftChildLock(Z)V
    .locals 3
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->windowdoor_left_child_lock:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lock"
        }
    .end annotation

    .line 1698
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLeftChildLock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1699
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setChildLock(ZZ)V

    .line 1700
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "windowdoor_left_child_lock"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLeftSlideDoorMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 2759
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mWindowDoorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setLeftSlideDoorMode(I)V

    return-void
.end method

.method public setLockResponseNew(I)V
    .locals 3
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->windowdoor_lock_feedback:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .line 1589
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLockResponseNew: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1590
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setLockResponseNew(I)V

    .line 1591
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v0, "windowdoor_lock_feedback"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLowSpdSoundEnable(Z)V
    .locals 3
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->sound_low_speed_outside:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1885
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLowSpdSoundEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1886
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mAvasViewModel:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->setLowSpdEnable(Z)V

    .line 1887
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "sound_low_speed_outside"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setMicrophoneMute(Z)V
    .locals 3
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->about_sap_inner_mic:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mute"
        }
    .end annotation

    .line 2497
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMicrophoneMute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2498
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mAudioVm:Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->setMicrophoneMute(Z)V

    .line 2499
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "about_sap_inner_mic"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setNGearWarningSwitch(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 2390
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNGearWarningSwitch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2391
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setNGearWarningSwitch(Z)V

    return-void
.end method

.method public setNearUnlock(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->windowdoor_near_unlock:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2737
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setNearUnlock(Z)V

    .line 2738
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "windowdoor_near_unlock"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setParkDropdownMenuEnable(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2666
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setParkDropdownMenuEnable(ZZ)V

    return-void
.end method

.method public setParkingAutoUnlock(Z)V
    .locals 3
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->windowdoor_parking_unlock:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1636
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setParkingAutoUnlock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1637
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setParkingAutoUnlock(Z)V

    .line 1638
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "windowdoor_parking_unlock"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setPhoneRemindSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2477
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setPhoneReminderSw(Z)V

    return-void
.end method

.method public setPollingLightWelcomeMode(Z)V
    .locals 3
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->welcome_polling_light:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1788
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPollingLightWelcomeMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1789
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mLampViewModel:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->setPollingLightWelcomeMode(Z)V

    .line 1790
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "welcome_polling_light"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setPsnSrsEnable(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2371
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPsnSrsEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2372
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPsnSrsEnable(Z)V

    return-void
.end method

.method public setPsnWelcomeMode(Z)V
    .locals 3
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->welcome_psn:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1743
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPsnWelcomeMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1744
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPsnWelcomeMode(Z)V

    .line 1745
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "welcome_psn"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setRearLeaveRemindWarningSwitch(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 2789
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRearLeaveRemindWarningSwitch(Z)V

    return-void
.end method

.method public setRearSeatWelcomeMode(Z)V
    .locals 3
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->welcome_rear:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1758
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRearSeatWelcomeMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1759
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRearSeatWelcomeMode(Z)V

    .line 1760
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "welcome_rear"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setRightChildLock(Z)V
    .locals 3
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->windowdoor_right_child_lock:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lock"
        }
    .end annotation

    .line 1711
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRightChildLock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1712
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0, v2, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setChildLock(ZZ)V

    .line 1713
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "windowdoor_right_child_lock"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setRightSlideDoorMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 2769
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mWindowDoorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setRightSlideDoorMode(I)V

    return-void
.end method

.method public setRws(Z)V
    .locals 3
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->drive_settings_rws:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 2098
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRws: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2099
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setVMCRwsSwitch(Z)V

    .line 2100
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "drive_settings_rws"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSdcBrakeCloseDoorCfg(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cfg"
        }
    .end annotation

    .line 2631
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mWindowDoorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setSdcBrakeCloseDoorCfg(I)V

    return-void
.end method

.method public setSdcKeyCfg(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cfg"
        }
    .end annotation

    .line 2601
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mWindowDoorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setSdcKeyCfg(I)V

    return-void
.end method

.method public setSdcMaxAutoDoorOpeningAngle(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "angle"
        }
    .end annotation

    .line 2621
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mWindowDoorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setSdcMaxAutoDoorOpeningAngle(I)V

    return-void
.end method

.method public setSdcWinAutoDown(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "open"
        }
    .end annotation

    .line 2611
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mWindowDoorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setSdcWinAutoDown(Z)V

    return-void
.end method

.method public setSecRowLeftSeatBeltWarning(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->about_sec_left_seat_belt_warning:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2299
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setSecRowLeftSeatBeltWarning(Z)V

    .line 2300
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "about_sec_left_seat_belt_warning"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSecRowMiddleSeatBeltWarning(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->about_sec_mid_seat_belt_warning:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2309
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setSecRowMiddleSeatBeltWarning(Z)V

    .line 2310
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "about_sec_mid_seat_belt_warning"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSecRowRightSeatBeltWarning(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->about_sec_right_seat_belt_warning:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2319
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setSecRowRightSeatBeltWarning(Z)V

    .line 2320
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "about_sec_right_seat_belt_warning"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSnowMode(Z)V
    .locals 3
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->drive_settings_snowmode:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2130
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSnowMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2131
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setSnowMode(Z)V

    .line 2132
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "drive_settings_snowmode"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setStopNfcCardSw(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1650
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStopNfcCardSw: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1651
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setStopNfcCardSw(Z)V

    return-void
.end method

.method public setTrdRowLeftSeatBeltWarning(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->about_trd_left_seat_belt_warning:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2329
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowLeftSeatBeltWarning(Z)V

    .line 2330
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "about_trd_left_seat_belt_warning"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setTrdRowMiddleSeatBeltWarning(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->about_trd_mid_seat_belt_warning:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2339
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowMiddleSeatBeltWarning(Z)V

    .line 2340
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "about_trd_mid_seat_belt_warning"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setTrdRowRightSeatBeltWarning(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->about_trd_right_seat_belt_warning:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2349
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowRightSeatBeltWarning(Z)V

    .line 2350
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "about_trd_right_seat_belt_warning"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setTrunkFullOpenPos(I)V
    .locals 3
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->windowdoor_trunk_open_angle:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 2215
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTrunkFullOpenPos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2216
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mWindowDoorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setTrunkFullOpenPos(I)V

    .line 2217
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v0, "windowdoor_trunk_open_angle"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setTrunkSensorEnable(Z)V
    .locals 3
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->windowdoor_sensor_trunk:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 2199
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTrunkSensorEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2200
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mWindowDoorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setTrunkSensorEnable(Z)V

    .line 2201
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "windowdoor_sensor_trunk"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setTtmSwitch(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 2033
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTtmSwitch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2034
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setTtmSwitchStatusForUI(Z)V

    return-void
.end method

.method public setUnLockResponseNew(I)V
    .locals 3
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->windowdoor_unlock_feedback:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .line 1604
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUnLockResponseNew: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1605
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setUnLockResponseNew(I)V

    .line 1606
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v0, "windowdoor_unlock_feedback"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setUnlockResponse(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .line 1574
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUnlockResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1575
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setUnlockResponse(I)V

    return-void
.end method

.method public setWelcomeMode(Z)V
    .locals 3
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->welcome_drv:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1727
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWelcomeMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1728
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setWelcomeMode(Z)V

    .line 1729
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "welcome_drv"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setWiperSensitivity(I)V
    .locals 3
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->windowdoor_wiper_level:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2407
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWiperSensitivity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2408
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;->fromSensitivityBcmState(I)Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setWiperInterval(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;)V

    .line 2409
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v0, "windowdoor_wiper_level"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setZWalk(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 2109
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setZWalk: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2110
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setVMCZWalkModeSwitch(Z)V

    return-void
.end method

.method public showMicrophoneConfirmDialog()V
    .locals 3

    .line 2502
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaopeng/carcontrol/ServerApp;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/carcontrol/CarControlService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_MICROPHONE_MUTE_DIALOG"

    .line 2503
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2504
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/App;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public showPsnSrsCloseConfirmDialog()V
    .locals 3

    .line 2376
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaopeng/carcontrol/ServerApp;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/carcontrol/CarControlService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_PSN_SRS_CLOSE_DIALOG"

    .line 2377
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2378
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/App;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public showTrailerModePanel()V
    .locals 3

    .line 1999
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaopeng/carcontrol/ServerApp;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/carcontrol/CarControlService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_TRAILER_MODE_SETTING_DIALOG"

    .line 2000
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2001
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/App;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public startRescueMode()V
    .locals 3

    .line 1994
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->Rescue:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->startScenario(ZLcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;)V

    return-void
.end method

.method public stopSoundPreview()V
    .locals 1

    .line 1938
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->stopAllSound()V

    const/4 v0, 0x0

    .line 1939
    invoke-direct {p0, v0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->execBootSoundPreview(Z)V

    return-void
.end method
