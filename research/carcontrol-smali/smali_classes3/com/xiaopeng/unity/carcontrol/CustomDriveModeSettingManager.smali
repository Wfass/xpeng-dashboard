.class public Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;
.super Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;
.source "CustomDriveModeSettingManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/ICustomDriveModeSettingManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager<",
        "Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingListener;",
        ">;",
        "Lcom/xiaopeng/unity/carcontrol/ICustomDriveModeSettingManager;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomDriveModeSettingManager"


# instance fields
.field private mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

.field private mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager$1;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private convertAsHeightMode(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 288
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$carsettings$AsHeight:[I

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v2, 0x5

    if-eq p1, v0, :cond_1

    if-eq p1, v2, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x6

    return p1

    :cond_1
    return v2

    :cond_2
    return v0
.end method

.method private convertAsSoftMode(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 344
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$carsettings$AsSoft:[I

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static convertCdcMode(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cdcMode"
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private convertEnergyRecycleGrade(Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "grade"
        }
    .end annotation

    .line 451
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$vcu$EnergyRecycleGrade:[I

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private convertPowerResponse(Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .line 394
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$vcu$PowerResponse:[I

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method

.method private static convertSteeringEpsMode(Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 562
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$chassis$SteeringEpsMode:[I

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static get_instance()Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;
    .locals 1

    .line 39
    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager$Holder;->access$000()Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAsHeightMode()I
    .locals 4

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getAsHeightMode()Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    move-result-object v0

    if-nez v0, :cond_0

    .line 249
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->H0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    .line 251
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAsHeightMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "CustomDriveModeSettingManager"

    invoke-static {v3, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 252
    invoke-direct {p0, v0}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->convertAsHeightMode(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;)I

    move-result v0

    return v0
.end method

.method public getAsSoftMode()I
    .locals 4

    .line 311
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getAsSoftMode()Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;

    move-result-object v0

    if-nez v0, :cond_0

    .line 313
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;->Soft:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;

    .line 315
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAsSoftMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "CustomDriveModeSettingManager"

    invoke-static {v3, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 316
    invoke-direct {p0, v0}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->convertAsSoftMode(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;)I

    move-result v0

    return v0
.end method

.method public getCdcMode()I
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getCdcMode()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->convertCdcMode(I)I

    move-result v0

    return v0
.end method

.method public getDriveSubConfig(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "driveMode"
        }
    .end annotation

    .line 550
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->uiCodeToVcuCode(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 554
    :cond_0
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->getDriveSubConfigWithDriveMode(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getEnergyRecycleGrade()I
    .locals 4
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->drive_settings_energy_recycle:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 414
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getEnergyRecycle()Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;

    move-result-object v0

    if-nez v0, :cond_0

    .line 416
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;->Middle:Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;

    .line 418
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEnergyRecycleGrade:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "CustomDriveModeSettingManager"

    invoke-static {v3, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 419
    invoke-direct {p0, v0}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->convertEnergyRecycleGrade(Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;)I

    move-result v0

    return v0
.end method

.method public getEpsWarningState()Z
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getEpsWarningState()Z

    move-result v0

    return v0
.end method

.method public getPowerResponse()I
    .locals 4

    .line 361
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getPowerResponse()Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;

    move-result-object v0

    if-nez v0, :cond_0

    .line 363
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;->Standard:Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;

    .line 365
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPowerResponse:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "CustomDriveModeSettingManager"

    invoke-static {v3, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 366
    invoke-direct {p0, v0}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->convertPowerResponse(Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;)I

    move-result v0

    return v0
.end method

.method public getSteeringEps()I
    .locals 5
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->drive_settings_eps:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    const-string v0, "CustomDriveModeSettingManager"

    const/4 v1, 0x0

    .line 473
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getSteeringEps()I

    move-result v2

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;->fromEpsState(I)Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 475
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 476
    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;->Standard:Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;

    .line 478
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSteeringEps:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 479
    invoke-static {v2}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->convertSteeringEpsMode(Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;)I

    move-result v0

    return v0
.end method

.method public getTuningConfig(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tuningType"
        }
    .end annotation

    const/16 v0, 0xf

    .line 545
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->getDriveSubItem(I)Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;

    move-result-object v0

    .line 546
    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->getFunctionValue(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public initInternal()V
    .locals 2

    .line 44
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    .line 45
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    iput-object v1, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    .line 46
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/IChassisViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    .line 47
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager$1;-><init>(Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->set_listener(Lcom/xiaopeng/unity/carcontrol/base/INapaListener;)V

    return-void
.end method

.method public synthetic lambda$observeData$0$CustomDriveModeSettingManager(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mode"
        }
    .end annotation

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAsHeightModeChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomDriveModeSettingManager"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingListener;

    invoke-direct {p0, p1}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->convertAsHeightMode(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingListener;->onAsHeightModeChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$1$CustomDriveModeSettingManager(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mode"
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAsSoftModeChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomDriveModeSettingManager"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingListener;

    invoke-direct {p0, p1}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->convertAsSoftMode(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingListener;->onAsSoftModeChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$2$CustomDriveModeSettingManager(Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "response"
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPowerResponseChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomDriveModeSettingManager"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingListener;

    invoke-direct {p0, p1}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->convertPowerResponse(Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingListener;->onPowerResponseChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$3$CustomDriveModeSettingManager(Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "grade"
        }
    .end annotation

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEnergyRecycleGradeChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomDriveModeSettingManager"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingListener;

    invoke-direct {p0, p1}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->convertEnergyRecycleGrade(Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingListener;->onEnergyRecycleGradeChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$4$CustomDriveModeSettingManager(Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mode"
        }
    .end annotation

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSteeringEpsModeChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomDriveModeSettingManager"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingListener;

    invoke-static {p1}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->convertSteeringEpsMode(Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingListener;->onSteeringEpsModeChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$5$CustomDriveModeSettingManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "cdcMode"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->convertCdcMode(I)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingListener;->onCdcModeChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$6$CustomDriveModeSettingManager(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "result"
        }
    .end annotation

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDriveSubConfigChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomDriveModeSettingManager"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingListener;->onDriveSubConfigChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected observeData()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getAsHeightModeData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CustomDriveModeSettingManager$_wF2PO67ZsGyzZ8xnYdGknYuUf8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CustomDriveModeSettingManager$_wF2PO67ZsGyzZ8xnYdGknYuUf8;-><init>(Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getAsSoftModeData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CustomDriveModeSettingManager$mGedU-FDPJLYA-AWVes_-INhXcw;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CustomDriveModeSettingManager$mGedU-FDPJLYA-AWVes_-INhXcw;-><init>(Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getPowerResponseData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CustomDriveModeSettingManager$KDRxBJEDs4480XxN46enrgLoyqE;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CustomDriveModeSettingManager$KDRxBJEDs4480XxN46enrgLoyqE;-><init>(Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getEnergyRecycleData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CustomDriveModeSettingManager$cSLphXLVATkaYV6QoxlNLcbqTgE;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CustomDriveModeSettingManager$cSLphXLVATkaYV6QoxlNLcbqTgE;-><init>(Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getSteeringEpsData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CustomDriveModeSettingManager$CWPocCULwIVGkkk63m53QVttYPk;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CustomDriveModeSettingManager$CWPocCULwIVGkkk63m53QVttYPk;-><init>(Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    const-string v0, "isSupportCdcControl"

    .line 118
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getCdcModeData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CustomDriveModeSettingManager$jO4WRWK8PxMkdbdKG_uCnDRAZvw;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CustomDriveModeSettingManager$jO4WRWK8PxMkdbdKG_uCnDRAZvw;-><init>(Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getDriveSubConfigData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CustomDriveModeSettingManager$Vds8dUtUDt9B9PwjUANkB-3jqXA;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CustomDriveModeSettingManager$Vds8dUtUDt9B9PwjUANkB-3jqXA;-><init>(Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method protected onRealCall(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
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

    .line 137
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "getTuningAsHeightMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x1f

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "setEnergyRecycleGrade"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x1e

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "getAsSoftMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x1d

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "setTuningEnergyRecycleGrade"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x1c

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "getTuningAwdSetting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x1b

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "getCdcMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x1a

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "setTuningSteeringEps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x19

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "setTuningPowerResponsePlus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x18

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "getTuningPowerResponsePlus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x17

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "setAsHeightMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x16

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "getSteeringEps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "isFirstSelectTuningMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "getCreepMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "getTuningEspMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "setTuningAsHeightMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "setTuningAwdSetting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "getAsHeightMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "getTuningAsSoftMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "getPowerResponse"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "restoreDriveSubConfig"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "getEpsWarningState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "getEnergyRecycleGrade"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "setCdcMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "getDriveSubConfig"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "setSteeringEps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_0

    :cond_18
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_19
    const-string v0, "getTuningEnergyRecycleGrade"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_0

    :cond_19
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_1a
    const-string v0, "setTuningEspMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_0

    :cond_1a
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_1b
    const-string v0, "setTuningAsSoftMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_0

    :cond_1b
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1c
    const-string v0, "setAsSoftMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_0

    :cond_1c
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1d
    const-string v0, "setPowerResponse"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_0

    :cond_1d
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1e
    const-string v0, "getTuningSteeringEps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_0

    :cond_1e
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_1f
    const-string v0, "setCreepMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_0

    :cond_1f
    const/4 v1, 0x0

    :goto_0
    const-string v0, "CREEP_SPEED"

    const-string v2, "AWD_SETTINGS"

    const-string v3, "ESP_PLUS"

    const-string v4, "AS_SOFT"

    const-string v5, "AS_HEIGHT"

    const-string v6, "EPS"

    const-string v7, "POWER_RESPONSE_PLUS"

    const-string v8, "ENERGY_RECOVERY_PLUS"

    packed-switch v1, :pswitch_data_0

    .line 235
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown method "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CustomDriveModeSettingManager"

    invoke-static {p2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 199
    :pswitch_0
    invoke-virtual {p0, v5}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->getTuningConfig(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 154
    :pswitch_1
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->setEnergyRecycleGrade(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    .line 145
    :pswitch_2
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->getAsSoftMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 178
    :pswitch_3
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v8, p1}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->setTuningConfig(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 217
    :pswitch_4
    invoke-virtual {p0, v2}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->getTuningConfig(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 172
    :pswitch_5
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->getCdcMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 190
    :pswitch_6
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v6, p1}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->setTuningConfig(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 184
    :pswitch_7
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v7, p1}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->setTuningConfig(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 187
    :pswitch_8
    invoke-virtual {p0, v7}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->getTuningConfig(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 142
    :pswitch_9
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->setAsHeightMode(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    .line 163
    :pswitch_a
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->getSteeringEps()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 232
    :pswitch_b
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getFirstEnterXpowerFlag()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 223
    :pswitch_c
    invoke-virtual {p0, v0}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->getTuningConfig(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 211
    :pswitch_d
    invoke-virtual {p0, v3}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->getTuningConfig(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 196
    :pswitch_e
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v5, p1}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->setTuningConfig(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 214
    :pswitch_f
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v2, p1}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->setTuningConfig(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 139
    :pswitch_10
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->getAsHeightMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 205
    :pswitch_11
    invoke-virtual {p0, v4}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->getTuningConfig(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 157
    :pswitch_12
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->getPowerResponse()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 229
    :pswitch_13
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->restoreDriveSubConfig()V

    goto :goto_1

    .line 169
    :pswitch_14
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->getEpsWarningState()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2

    .line 151
    :pswitch_15
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->getEnergyRecycleGrade()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    .line 175
    :pswitch_16
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->setCdcMode(I)V

    goto :goto_1

    .line 226
    :pswitch_17
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->getDriveSubConfig(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 166
    :pswitch_18
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->setSteeringEps(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 181
    :pswitch_19
    invoke-virtual {p0, v8}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->getTuningConfig(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    .line 208
    :pswitch_1a
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v3, p1}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->setTuningConfig(Ljava/lang/String;I)V

    goto :goto_1

    .line 202
    :pswitch_1b
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v4, p1}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->setTuningConfig(Ljava/lang/String;I)V

    goto :goto_1

    .line 148
    :pswitch_1c
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->setAsSoftMode(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 160
    :pswitch_1d
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->setPowerResponse(I)V

    goto :goto_1

    .line 193
    :pswitch_1e
    invoke-virtual {p0, v6}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->getTuningConfig(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    .line 220
    :pswitch_1f
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->setTuningConfig(Ljava/lang/String;I)V

    :goto_1
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_20

    .line 238
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_20
    const-string p1, ""

    :goto_3
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7a0417fe -> :sswitch_1f
        -0x78eddbb4 -> :sswitch_1e
        -0x731cb0dc -> :sswitch_1d
        -0x669e5ebf -> :sswitch_1c
        -0x61992baa -> :sswitch_1b
        -0x5e3b2372 -> :sswitch_1a
        -0x45009b49 -> :sswitch_19
        -0x38f8fecb -> :sswitch_18
        -0x314b13d2 -> :sswitch_17
        -0x297c29dd -> :sswitch_16
        -0x281ea25e -> :sswitch_15
        -0x21324699 -> :sswitch_14
        -0x6d3d29a -> :sswitch_13
        -0x5f31750 -> :sswitch_12
        -0x595c0b6 -> :sswitch_11
        -0x25d484e -> :sswitch_10
        0xa9adc99 -> :sswitch_f
        0xc707493 -> :sswitch_e
        0xeee761a -> :sswitch_d
        0x29a8278e -> :sswitch_c
        0x2c8687da -> :sswitch_b
        0x30a18dc1 -> :sswitch_a
        0x33ebb2be -> :sswitch_9
        0x455954b5 -> :sswitch_8
        0x5b893a29 -> :sswitch_7
        0x62a830c0 -> :sswitch_6
        0x631288af -> :sswitch_5
        0x669e478d -> :sswitch_4
        0x6acc2dc3 -> :sswitch_3
        0x6b3d5335 -> :sswitch_2
        0x6f0cdfae -> :sswitch_1
        0x7544f287 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public restoreDriveSubConfig()V
    .locals 1

    .line 558
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->restoreDriveSubConfig()V

    return-void
.end method

.method public setAsHeightMode(I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->defaultAsHeightInfoCodeAndNotifyMsg()Ljava/lang/String;

    move-result-object v0

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAsHeightMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CustomDriveModeSettingManager"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 278
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->LL3:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setAsHeightMode(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 274
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->LL1:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setAsHeightMode(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 271
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->H0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setAsHeightMode(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 268
    :pswitch_3
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->HL1:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setAsHeightMode(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 265
    :pswitch_4
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->HL2:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setAsHeightMode(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;Z)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setAsSoftMode(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAsSoftMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomDriveModeSettingManager"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 326
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->defaultAsSoftInfoCodeAndNotifyMsg()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 335
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;->Hard:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setAsSoftMode(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 332
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;->Medium:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setAsSoftMode(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 329
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;->Soft:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setAsSoftMode(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public setCdcMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cdcMode"
        }
    .end annotation

    .line 519
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setCdcMode(I)V

    const/4 v0, 0x2

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 528
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setCdcMode(I)V

    goto :goto_0

    .line 525
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setCdcMode(I)V

    goto :goto_0

    .line 522
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setCdcMode(I)V

    :goto_0
    return-void
.end method

.method public setEnergyRecycleGrade(I)Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->drive_settings_energy_recycle:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEnergyRecycleGrade:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomDriveModeSettingManager"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 430
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->defaultEnergyRecycleInfoCodeAndNotifyMsg()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;->XPEDAL:Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setEnergyRecycleGrade(Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;->Low:Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setEnergyRecycleGrade(Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 436
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;->Middle:Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setEnergyRecycleGrade(Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 433
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;->High:Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setEnergyRecycleGrade(Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;)Ljava/lang/String;

    move-result-object v0

    .line 447
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "drive_settings_energy_recycle"

    invoke-static {v1, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public setPowerResponse(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPowerResponse:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomDriveModeSettingManager"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 387
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;->SuperFast:Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setPowerResponse(Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;)V

    goto :goto_0

    .line 384
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;->Fast:Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setPowerResponse(Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;)V

    goto :goto_0

    .line 381
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;->Standard:Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setPowerResponse(Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;)V

    goto :goto_0

    .line 378
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;->Slow:Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setPowerResponse(Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;)V

    :goto_0
    return-void
.end method

.method public setSteeringEps(I)Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->drive_settings_eps:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 489
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->defaultSteeringEpsInfoCodeAndNotifyMsg()Ljava/lang/String;

    move-result-object v0

    .line 490
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSteeringEps:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CustomDriveModeSettingManager"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;->Sport:Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setSteeringEps(Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 496
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;->Standard:Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setSteeringEps(Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 493
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;->Soft:Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setSteeringEps(Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;)Ljava/lang/String;

    move-result-object v0

    .line 504
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "drive_settings_eps"

    invoke-static {v1, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public setTuningConfig(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "function",
            "value"
        }
    .end annotation

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTuningConfig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomDriveModeSettingManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xf

    .line 537
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->getDriveSubItem(I)Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;

    move-result-object v1

    .line 538
    invoke-virtual {v1, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->setFunctionValue(Ljava/lang/String;I)V

    .line 539
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->updateDriveSubItemByDriveMode(ILcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;)V

    .line 540
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setTuningConfig()V

    return-void
.end method
