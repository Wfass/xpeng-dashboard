.class public Lcom/xiaopeng/unity/carcontrol/LampSettingManager;
.super Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;
.source "LampSettingManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/ILampSettingManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/unity/carcontrol/LampSettingManager$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager<",
        "Lcom/xiaopeng/unity/carcontrol/LampSettingListener;",
        ">;",
        "Lcom/xiaopeng/unity/carcontrol/ILampSettingManager;"
    }
.end annotation


# instance fields
.field private mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

.field private mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

.field private mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

.field private mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/unity/carcontrol/LampSettingManager$1;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/unity/carcontrol/LampSettingManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/xiaopeng/unity/carcontrol/LampSettingManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/xiaopeng/unity/carcontrol/LampSettingManager;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/xiaopeng/unity/carcontrol/LampSettingManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/xiaopeng/unity/carcontrol/LampSettingManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/xiaopeng/unity/carcontrol/LampSettingManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/xiaopeng/unity/carcontrol/LampSettingManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/unity/carcontrol/LampSettingManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/unity/carcontrol/LampSettingManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/unity/carcontrol/LampSettingManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/unity/carcontrol/LampSettingManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/unity/carcontrol/LampSettingManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/unity/carcontrol/LampSettingManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaopeng/unity/carcontrol/LampSettingManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaopeng/unity/carcontrol/LampSettingManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private convertLampHeightLevel(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 397
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$lamp$LampHeightLevel:[I

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private convertLightMeHome(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 477
    sget-object v1, Lcom/xiaopeng/unity/carcontrol/LampSettingManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$lamp$LightMeHomeTime:[I

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    const/4 p1, 0x2

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public static get_instance()Lcom/xiaopeng/unity/carcontrol/LampSettingManager;
    .locals 1

    .line 47
    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager$Holder;->access$000()Lcom/xiaopeng/unity/carcontrol/LampSettingManager;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$dQzu1AJDT4TRXBF-4e0okkP-hWk(I)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDomeLightBrightness()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->lamp_exterior_dome_light_brightness:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 693
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getDomeLightBrightness()I

    move-result v0

    return v0
.end method

.method public getDomeLightSw()Z
    .locals 2
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->lamp_exterior_dome_light_sw:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 681
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getDomeLightSw(I)Z

    move-result v0

    return v0
.end method

.method public getIhbState()I
    .locals 4
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->lamp_exterior_ihb:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 530
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->isXpuNedcActivated()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 531
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$ScuResponse:[I

    iget-object v3, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getIhbState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    .line 547
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIhbState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public getLampHeightLevel()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->lamp_exterior_height_level:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 358
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getLampHeightLevelValue()Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->convertLampHeightLevel(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;)I

    move-result v0

    return v0
.end method

.method public getLightMeHome()Z
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->lamp_exterior_light_me_home_sw:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 419
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->isLightMeHomeEnable()Z

    move-result v0

    return v0
.end method

.method public getLightMeHomeTime()I
    .locals 2
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->lamp_exterior_light_me_home_time:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 439
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getLightMeTime()Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->convertLightMeHome(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getCacheLightMeHomeTime()I

    move-result v0

    :cond_1
    :goto_0
    return v0
.end method

.method public getNedcState()I
    .locals 4

    .line 587
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getNedcState()Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

    move-result-object v0

    .line 588
    sget-object v1, Lcom/xiaopeng/unity/carcontrol/LampSettingManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$xpu$NedcState:[I

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v2

    :cond_1
    return v1
.end method

.method public getNgpState()I
    .locals 2

    .line 567
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getXpuXpilotState()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x2

    return v0
.end method

.method public getParkingLampStates()[I
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getParkingLampStates()[I

    move-result-object v0

    return-object v0
.end method

.method public getRearLogoLightSw()Z
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->lamp_exterior_rear_logo_light:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 709
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getRearLogoLightSw()Z

    move-result v0

    return v0
.end method

.method public getSaberMode()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->lamp_exterior_saber_mode:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 500
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->isParkLampIncludeFmB()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public initInternal()V
    .locals 2

    .line 52
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    .line 53
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILampViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    iput-object v1, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    .line 54
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILluViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    iput-object v1, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    .line 55
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    iput-object v1, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    .line 56
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/xpu/IXpuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    .line 57
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager$1;-><init>(Lcom/xiaopeng/unity/carcontrol/LampSettingManager;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->set_listener(Lcom/xiaopeng/unity/carcontrol/base/INapaListener;)V

    return-void
.end method

.method public isAutoLampHeight()Z
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->lamp_exterior_height_level_auto:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->isAutoLampHeight()Z

    move-result v0

    return v0
.end method

.method public isLLuSwEnable()Z
    .locals 1

    .line 606
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->isLLuSwEnabled()Z

    move-result v0

    return v0
.end method

.method public isLluChargingSwEnable()Z
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->lamp_exterior_llu_charging:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 665
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->isLLuSwEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->isLluChargingEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLluSleepSwEnable()Z
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->lamp_exterior_llu_sleep:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 645
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->isLLuSwEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->isLluSleepEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLluWakeWaitSwEnable()Z
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->lamp_exterior_llu_wake_wait:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 625
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->isLLuSwEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->isLluWakeWaitEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$observeData$0$LampSettingManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "auto"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 237
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/LampSettingListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/LampSettingListener;->onAutoLampHeightChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$1$LampSettingManager(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "level"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 242
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/LampSettingListener;

    invoke-direct {p0, p1}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->convertLampHeightLevel(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/LampSettingListener;->onLampHeightLevelChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$10$LampSettingManager(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "on"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 295
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/LampSettingListener;

    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->isLLuSwEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/LampSettingListener;->onLluChargeSwChanged(Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$11$LampSettingManager([Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "states"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 300
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/LampSettingListener;

    .line 302
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LampSettingManager$dQzu1AJDT4TRXBF-4e0okkP-hWk;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LampSettingManager$dQzu1AJDT4TRXBF-4e0okkP-hWk;

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p1

    .line 301
    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/LampSettingListener;->onParkingLampStatesChanged([I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$12$LampSettingManager(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "on"
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Observe DomeLightSwData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    .line 311
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/LampSettingListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/LampSettingListener;->onDomeLightSwChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$13$LampSettingManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "brightness"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 316
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/LampSettingListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/LampSettingListener;->onDomeLightBrightnessChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$14$LampSettingManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "on"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 324
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/LampSettingListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/LampSettingListener;->onRearLogoLightSwChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$2$LampSettingManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "lightMeHomeEnable"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 249
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/LampSettingListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/LampSettingListener;->onLightMeHomeSwChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$3$LampSettingManager(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "lightMeHomeTime"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 255
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/LampSettingListener;

    invoke-direct {p0, p1}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->convertLightMeHome(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/LampSettingListener;->onLightMeHomeModeChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$4$LampSettingManager(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
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

    .line 261
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz p1, :cond_0

    .line 262
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/carcontrol/LampSettingListener;

    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->getIhbState()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/unity/carcontrol/LampSettingListener;->onIhbStateChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$5$LampSettingManager(Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;)V
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

    .line 266
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz p1, :cond_0

    .line 267
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/carcontrol/LampSettingListener;

    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->getIhbState()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/unity/carcontrol/LampSettingListener;->onIhbStateChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$6$LampSettingManager(Ljava/lang/Boolean;)V
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

    .line 273
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/LampSettingListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/LampSettingListener;->onSaberModeChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$7$LampSettingManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "on"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 280
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/LampSettingListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/LampSettingListener;->onLluSwChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$8$LampSettingManager(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "on"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 285
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/LampSettingListener;

    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->isLLuSwEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/LampSettingListener;->onLluAwakeSwChanged(Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$9$LampSettingManager(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "on"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 290
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/LampSettingListener;

    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->isLLuSwEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/LampSettingListener;->onLluSleepSwChanged(Z)V

    :cond_1
    return-void
.end method

.method protected observeData()V
    .locals 2

    const-string v0, "isSupportLampHeight"

    .line 235
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getAutoLampHeightData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LampSettingManager$Ppuk-49gQ8WjqZD_Zk_hVLodO60;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LampSettingManager$Ppuk-49gQ8WjqZD_Zk_hVLodO60;-><init>(Lcom/xiaopeng/unity/carcontrol/LampSettingManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 241
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getLampHeightLevelData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LampSettingManager$2bbHWQLjjenUz90lZtJLR7vDp1A;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LampSettingManager$2bbHWQLjjenUz90lZtJLR7vDp1A;-><init>(Lcom/xiaopeng/unity/carcontrol/LampSettingManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getLightMeHomeData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LampSettingManager$klSWD0u19DYGWeGDKhs8ZKq1TYY;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LampSettingManager$klSWD0u19DYGWeGDKhs8ZKq1TYY;-><init>(Lcom/xiaopeng/unity/carcontrol/LampSettingManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 254
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getLightMeHomeTimeData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LampSettingManager$_vemBuZEtYP4PWYoBSHp8NUdqUs;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LampSettingManager$_vemBuZEtYP4PWYoBSHp8NUdqUs;-><init>(Lcom/xiaopeng/unity/carcontrol/LampSettingManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    const-string v0, "isSupportIhb"

    .line 259
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getIhbData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LampSettingManager$0VcEJvTPgysM1HNetBfyVPcBbYM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LampSettingManager$0VcEJvTPgysM1HNetBfyVPcBbYM;-><init>(Lcom/xiaopeng/unity/carcontrol/LampSettingManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 265
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getNedcStateData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LampSettingManager$I_YmlGDXNY3Y_Rv6E_V08-dlMpM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LampSettingManager$I_YmlGDXNY3Y_Rv6E_V08-dlMpM;-><init>(Lcom/xiaopeng/unity/carcontrol/LampSettingManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_1
    const-string v0, "isSupportSaberLight"

    .line 271
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 272
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getParkLightRelatedFMBLightState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LampSettingManager$rwxfO4eeIqD1xYA8TZM9BDuy7Do;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LampSettingManager$rwxfO4eeIqD1xYA8TZM9BDuy7Do;-><init>(Lcom/xiaopeng/unity/carcontrol/LampSettingManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_2
    const-string v0, "isSupportLlu"

    .line 278
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 279
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->getLluSwData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LampSettingManager$cZoDt3SURU_YMOVeAl7orKoYEvc;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LampSettingManager$cZoDt3SURU_YMOVeAl7orKoYEvc;-><init>(Lcom/xiaopeng/unity/carcontrol/LampSettingManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 284
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->getLluAwakeData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LampSettingManager$o_An8V8gcb_Dasou2mVElI-Qwes;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LampSettingManager$o_An8V8gcb_Dasou2mVElI-Qwes;-><init>(Lcom/xiaopeng/unity/carcontrol/LampSettingManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 289
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->getLluSleepData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LampSettingManager$VDd34haptBXLjpXfAbJwNZtFTRA;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LampSettingManager$VDd34haptBXLjpXfAbJwNZtFTRA;-><init>(Lcom/xiaopeng/unity/carcontrol/LampSettingManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 294
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->getLluChargeData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LampSettingManager$qWnqOURaJ1yl3sINc25s97KZQ2E;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LampSettingManager$qWnqOURaJ1yl3sINc25s97KZQ2E;-><init>(Lcom/xiaopeng/unity/carcontrol/LampSettingManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 299
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getParkingLampStatesData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LampSettingManager$3J_5ax5pPETW2eECtux5i9vD49c;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LampSettingManager$3J_5ax5pPETW2eECtux5i9vD49c;-><init>(Lcom/xiaopeng/unity/carcontrol/LampSettingManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_3
    const-string v0, "isSupportDomeLight"

    .line 307
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "isSupportDomeLightIndependentCtrl"

    .line 308
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 309
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getDomeLightSwData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LampSettingManager$ml6lx2NXfnMPGaqZPa2wnsrgjgY;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LampSettingManager$ml6lx2NXfnMPGaqZPa2wnsrgjgY;-><init>(Lcom/xiaopeng/unity/carcontrol/LampSettingManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 315
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getDomeLightBrightData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LampSettingManager$ql6XQCVRT11s-mLh7dGiljvF-Lo;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LampSettingManager$ql6XQCVRT11s-mLh7dGiljvF-Lo;-><init>(Lcom/xiaopeng/unity/carcontrol/LampSettingManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_4
    const-string v0, "isSupportRearLogoLight"

    .line 322
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 323
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getRearLogoLightSwData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LampSettingManager$3sHYQ7FVNsTw6Eur__-bEnLeiwk;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LampSettingManager$3sHYQ7FVNsTw6Eur__-bEnLeiwk;-><init>(Lcom/xiaopeng/unity/carcontrol/LampSettingManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_5
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

    .line 134
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "getDomeLightSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x1d

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "getLightMeHomeSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x1c

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "isLluWakeWaitSwEnable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x1b

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "getLampHeightLevel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x1a

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "showRearLogoLightConfirmDialog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x19

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "setLLuSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x18

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "setIhbSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x17

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "setLluWakeWaitSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x16

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "isLluSleepSwEnable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "setRearLogoLightSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "setSaberMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "getIhbState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "getParkingLampStates"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "getNgpState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "setLluSleepSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "setLightMeHomeTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "getRearLogoLightSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "setDomeLightSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "setDomeLightBrightness"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "setLightMeHomeSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "getNedcState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "setLluChargingSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "isLluChargingSwEnable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_0

    :cond_16
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_17
    const-string v0, "setAutoLampHeight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_0

    :cond_17
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_18
    const-string v0, "getSaberMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_0

    :cond_18
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_19
    const-string v0, "getLightMeHomeTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_0

    :cond_19
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1a
    const-string v0, "isAutoLampHeight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_0

    :cond_1a
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1b
    const-string v0, "getDomeLightBrightness"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_0

    :cond_1b
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1c
    const-string v0, "setLampHeightLevel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_0

    :cond_1c
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_1d
    const-string v0, "isLLuSwEnable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_0

    :cond_1d
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 227
    iget-object p2, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->TAG:Ljava/lang/String;

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

    .line 205
    :pswitch_0
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->getDomeLightSw()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 148
    :pswitch_1
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->getLightMeHome()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 187
    :pswitch_2
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->isLluWakeWaitSwEnable()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 142
    :pswitch_3
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->getLampHeightLevel()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 223
    :pswitch_4
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->showRearLogoLightConfirmDialog()V

    goto/16 :goto_1

    .line 184
    :pswitch_5
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->setLLuSw(Z)V

    goto/16 :goto_1

    .line 172
    :pswitch_6
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->setIhbSw(Z)V

    goto/16 :goto_1

    .line 190
    :pswitch_7
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->setLluWakeWaitSw(Z)V

    goto/16 :goto_1

    .line 193
    :pswitch_8
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->isLluSleepSwEnable()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 217
    :pswitch_9
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->setRearLogoLightSw(Z)V

    goto/16 :goto_1

    .line 163
    :pswitch_a
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->setSaberMode(I)V

    goto/16 :goto_1

    .line 169
    :pswitch_b
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->getIhbState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 166
    :pswitch_c
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->getParkingLampStates()[I

    move-result-object p1

    goto/16 :goto_2

    .line 175
    :pswitch_d
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->getNgpState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 196
    :pswitch_e
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->setLluSleepSw(Z)V

    goto/16 :goto_1

    .line 157
    :pswitch_f
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->setLightMeHomeTime(I)V

    goto/16 :goto_1

    .line 220
    :pswitch_10
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->getRearLogoLightSw()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 208
    :pswitch_11
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->setDomeLightSw(Z)V

    goto :goto_1

    .line 214
    :pswitch_12
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->setDomeLightBrightness(I)V

    goto :goto_1

    .line 151
    :pswitch_13
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->setLightMeHome(Z)V

    goto :goto_1

    .line 178
    :pswitch_14
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->getNedcState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    .line 202
    :pswitch_15
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->setLluChargingSw(Z)V

    goto :goto_1

    .line 199
    :pswitch_16
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->isLluChargingSwEnable()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2

    .line 139
    :pswitch_17
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->setAutoLampHeight(Z)V

    goto :goto_1

    .line 160
    :pswitch_18
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->getSaberMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    .line 154
    :pswitch_19
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->getLightMeHomeTime()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    .line 136
    :pswitch_1a
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->isAutoLampHeight()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2

    .line 211
    :pswitch_1b
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->getDomeLightBrightness()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    .line 145
    :pswitch_1c
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->setLampHeightLevel(I)V

    :goto_1
    const/4 p1, 0x0

    goto :goto_2

    .line 181
    :pswitch_1d
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->isLLuSwEnable()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_2
    if-eqz p1, :cond_1e

    .line 230
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_1e
    const-string p1, ""

    :goto_3
    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x797a804e -> :sswitch_1d
        -0x56dbdb1d -> :sswitch_1c
        -0x420dc712 -> :sswitch_1b
        -0x22cd8008 -> :sswitch_1a
        -0x209b727c -> :sswitch_19
        -0x169b65f2 -> :sswitch_18
        -0x12ead2d0 -> :sswitch_17
        -0xdbb51dd -> :sswitch_16
        0x690c848 -> :sswitch_15
        0x8529705 -> :sswitch_14
        0xaf1f14f -> :sswitch_13
        0xc36f862 -> :sswitch_12
        0xfc67b75 -> :sswitch_11
        0x10a3ef75 -> :sswitch_10
        0x163b26f8 -> :sswitch_f
        0x16d88ce8 -> :sswitch_e
        0x2b23f670 -> :sswitch_d
        0x32d25b1c -> :sswitch_c
        0x40c078a4 -> :sswitch_b
        0x45b85a82 -> :sswitch_a
        0x477a88e9 -> :sswitch_9
        0x47f31153 -> :sswitch_8
        0x51c8f910 -> :sswitch_7
        0x532425a5 -> :sswitch_6
        0x5341f917 -> :sswitch_5
        0x6037b35e -> :sswitch_4
        0x724d8b6f -> :sswitch_3
        0x727728eb -> :sswitch_2
        0x781b8adb -> :sswitch_1
        0x79610801 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public setAutoLampHeight(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->lamp_exterior_height_level_auto:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "auto"
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->setAutoLampHeight(Z)V

    .line 349
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "lamp_exterior_height_level_auto"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setDomeLightBrightness(I)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->lamp_exterior_dome_light_brightness:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "brightness"
        }
    .end annotation

    .line 699
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->setDomeLightBrightness(I)V

    .line 700
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "lamp_exterior_dome_light_brightness"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setDomeLightSw(Z)V
    .locals 2
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->lamp_exterior_dome_light_sw:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 687
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->setDomeLightSw(IZ)V

    .line 688
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "lamp_exterior_dome_light_sw"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setIhbSw(Z)V
    .locals 2
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->lamp_exterior_ihb:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 558
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->setIhbEnable(ZZ)V

    .line 559
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "lamp_exterior_ihb"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLLuSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 615
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->setLluMultiSwEnable(Z)V

    return-void
.end method

.method public setLampHeightLevel(I)V
    .locals 2
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->lamp_exterior_height_level:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 385
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;->Highest:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;

    goto :goto_0

    .line 380
    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;->Lowest:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;

    goto :goto_0

    .line 376
    :cond_1
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;->Low:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;

    goto :goto_0

    .line 372
    :cond_2
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;->High:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;

    .line 389
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;->toBcmValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->setLampHeightLevel(I)V

    .line 390
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "lamp_exterior_height_level"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLightMeHome(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->lamp_exterior_light_me_home_sw:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 429
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->setLightMeHome(Z)V

    .line 430
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "lamp_exterior_light_me_home_sw"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLightMeHomeTime(I)V
    .locals 2
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->lamp_exterior_light_me_home_time:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 454
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;->Time15s:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;

    if-eqz p1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 463
    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;->Time60s:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;

    goto :goto_0

    .line 460
    :cond_1
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;->Time30s:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;

    goto :goto_0

    .line 457
    :cond_2
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;->Off:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;

    .line 469
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->setLightMeHomeTime(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;)V

    .line 470
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "lamp_exterior_light_me_home_time"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLluChargingSw(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->lamp_exterior_llu_charging:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 675
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->setLluChargingSwitch(Z)V

    .line 676
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "lamp_exterior_llu_charging"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLluSleepSw(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->lamp_exterior_llu_sleep:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 655
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->setLluSleepSwitch(Z)V

    .line 656
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "lamp_exterior_llu_sleep"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLluWakeWaitSw(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->lamp_exterior_llu_wake_wait:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 635
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->setLluWakeWaitSwitch(Z)V

    .line 636
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "lamp_exterior_llu_wake_wait"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setRearLogoLightSw(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->lamp_exterior_rear_logo_light:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 704
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->setRearLogoLightSw(Z)V

    .line 705
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "lamp_exterior_rear_logo_light"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSaberMode(I)V
    .locals 2
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->lamp_exterior_saber_mode:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 510
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->setParkLampIncludeFmB(Z)V

    .line 511
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "lamp_exterior_saber_mode"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public showRearLogoLightConfirmDialog()V
    .locals 3

    .line 713
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaopeng/carcontrol/ServerApp;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/carcontrol/CarControlService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_REAR_LOGO_LIGHT_CONFIRM_DIALOG"

    .line 714
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 715
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/App;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
