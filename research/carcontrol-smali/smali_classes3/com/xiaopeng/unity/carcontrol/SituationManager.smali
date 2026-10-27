.class public Lcom/xiaopeng/unity/carcontrol/SituationManager;
.super Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;
.source "SituationManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/ISituationManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/unity/carcontrol/SituationManager$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager<",
        "Lcom/xiaopeng/unity/carcontrol/SituationListener;",
        ">;",
        "Lcom/xiaopeng/unity/carcontrol/ISituationManager;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SituationManager"


# instance fields
.field private mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

.field private mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

.field private mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

.field private mTboxViewModel:Lcom/xiaopeng/carcontrol/viewmodel/tbox/TBoxViewModel;

.field private mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

.field private selfCheckViewModel:Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/unity/carcontrol/SituationManager$1;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/SituationManager;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/xiaopeng/unity/carcontrol/SituationManager;)Lcom/xiaopeng/unity/carcontrol/base/INapaListener;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/xiaopeng/unity/carcontrol/SituationManager;)Lcom/xiaopeng/unity/carcontrol/base/INapaListener;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/xiaopeng/unity/carcontrol/SituationManager;)Lcom/xiaopeng/unity/carcontrol/base/INapaListener;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/xiaopeng/unity/carcontrol/SituationManager;)Lcom/xiaopeng/unity/carcontrol/base/INapaListener;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/xiaopeng/unity/carcontrol/SituationManager;)Lcom/xiaopeng/unity/carcontrol/base/INapaListener;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/xiaopeng/unity/carcontrol/SituationManager;)Lcom/xiaopeng/unity/carcontrol/base/INapaListener;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/xiaopeng/unity/carcontrol/SituationManager;)Lcom/xiaopeng/unity/carcontrol/base/INapaListener;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/xiaopeng/unity/carcontrol/SituationManager;)Lcom/xiaopeng/unity/carcontrol/base/INapaListener;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static get_instance()Lcom/xiaopeng/unity/carcontrol/SituationManager;
    .locals 1

    .line 56
    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SituationManager$Holder;->access$000()Lcom/xiaopeng/unity/carcontrol/SituationManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public calibrateTyrePressure()V
    .locals 3

    const-string v0, "SituationManager"

    const-string v1, "calibrateTyrePressure "

    const/4 v2, 0x0

    .line 902
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 903
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->calibrateTyrePressure()V

    return-void
.end method

.method public canOpenRearWiperRepairMode()I
    .locals 4

    .line 928
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getGearLevelValue()Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;->P:Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "isSupportWiperFault"

    .line 930
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->isRearWiperFault()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 932
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->isRearWiperSpeedSwitchOff()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    move v0, v2

    .line 935
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canOpenRearWiperRepairMode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SituationManager"

    invoke-static {v3, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public canOpenWiperRepairMode()I
    .locals 4

    .line 915
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getGearLevelValue()Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;->P:Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const-string v0, "isSupportWiperFault"

    .line 917
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->isWiperFault()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    .line 919
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->isWiperSpeedSwitchOff()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->isFWiperActiveSt()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x3

    .line 922
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canOpenWiperRepairMode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SituationManager"

    invoke-static {v3, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getAirSuspensionRepairMode()Z
    .locals 4
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->vehicle_as_repair_mode:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 973
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getAirSuspensionRepairMode()Z

    move-result v0

    .line 974
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAirSuspensionRepairMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SituationManager"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getAllFaultList()V
    .locals 1

    .line 1002
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->selfCheckViewModel:Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->getAllFaultList()V

    return-void
.end method

.method public getFaultDetail(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "code"
        }
    .end annotation

    .line 1007
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->selfCheckViewModel:Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/SituationManager$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/SituationManager$2;-><init>(Lcom/xiaopeng/unity/carcontrol/SituationManager;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->getFaultDetail(ILjava/lang/String;Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;)V

    return-void
.end method

.method public getLastReserveTime()J
    .locals 2

    .line 1090
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->getLastReserveTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMileageA()Ljava/lang/String;
    .locals 4

    .line 770
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->getMileageA()Ljava/lang/String;

    move-result-object v0

    .line 771
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMileageA: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SituationManager"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getMileageB()Ljava/lang/String;
    .locals 4

    .line 780
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->getMileageB()Ljava/lang/String;

    move-result-object v0

    .line 781
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMileageB: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SituationManager"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getMileageSinceLastCharge()Ljava/lang/String;
    .locals 4

    .line 750
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->getMileageSinceLastCharge()Ljava/lang/String;

    move-result-object v0

    .line 751
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMileageSinceLastCharge: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SituationManager"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getMileageSinceStartUp()Ljava/lang/String;
    .locals 4

    .line 760
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->getMileageSinceStartUp()Ljava/lang/String;

    move-result-object v0

    .line 761
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMileageSinceStartUp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SituationManager"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getMileageTotal()Ljava/lang/String;
    .locals 4

    .line 740
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->getMileageTotal()Ljava/lang/String;

    move-result-object v0

    .line 741
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMileageTotal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SituationManager"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getMobilePhone()V
    .locals 2

    .line 1022
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->selfCheckViewModel:Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/SituationManager$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/SituationManager$3;-><init>(Lcom/xiaopeng/unity/carcontrol/SituationManager;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->getMobilePhone(Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;)V

    return-void
.end method

.method public getRearWiperRepairMode()Z
    .locals 4
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->vehicle_rear_wiper_repair_mode:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 957
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getRearWiperRepairMode()Z

    move-result v0

    .line 958
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRearWiperRepairMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SituationManager"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getTpmsCalibrateState()I
    .locals 4

    .line 908
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTpmsCalibrateState()I

    move-result v0

    .line 909
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTpmsCalibrateState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SituationManager"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getTpmsWarningState(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    if-lez p1, :cond_0

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    .line 831
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTpmsWarningState()[I

    move-result-object v1

    if-eqz v1, :cond_0

    .line 832
    array-length v2, v1

    if-lt v2, v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 833
    aget p1, v1, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getTpmsWarningStates(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 v1, 0x4

    if-gt p1, v1, :cond_0

    .line 816
    iget-object v2, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTpmsWarningStates()[Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 817
    array-length v3, v2

    if-lt v3, v1, :cond_0

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    .line 818
    aget-object p1, v2, p1

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;->NORMAL:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;

    if-ne p1, v2, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public getTyrePressure(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    if-lez p1, :cond_0

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTyrePressure(I)Ljava/lang/String;

    move-result-object v0

    .line 878
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTyrePressure, position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", value: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const-string v2, "SituationManager"

    invoke-static {v2, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTyreTemp(I)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 v1, 0x4

    if-gt p1, v1, :cond_0

    .line 891
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTpmsTemperature(I)I

    move-result v1

    .line 892
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTyreTemp, position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", value: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "SituationManager"

    invoke-static {v2, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1

    :cond_0
    return v0
.end method

.method public getWiperRepairMode()Z
    .locals 4
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->vehicle_front_wiper_repair_mode:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 944
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getWiperRepairMode()Z

    move-result v0

    .line 945
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWiperRepairMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SituationManager"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public initInternal()V
    .locals 2

    .line 61
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    .line 62
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/IChassisViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    iput-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    .line 63
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/meter/IMeterViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    iput-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    .line 64
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    iput-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    .line 65
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ICarBodyViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    iput-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    .line 66
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/service/ISelfCheckViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;

    iput-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->selfCheckViewModel:Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;

    .line 67
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/tbox/ITboxViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/tbox/TBoxViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mTboxViewModel:Lcom/xiaopeng/carcontrol/viewmodel/tbox/TBoxViewModel;

    .line 68
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/SituationManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/unity/carcontrol/SituationManager$1;-><init>(Lcom/xiaopeng/unity/carcontrol/SituationManager;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->set_listener(Lcom/xiaopeng/unity/carcontrol/base/INapaListener;)V

    return-void
.end method

.method public isAutoSelfCheck()Z
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->vehicle_auto_check_sw:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 1074
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->selfCheckViewModel:Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->isAutoSelfCheck()Z

    move-result v0

    return v0
.end method

.method public isEcallAvailable()Z
    .locals 1

    .line 996
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->isEcallAvailable()Z

    move-result v0

    return v0
.end method

.method public isTpmsSensorWarningState(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    if-lez p1, :cond_0

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    .line 862
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->isTpmsSensorWarningState()[Z

    move-result-object v1

    if-eqz v1, :cond_0

    .line 863
    array-length v2, v1

    if-lt v2, v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 864
    aget-boolean p1, v1, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isTpmsTempWarning(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    if-lez p1, :cond_0

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    .line 846
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->isTpmsTempWarning()[Z

    move-result-object v1

    if-eqz v1, :cond_0

    .line 847
    array-length v2, v1

    if-lt v2, v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 848
    aget-boolean p1, v1, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$observeData$0$SituationManager(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mileage"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 290
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SituationListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SituationListener;->onTotalMileageChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$1$SituationManager(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mileage"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 298
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SituationListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SituationListener;->ontMileageSinceChargeChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$10$SituationManager(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 370
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SituationListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SituationListener;->onRearLeftTyrePressureChanged(Ljava/lang/String;)V

    .line 373
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRearLeftTyrePressureChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "SituationManager"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$11$SituationManager(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 378
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SituationListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SituationListener;->onRearRightTyrePressureChanged(Ljava/lang/String;)V

    .line 381
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRearRightTyrePressureChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "SituationManager"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$12$SituationManager(Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 387
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SituationListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SituationListener;->onFrontLeftTyreTempChanged(I)V

    .line 390
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFrontLeftTyreTempChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "SituationManager"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$13$SituationManager(Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "tpmsWarningState"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 395
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 396
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SituationListener;

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;->NORMAL:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;

    if-ne p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-interface {v0, v2}, Lcom/xiaopeng/unity/carcontrol/SituationListener;->onFrontLeftTyreWarningStateChanged(Z)V

    .line 398
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFrontLeftTyreWarningStateChanged: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SituationManager"

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public synthetic lambda$observeData$14$SituationManager(Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "status"
        }
    .end annotation

    .line 402
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SituationListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SituationListener;->onFrontLeftTyreWarningStatusChanged(I)V

    .line 405
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFrontLeftTyreWarningStatusChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "SituationManager"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public synthetic lambda$observeData$15$SituationManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "warning"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 409
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SituationListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SituationListener;->onFrontLeftTyreTempWarningChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$16$SituationManager(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "warning"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 416
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SituationListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SituationListener;->onFrontLeftTyreSensorWarningChanged(Z)V

    .line 419
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFrontLeftTyreSensorWarningChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "SituationManager"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$17$SituationManager(Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 425
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SituationListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SituationListener;->onFrontRightTyreTempChanged(I)V

    .line 428
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFrontRightTyreTempChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "SituationManager"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$18$SituationManager(Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "tpmsWarningState"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 433
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SituationListener;

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;->NORMAL:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;

    if-ne p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-interface {v0, v2}, Lcom/xiaopeng/unity/carcontrol/SituationListener;->onFrontRightTyreWarningStateChanged(Z)V

    .line 436
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFrontRightTyreWarningStateChanged: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SituationManager"

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public synthetic lambda$observeData$19$SituationManager(Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "status"
        }
    .end annotation

    .line 441
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SituationListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SituationListener;->onFrontRightTyreWarningStatusChanged(I)V

    .line 444
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFrontRightTyreWarningStatusChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "SituationManager"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public synthetic lambda$observeData$2$SituationManager(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mileage"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 306
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SituationListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SituationListener;->ontMileageSinceStartChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$20$SituationManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "warning"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 449
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SituationListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SituationListener;->onFrontRightTyreTempWarningChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$21$SituationManager(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "warning"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 456
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SituationListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SituationListener;->onFrontRightTyreSensorWarningChanged(Z)V

    .line 459
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFrontRightTyreSensorWarningChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "SituationManager"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$22$SituationManager(Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 464
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SituationListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SituationListener;->onRearLeftTyreTempChanged(I)V

    .line 467
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRearLeftTyreTempChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "SituationManager"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$23$SituationManager(Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "tpmsWarningState"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 472
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 473
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SituationListener;

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;->NORMAL:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;

    if-ne p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-interface {v0, v2}, Lcom/xiaopeng/unity/carcontrol/SituationListener;->onRearLeftTyreWarningStateChanged(Z)V

    .line 475
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRearLeftTyreWarningStateChanged: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SituationManager"

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public synthetic lambda$observeData$24$SituationManager(Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "status"
        }
    .end annotation

    .line 480
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SituationListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SituationListener;->onRearLeftTyreWarningStatusChanged(I)V

    .line 483
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRearLeftTyreWarningStatusChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "SituationManager"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public synthetic lambda$observeData$25$SituationManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "warning"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 488
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SituationListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SituationListener;->onRearLeftTyreTempWarningChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$26$SituationManager(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "warning"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 496
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SituationListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SituationListener;->onRearLeftTyreSensorWarningChanged(Z)V

    .line 499
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRearLeftTyreSensorWarningChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "SituationManager"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$27$SituationManager(Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 505
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SituationListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SituationListener;->onRearRightTyreTempChanged(I)V

    .line 508
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRearRightTyreTempChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "SituationManager"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$28$SituationManager(Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "tpmsWarningState"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 513
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 514
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SituationListener;

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;->NORMAL:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;

    if-ne p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-interface {v0, v2}, Lcom/xiaopeng/unity/carcontrol/SituationListener;->onRearRightTyreWarningStateChanged(Z)V

    .line 516
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRearLeftTyreWarningStateChanged: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SituationManager"

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public synthetic lambda$observeData$29$SituationManager(Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "status"
        }
    .end annotation

    .line 521
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SituationListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SituationListener;->onRearRightTyreWarningStatusChanged(I)V

    .line 524
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRearRightTyreWarningStatusChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "SituationManager"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public synthetic lambda$observeData$3$SituationManager(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mileage"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 314
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SituationListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SituationListener;->ontMileageAChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$30$SituationManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "warning"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 529
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SituationListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SituationListener;->onRearRightTyreTempWarningChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$31$SituationManager(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "warning"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 536
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SituationListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SituationListener;->onRearRightTyreSensorWarningChanged(Z)V

    .line 539
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRearRightTyreSensorWarningChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "SituationManager"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$32$SituationManager(Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsCalibrationStatus;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "calibrationStatus"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 546
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SituationListener;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsCalibrationStatus;->toTpmsCode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SituationListener;->onTpmsCalibrationStateChanged(I)V

    .line 549
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRearLeftTyreWarningStateChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "SituationManager"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$33$SituationManager(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "s"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 555
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SituationListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SituationListener;->onShowAllFaultView(Ljava/lang/String;)V

    .line 558
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShowAllFaultView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "SituationManager"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$34$SituationManager(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "s"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 564
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SituationListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SituationListener;->onShowFaultDetailView(Ljava/lang/String;)V

    .line 567
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShowFaultDetailView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "SituationManager"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$35$SituationManager(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "s"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 573
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SituationListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SituationListener;->onSelfCheckProgressChanged(Ljava/lang/String;)V

    .line 576
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSelfCheckProgressChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "SituationManager"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$36$SituationManager(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enable"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 582
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SituationListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SituationListener;->onAutoSelfCheckStateChanged(Z)V

    .line 585
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAutoSelfCheckStateChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "SituationManager"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$37$SituationManager(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "result"
        }
    .end annotation

    .line 589
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SituationListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SituationListener;->onAllFaultCodeUpdate(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$38$SituationManager(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "exist"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 597
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SituationListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SituationListener;->onDigitalKeyExistStatusChanged(Z)V

    .line 600
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDigitalKeyExistStatusChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "SituationManager"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$4$SituationManager(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mileage"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 322
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SituationListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SituationListener;->ontMileageBChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$5$SituationManager(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enable"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 330
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SituationListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SituationListener;->onWiperRepairModeChanged(Z)V

    .line 333
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWiperRepairModeChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "SituationManager"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$6$SituationManager(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enable"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 338
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SituationListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SituationListener;->onRearWiperRepairModeChanged(Z)V

    .line 341
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRearWiperRepairModeChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "SituationManager"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$7$SituationManager(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enable"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 346
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SituationListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SituationListener;->onAirSuspensionRepairModeChanged(Z)V

    .line 349
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAirSuspensionRepairModeChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "SituationManager"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$8$SituationManager(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 354
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SituationListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SituationListener;->onFrontLeftTyrePressureChanged(Ljava/lang/String;)V

    .line 357
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFrontLeftTyrePressureChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "SituationManager"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$9$SituationManager(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 362
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SituationListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SituationListener;->onFrontRightTyrePressureChanged(Ljava/lang/String;)V

    .line 365
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFrontRightTyrePressureChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "SituationManager"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method protected observeData()V
    .locals 6

    .line 288
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->getTotalMileageData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$2hw81eSZO9p0b1g8nynTN4Xdp90;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$2hw81eSZO9p0b1g8nynTN4Xdp90;-><init>(Lcom/xiaopeng/unity/carcontrol/SituationManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 296
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->getMileageDataSinceCharge()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$kbmBcSikUvjxRLvk61crEN_TB-U;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$kbmBcSikUvjxRLvk61crEN_TB-U;-><init>(Lcom/xiaopeng/unity/carcontrol/SituationManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 304
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->getMileageDataSinceStart()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$OelFb64l-PvfQvdZ_dN0EDYHgzA;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$OelFb64l-PvfQvdZ_dN0EDYHgzA;-><init>(Lcom/xiaopeng/unity/carcontrol/SituationManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 312
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->getMileageAData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$D2UuGkwQaX5d_yMvR2JzcsNRSv8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$D2UuGkwQaX5d_yMvR2JzcsNRSv8;-><init>(Lcom/xiaopeng/unity/carcontrol/SituationManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 320
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->getMileageBData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$7R-lCf1J3Ahkmr4xbc_lMLMiiOs;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$7R-lCf1J3Ahkmr4xbc_lMLMiiOs;-><init>(Lcom/xiaopeng/unity/carcontrol/SituationManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 328
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getWiperRepairModeData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$Fr_rtuMLgTMbgtsJdA_dtCSc50o;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$Fr_rtuMLgTMbgtsJdA_dtCSc50o;-><init>(Lcom/xiaopeng/unity/carcontrol/SituationManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 336
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getRearWiperRepairModeData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$oSiUSMrMOu0qFKgqVv2CnJ7NZTg;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$oSiUSMrMOu0qFKgqVv2CnJ7NZTg;-><init>(Lcom/xiaopeng/unity/carcontrol/SituationManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 344
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getAsRepairModeData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$sWgKWHM0PdDpOdPK8q92G48SGzE;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$sWgKWHM0PdDpOdPK8q92G48SGzE;-><init>(Lcom/xiaopeng/unity/carcontrol/SituationManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 352
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTyrePressureData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$c5iUCWaaWFc1M8WeWpBSKEArQ4E;

    invoke-direct {v2, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$c5iUCWaaWFc1M8WeWpBSKEArQ4E;-><init>(Lcom/xiaopeng/unity/carcontrol/SituationManager;)V

    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 360
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTyrePressureData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v3, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$eBYTC3lH3Y0lm0jyx6fKKqDHPrU;

    invoke-direct {v3, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$eBYTC3lH3Y0lm0jyx6fKKqDHPrU;-><init>(Lcom/xiaopeng/unity/carcontrol/SituationManager;)V

    invoke-virtual {p0, v0, v3}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 368
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTyrePressureData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$DzTx_d6aNHswhixT2LIWWiZzW4Y;

    invoke-direct {v4, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$DzTx_d6aNHswhixT2LIWWiZzW4Y;-><init>(Lcom/xiaopeng/unity/carcontrol/SituationManager;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 376
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTyrePressureData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v5, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$Bm0NAkE1poIrKHRIb_p1b6Jz3Wo;

    invoke-direct {v5, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$Bm0NAkE1poIrKHRIb_p1b6Jz3Wo;-><init>(Lcom/xiaopeng/unity/carcontrol/SituationManager;)V

    invoke-virtual {p0, v0, v5}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    const-string v0, "isSupportTpmsWarningInSmartControl"

    .line 384
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTpmsTempData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v5, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$D4aBlFK12NNAlRN3_lafoNBQCBM;

    invoke-direct {v5, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$D4aBlFK12NNAlRN3_lafoNBQCBM;-><init>(Lcom/xiaopeng/unity/carcontrol/SituationManager;)V

    invoke-virtual {p0, v0, v5}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 393
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTpmsWarningData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v5, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$Z8z5x1ncHB_gZ3vHqq50AMrA-Ag;

    invoke-direct {v5, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$Z8z5x1ncHB_gZ3vHqq50AMrA-Ag;-><init>(Lcom/xiaopeng/unity/carcontrol/SituationManager;)V

    invoke-virtual {p0, v0, v5}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 401
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTpmsWarningStatusData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v5, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$Zp87jV1jEpUJ2KSEm6ODpDNJtTU;

    invoke-direct {v5, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$Zp87jV1jEpUJ2KSEm6ODpDNJtTU;-><init>(Lcom/xiaopeng/unity/carcontrol/SituationManager;)V

    invoke-virtual {p0, v0, v5}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 407
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTpmsTempWarningData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v5, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$ur0Io_jgr8cEZ8hjPXRWWMW4cP8;

    invoke-direct {v5, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$ur0Io_jgr8cEZ8hjPXRWWMW4cP8;-><init>(Lcom/xiaopeng/unity/carcontrol/SituationManager;)V

    invoke-virtual {p0, v0, v5}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 414
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTpmsSensorWarningData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v5, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$78wAu48YxNXYQrvGiY-HafveTZo;

    invoke-direct {v5, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$78wAu48YxNXYQrvGiY-HafveTZo;-><init>(Lcom/xiaopeng/unity/carcontrol/SituationManager;)V

    invoke-virtual {p0, v0, v5}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 423
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTpmsTempData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v5, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$9n9T50ZksexPtipQfxULnU8GjxY;

    invoke-direct {v5, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$9n9T50ZksexPtipQfxULnU8GjxY;-><init>(Lcom/xiaopeng/unity/carcontrol/SituationManager;)V

    invoke-virtual {p0, v0, v5}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 431
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTpmsWarningData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v5, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$mqavHYGIN01fYIU6Wgk7tmzDhqU;

    invoke-direct {v5, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$mqavHYGIN01fYIU6Wgk7tmzDhqU;-><init>(Lcom/xiaopeng/unity/carcontrol/SituationManager;)V

    invoke-virtual {p0, v0, v5}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 440
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTpmsWarningStatusData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v5, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$GcmdT-leFc5vlAo2FpQb17A5IuU;

    invoke-direct {v5, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$GcmdT-leFc5vlAo2FpQb17A5IuU;-><init>(Lcom/xiaopeng/unity/carcontrol/SituationManager;)V

    invoke-virtual {p0, v0, v5}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 447
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTpmsTempWarningData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v5, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$1Qyns4Wr7Xqr8Hao7y7uQlaYnX0;

    invoke-direct {v5, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$1Qyns4Wr7Xqr8Hao7y7uQlaYnX0;-><init>(Lcom/xiaopeng/unity/carcontrol/SituationManager;)V

    invoke-virtual {p0, v0, v5}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 454
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTpmsSensorWarningData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$YiR48Nr3hZd5esC7VUWi8TqO8pU;

    invoke-direct {v2, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$YiR48Nr3hZd5esC7VUWi8TqO8pU;-><init>(Lcom/xiaopeng/unity/carcontrol/SituationManager;)V

    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 462
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTpmsTempData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$yKYhBQzHgtCYKICS0keAqu9whJA;

    invoke-direct {v2, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$yKYhBQzHgtCYKICS0keAqu9whJA;-><init>(Lcom/xiaopeng/unity/carcontrol/SituationManager;)V

    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 470
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTpmsWarningData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$Lw9nOENiVAuLR_Yy6pAnzZCtaJk;

    invoke-direct {v2, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$Lw9nOENiVAuLR_Yy6pAnzZCtaJk;-><init>(Lcom/xiaopeng/unity/carcontrol/SituationManager;)V

    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 479
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTpmsWarningStatusData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$OEn0RnRdaLUnQM1sDadFfSxCQ9c;

    invoke-direct {v2, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$OEn0RnRdaLUnQM1sDadFfSxCQ9c;-><init>(Lcom/xiaopeng/unity/carcontrol/SituationManager;)V

    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 486
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTpmsTempWarningData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$yFTIcsZ_8MWhgb2sFHoG2K3iRNE;

    invoke-direct {v2, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$yFTIcsZ_8MWhgb2sFHoG2K3iRNE;-><init>(Lcom/xiaopeng/unity/carcontrol/SituationManager;)V

    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 494
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTpmsSensorWarningData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$gI1_45x2IRey_EmSt5staRKZswQ;

    invoke-direct {v2, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$gI1_45x2IRey_EmSt5staRKZswQ;-><init>(Lcom/xiaopeng/unity/carcontrol/SituationManager;)V

    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 503
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0, v4}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTpmsTempData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$WEZyJoCWwVDbko5e6OcLCM7F8iM;

    invoke-direct {v2, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$WEZyJoCWwVDbko5e6OcLCM7F8iM;-><init>(Lcom/xiaopeng/unity/carcontrol/SituationManager;)V

    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 511
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0, v4}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTpmsWarningData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$0akCtPA4Des5NlCBRC8KzUtOLTM;

    invoke-direct {v2, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$0akCtPA4Des5NlCBRC8KzUtOLTM;-><init>(Lcom/xiaopeng/unity/carcontrol/SituationManager;)V

    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 520
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0, v4}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTpmsWarningStatusData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$0vi7Z4FAySBUQoTL1IeZ5-X6leI;

    invoke-direct {v2, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$0vi7Z4FAySBUQoTL1IeZ5-X6leI;-><init>(Lcom/xiaopeng/unity/carcontrol/SituationManager;)V

    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 527
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0, v4}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTpmsTempWarningData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$voAEDFKpmd7B9gobwQXnCTeKzZU;

    invoke-direct {v2, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$voAEDFKpmd7B9gobwQXnCTeKzZU;-><init>(Lcom/xiaopeng/unity/carcontrol/SituationManager;)V

    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 534
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0, v4}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTpmsSensorWarningData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$GRbbsR0WLVNcACaJ6vN1yK2pros;

    invoke-direct {v2, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$GRbbsR0WLVNcACaJ6vN1yK2pros;-><init>(Lcom/xiaopeng/unity/carcontrol/SituationManager;)V

    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_0
    const-string v0, "isSupportTpmsCalibrate"

    .line 543
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 544
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTpmsCalibrationStatusData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$WHPdpcIHswd4Xc32kgHV9EfA370;

    invoke-direct {v2, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$WHPdpcIHswd4Xc32kgHV9EfA370;-><init>(Lcom/xiaopeng/unity/carcontrol/SituationManager;)V

    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 553
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->selfCheckViewModel:Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->getAllFaultData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$Z_tq17YCgCbJ88D5XGiNByO8xLM;

    invoke-direct {v2, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$Z_tq17YCgCbJ88D5XGiNByO8xLM;-><init>(Lcom/xiaopeng/unity/carcontrol/SituationManager;)V

    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 562
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->selfCheckViewModel:Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->getFaultDetailData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$Ovl5jHAbIIrDJlvUUfnzE1zY0cU;

    invoke-direct {v2, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$Ovl5jHAbIIrDJlvUUfnzE1zY0cU;-><init>(Lcom/xiaopeng/unity/carcontrol/SituationManager;)V

    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 571
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->selfCheckViewModel:Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->getSelfCheckProgressData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$KdfjItmfiqRGnRcYOW3APelmtIk;

    invoke-direct {v2, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$KdfjItmfiqRGnRcYOW3APelmtIk;-><init>(Lcom/xiaopeng/unity/carcontrol/SituationManager;)V

    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 580
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->selfCheckViewModel:Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->getAutoSelfCheckEnableData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$JJ9JeUboykyeWjKX6DTOuejf6eI;

    invoke-direct {v2, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$JJ9JeUboykyeWjKX6DTOuejf6eI;-><init>(Lcom/xiaopeng/unity/carcontrol/SituationManager;)V

    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 588
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->selfCheckViewModel:Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->getAllFaultCodeData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$qiUOmKr8DgDBKKdFj-vvi2qeN-w;

    invoke-direct {v2, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$qiUOmKr8DgDBKKdFj-vvi2qeN-w;-><init>(Lcom/xiaopeng/unity/carcontrol/SituationManager;)V

    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    const-string v0, "config_car_ble_key_version"

    .line 594
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 595
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mTboxViewModel:Lcom/xiaopeng/carcontrol/viewmodel/tbox/TBoxViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/tbox/TBoxViewModel;->getDigitalKeyExistData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$ev9d685S0cIClCDYgRzSIErBVw8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$ev9d685S0cIClCDYgRzSIErBVw8;-><init>(Lcom/xiaopeng/unity/carcontrol/SituationManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_2
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

    .line 609
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "getMileageSinceLastCharge"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0x26

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "getMileageSinceStartUp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0x25

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "showMileageInfoPanel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x24

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "canOpenWiperRepairMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x23

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "getTyreTemp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x22

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "getRearWiperRepairMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0x21

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "shouldShowEcallOnStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0x20

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "getTyrePressure"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v3, 0x1f

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "getTpmsCalibrateState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0x1e

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "isTpmsTempWarning"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v3, 0x1d

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "setWiperRepairMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v3, 0x1c

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "getMileageB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v3, 0x1b

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "getMileageA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v3, 0x1a

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "setCarCheckState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v3, 0x19

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "setTboxDigitalKeyExistQuery"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v3, 0x18

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "isEcallAvailable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v3, 0x17

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "setReserveTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v3, 0x16

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "getTpmsWarningState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v3, 0x15

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "getLastReserveTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v3, 0x14

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "getAllFaultList"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v3, 0x13

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "startSMSVerification"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v3, 0x12

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "getWiperRepairMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v3, 0x11

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "isTpmsSensorWarningState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v3, 0x10

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "isAutoSelfCheck"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v3, 0xf

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "getTpmsWarningStates"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v3, 0xe

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "resetMeterMileageB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v3, 0xd

    goto/16 :goto_0

    :sswitch_1a
    const-string v0, "resetMeterMileageA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_1b
    const-string v0, "getFaultDetail"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_1c
    const-string v0, "calibrateTyrePressure"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_1d
    const-string v0, "reserveRemoteDiagnose"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_1e
    const-string v0, "setShowEcallOnStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_1f
    const-string v0, "setAutoSelfCheck"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_0

    :cond_1f
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_20
    const-string v0, "setAirSuspensionRepairMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_0

    :cond_20
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_21
    const-string v0, "setRearWiperRepairMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_0

    :cond_21
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_22
    const-string v0, "startEcall"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_0

    :cond_22
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_23
    const-string v0, "getMileageTotal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    goto :goto_0

    :cond_23
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_24
    const-string v0, "canOpenRearWiperRepairMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_0

    :cond_24
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_25
    const-string v0, "getAirSuspensionRepairMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_0

    :cond_25
    move v3, v1

    goto :goto_0

    :sswitch_26
    const-string v0, "getMobilePhone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto :goto_0

    :cond_26
    move v3, v2

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 729
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown method "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SituationManager"

    invoke-static {p2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 614
    :pswitch_0
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->getMileageSinceLastCharge()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    .line 617
    :pswitch_1
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->getMileageSinceStartUp()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    .line 632
    :pswitch_2
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->showMileageInfoPanel()V

    goto/16 :goto_1

    .line 659
    :pswitch_3
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->canOpenWiperRepairMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 647
    :pswitch_4
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->getTyreTemp(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 671
    :pswitch_5
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->getRearWiperRepairMode()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 686
    :pswitch_6
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->shouldShowEcallOnStatus()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 644
    :pswitch_7
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->getTyrePressure(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    .line 656
    :pswitch_8
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->getTpmsCalibrateState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 641
    :pswitch_9
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->isTpmsTempWarning(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 668
    :pswitch_a
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->setWiperRepairMode(Z)V

    goto/16 :goto_1

    .line 623
    :pswitch_b
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->getMileageB()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    .line 620
    :pswitch_c
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->getMileageA()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    .line 708
    :pswitch_d
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->setCarCheckState(I)V

    goto/16 :goto_1

    .line 723
    :pswitch_e
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->setTboxDigitalKeyExistQuery()V

    goto/16 :goto_1

    .line 689
    :pswitch_f
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->isEcallAvailable()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 720
    :pswitch_10
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->setReserveTime(J)V

    goto/16 :goto_1

    .line 638
    :pswitch_11
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->getTpmsWarningState(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 717
    :pswitch_12
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->getLastReserveTime()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto/16 :goto_2

    .line 695
    :pswitch_13
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->getAllFaultList()V

    goto/16 :goto_1

    .line 726
    :pswitch_14
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->startSMSVerification()V

    goto/16 :goto_1

    .line 665
    :pswitch_15
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->getWiperRepairMode()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 650
    :pswitch_16
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->isTpmsSensorWarningState(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 714
    :pswitch_17
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->isAutoSelfCheck()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 635
    :pswitch_18
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->getTpmsWarningStates(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2

    .line 629
    :pswitch_19
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->resetMeterMileageB()V

    goto :goto_1

    .line 626
    :pswitch_1a
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->resetMeterMileageA()V

    goto :goto_1

    :pswitch_1b
    const-string p1, ","

    .line 698
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 699
    aget-object p2, p1, v2

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p2

    aget-object p1, p1, v1

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->getFaultDetail(ILjava/lang/String;)V

    goto :goto_1

    .line 653
    :pswitch_1c
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->calibrateTyrePressure()V

    goto :goto_1

    .line 705
    :pswitch_1d
    invoke-virtual {p0, p2}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->reserveRemoteDiagnose(Ljava/lang/String;)V

    goto :goto_1

    .line 683
    :pswitch_1e
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->setShowEcallOnStatus(Z)V

    goto :goto_1

    .line 711
    :pswitch_1f
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->setAutoSelfCheck(Z)V

    goto :goto_1

    .line 680
    :pswitch_20
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->setAirSuspensionRepairMode(Z)V

    goto :goto_1

    .line 674
    :pswitch_21
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->setRearWiperRepairMode(Z)V

    goto :goto_1

    .line 692
    :pswitch_22
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->startEcall()V

    goto :goto_1

    .line 611
    :pswitch_23
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->getMileageTotal()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 662
    :pswitch_24
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->canOpenRearWiperRepairMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    .line 677
    :pswitch_25
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->getAirSuspensionRepairMode()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2

    .line 702
    :pswitch_26
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->getMobilePhone()V

    :goto_1
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_27

    .line 732
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_27
    const-string p1, ""

    :goto_3
    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x7550e74a -> :sswitch_26
        -0x6eafb93f -> :sswitch_25
        -0x652e54a3 -> :sswitch_24
        -0x627ff4f0 -> :sswitch_23
        -0x5f3a86ff -> :sswitch_22
        -0x5f241fcb -> :sswitch_21
        -0x587fd3cb -> :sswitch_20
        -0x5763d115 -> :sswitch_1f
        -0x5645bc2b -> :sswitch_1e
        -0x490b5c00 -> :sswitch_1d
        -0x40a079bc -> :sswitch_1c
        -0x3acf1c23 -> :sswitch_1b
        -0x2ea965af -> :sswitch_1a
        -0x2ea965ae -> :sswitch_19
        -0x290f89fa -> :sswitch_18
        -0x265a9cdd -> :sswitch_17
        -0x15cc9645 -> :sswitch_16
        -0xc894bfb -> :sswitch_15
        -0xc6ef6ae -> :sswitch_14
        -0x233044b -> :sswitch_13
        0x9bfa2fd -> :sswitch_12
        0xf310c0d -> :sswitch_11
        0x133acfe7 -> :sswitch_10
        0x15520d90 -> :sswitch_f
        0x181b2e91 -> :sswitch_e
        0x1c4c9a1b -> :sswitch_d
        0x2730f62d -> :sswitch_c
        0x2730f62e -> :sswitch_b
        0x2a4d4d79 -> :sswitch_a
        0x2fba501c -> :sswitch_9
        0x36415dc2 -> :sswitch_8
        0x3d06a453 -> :sswitch_7
        0x407696a4 -> :sswitch_6
        0x529720c1 -> :sswitch_5
        0x56f408e2 -> :sswitch_4
        0x5df6eca1 -> :sswitch_3
        0x5f8ff969 -> :sswitch_2
        0x623e60b7 -> :sswitch_1
        0x6eed4890 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public reserveRemoteDiagnose(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "phone"
        }
    .end annotation

    .line 1037
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->selfCheckViewModel:Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/SituationManager$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/SituationManager$4;-><init>(Lcom/xiaopeng/unity/carcontrol/SituationManager;)V

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->reserveRemoteDiagnose(Ljava/lang/String;Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;)V

    return-void
.end method

.method public resetMeterMileageA()V
    .locals 3
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->vehicle_mileage_a_reset:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    const-string v0, "SituationManager"

    const-string v1, "resetMeterMileageA "

    const/4 v2, 0x0

    .line 790
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 791
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->resetMeterMileageA()V

    const-string v0, "vehicle_mileage_a_reset"

    .line 792
    invoke-static {v0}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;)V

    return-void
.end method

.method public resetMeterMileageB()V
    .locals 3
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->vehicle_mileage_b_reset:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    const-string v0, "SituationManager"

    const-string v1, "resetMeterMileageB "

    const/4 v2, 0x0

    .line 796
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 797
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->resetMeterMileageB()V

    const-string v0, "vehicle_mileage_b_reset"

    .line 798
    invoke-static {v0}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;)V

    return-void
.end method

.method public setAirSuspensionRepairMode(Z)V
    .locals 2
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->vehicle_as_repair_mode:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 980
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAirSuspensionRepairMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SituationManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setAirSuspensionRepairMode(Z)V

    .line 982
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "vehicle_as_repair_mode"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setAutoSelfCheck(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->vehicle_auto_check_sw:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1068
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->selfCheckViewModel:Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->setAutoSelfCheck(Z)V

    .line 1069
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "vehicle_auto_check_sw"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCarCheckState(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1052
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->selfCheckViewModel:Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/SituationManager$5;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/SituationManager$5;-><init>(Lcom/xiaopeng/unity/carcontrol/SituationManager;)V

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->setCarCheckState(ILcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;)V

    return-void
.end method

.method public setRearWiperRepairMode(Z)V
    .locals 3
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->vehicle_rear_wiper_repair_mode:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 964
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRearWiperRepairMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SituationManager"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 965
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setRearWiperRepairMode(Z)V

    .line 966
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "vehicle_rear_wiper_repair_mode"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setReserveTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 1095
    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->setReserveTime(J)V

    return-void
.end method

.method public setShowEcallOnStatus(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "show"
        }
    .end annotation

    .line 986
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->setShowEcallOnStatus(Z)V

    return-void
.end method

.method public setTboxDigitalKeyExistQuery()V
    .locals 1

    .line 1100
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mTboxViewModel:Lcom/xiaopeng/carcontrol/viewmodel/tbox/TBoxViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/tbox/TBoxViewModel;->setTboxDigitalKeyExistQuery()V

    return-void
.end method

.method public setWiperRepairMode(Z)V
    .locals 3
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->vehicle_front_wiper_repair_mode:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWiperRepairMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SituationManager"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 952
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setWiperRepairMode(Z)V

    .line 953
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "vehicle_front_wiper_repair_mode"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public shouldShowEcallOnStatus()Z
    .locals 1

    .line 991
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->shouldShowEcallOnStatus()Z

    move-result v0

    return v0
.end method

.method public showMileageInfoPanel()V
    .locals 3

    .line 804
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaopeng/carcontrol/ServerApp;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/carcontrol/CarControlService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_VEHICLE_MILEAGE_PANEL"

    .line 805
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 806
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/App;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public startEcall()V
    .locals 3

    .line 1080
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaopeng.ecall.callout"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 1081
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1082
    invoke-static {}, Lcom/xiaopeng/carcontrol/ServerApp;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/App;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    const-string v1, "SituationManager"

    const-string v2, "ECALL activity not found"

    .line 1084
    invoke-static {v1, v2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public startSMSVerification()V
    .locals 1

    .line 1105
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager;->mTboxViewModel:Lcom/xiaopeng/carcontrol/viewmodel/tbox/TBoxViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/tbox/TBoxViewModel;->startSMSVerification()V

    return-void
.end method
