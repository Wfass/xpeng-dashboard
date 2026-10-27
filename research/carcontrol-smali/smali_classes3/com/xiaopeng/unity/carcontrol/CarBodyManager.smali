.class public Lcom/xiaopeng/unity/carcontrol/CarBodyManager;
.super Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;
.source "CarBodyManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/ICarBodyManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/unity/carcontrol/CarBodyManager$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager<",
        "Lcom/xiaopeng/unity/carcontrol/CarBodyListener;",
        ">;",
        "Lcom/xiaopeng/unity/carcontrol/ICarBodyManager;"
    }
.end annotation


# instance fields
.field private mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

.field private mCarInfoVm:Lcom/xiaopeng/carcontrol/viewmodel/carinfo/CarInfoViewModel;

.field private mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

.field private mLeftSdcLastPos:I

.field private mRightSdcLastPos:I

.field private mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

.field private mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

.field private mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mLeftSdcLastPos:I

    .line 44
    iput v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mRightSdcLastPos:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/unity/carcontrol/CarBodyManager$1;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static convertArsWorkMode(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arsWorkMode"
        }
    .end annotation

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private convertDoubleFlashState(Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 599
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$lamp$TurnLampState:[I

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;->ordinal()I

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

.method private convertLeftSdcDoorPos(I)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 734
    iget v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mLeftSdcLastPos:I

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-eq v0, p1, :cond_1

    .line 736
    iput p1, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mLeftSdcLastPos:I

    .line 737
    iget-object v3, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v3, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isDoorClosed(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 741
    iput v2, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mLeftSdcLastPos:I

    move p1, v2

    goto :goto_0

    :cond_0
    if-lt v0, v1, :cond_1

    if-ge p1, v1, :cond_1

    .line 744
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->TAG:Ljava/lang/String;

    const-string v0, "The Left sdc door is closing and reach position 10, keep show with position10"

    invoke-static {p1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 746
    iput v1, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mLeftSdcLastPos:I

    move p1, v1

    :cond_1
    :goto_0
    return p1
.end method

.method private convertRightSdcDoorPos(I)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 755
    iget v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mRightSdcLastPos:I

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-eq v0, p1, :cond_1

    .line 757
    iput p1, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mRightSdcLastPos:I

    .line 758
    iget-object v3, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isDoorClosed(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 762
    iput v1, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mRightSdcLastPos:I

    move p1, v1

    goto :goto_0

    :cond_0
    if-lt v0, v2, :cond_1

    if-ge p1, v2, :cond_1

    .line 765
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->TAG:Ljava/lang/String;

    const-string v0, "The Right sdc door is closing and reach position 10, keep show with position10"

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 767
    iput v2, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mRightSdcLastPos:I

    move p1, v2

    :cond_1
    :goto_0
    return p1
.end method

.method public static get_instance()Lcom/xiaopeng/unity/carcontrol/CarBodyManager;
    .locals 1

    .line 51
    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager$Holder;->access$000()Lcom/xiaopeng/unity/carcontrol/CarBodyManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public controlSdc(ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "open"
        }
    .end annotation

    .line 680
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->controlSdc(ZZ)V

    return-void
.end method

.method public getArsWorkMode()I
    .locals 1

    .line 728
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getArsWorkMode()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->convertArsWorkMode(I)I

    move-result v0

    return v0
.end method

.method public getBrakeLightOnOff()Z
    .locals 1

    .line 705
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getBrakeLightOnOff()Z

    move-result v0

    return v0
.end method

.method public getCarBodyColor()I
    .locals 1

    .line 508
    invoke-static {}, Lcom/xiaopeng/carcontrol/util/CarsConsUtil;->getE38BodyColor()I

    move-result v0

    return v0
.end method

.method public getCarLicensePlate()Ljava/lang/String;
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mCarInfoVm:Lcom/xiaopeng/carcontrol/viewmodel/carinfo/CarInfoViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carinfo/CarInfoViewModel;->getCarLicensePlate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDaytimeRunningLightsOutputStatus()I
    .locals 1

    .line 710
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getDaytimeRunningLightsOutputStatus()I

    move-result v0

    return v0
.end method

.method public getDoubleFlashBeamState()I
    .locals 1

    .line 617
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getTurnLampState()Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->convertDoubleFlashState(Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;)I

    move-result v0

    return v0
.end method

.method public getElcTrunkPos()I
    .locals 1

    .line 543
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getElcTrunkPos()I

    move-result v0

    return v0
.end method

.method public getEnvironmentMode()I
    .locals 1

    .line 715
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getEnvironmentMode()I

    move-result v0

    return v0
.end method

.method public getInnerPositionBeamStatus()I
    .locals 1

    .line 636
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getInnerParkingLampStates()I

    move-result v0

    return v0
.end method

.method public getLeftSdcDoorPos()I
    .locals 1

    .line 685
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getLeftSdcDoorPos()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->convertLeftSdcDoorPos(I)I

    move-result v0

    return v0
.end method

.method public getOuterPositionBeamStatus()I
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getOuterParkingLampStates()I

    move-result v0

    return v0
.end method

.method public getRightSdcDoorPos()I
    .locals 1

    .line 690
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getRightSdcDoorPos()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->convertRightSdcDoorPos(I)I

    move-result v0

    return v0
.end method

.method public getSaberMode()I
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->isParkLampIncludeFmB()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getSdcLeftRadarDisLevel()I
    .locals 1

    .line 695
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getSdcLeftRadarDisLevel()I

    move-result v0

    return v0
.end method

.method public getSdcRightRadarDisLevel()I
    .locals 1

    .line 700
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getSdcRightRadarDisLevel()I

    move-result v0

    return v0
.end method

.method public getTrunkWorkStatus()I
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getTrunkWorkStatus()I

    move-result v0

    return v0
.end method

.method public initInternal()V
    .locals 2

    .line 56
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    if-nez v1, :cond_0

    .line 58
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    iput-object v1, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    if-nez v1, :cond_1

    .line 61
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    iput-object v1, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    if-nez v1, :cond_2

    .line 64
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ICarBodyViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    iput-object v1, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    .line 66
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    if-nez v1, :cond_3

    .line 67
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILampViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    iput-object v1, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    .line 69
    :cond_3
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    if-nez v1, :cond_4

    const-string v1, "isSupportSdc"

    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 70
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    iput-object v1, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    .line 72
    :cond_4
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mCarInfoVm:Lcom/xiaopeng/carcontrol/viewmodel/carinfo/CarInfoViewModel;

    if-nez v1, :cond_5

    .line 73
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/carinfo/ICarInfoViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/carinfo/CarInfoViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mCarInfoVm:Lcom/xiaopeng/carcontrol/viewmodel/carinfo/CarInfoViewModel;

    .line 75
    :cond_5
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager$1;-><init>(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->set_listener(Lcom/xiaopeng/unity/carcontrol/base/INapaListener;)V

    return-void
.end method

.method public isAllDoorsClosed()Z
    .locals 1

    .line 576
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isAllDoorsClosed()Z

    move-result v0

    return v0
.end method

.method public isBonnetClosed()Z
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getBonnetState()Z

    move-result v0

    return v0
.end method

.method public isCentralLocked()Z
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->windowdoor_central_lock:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 586
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isCentralLocked()Z

    move-result v0

    return v0
.end method

.method public isChargeGunUnlinked(Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isLeft"
        }
    .end annotation

    .line 529
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->isChargeGunUnlinked(Z)Z

    move-result p1

    return p1
.end method

.method public isChargePortClosed(Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isLeft"
        }
    .end annotation

    .line 524
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;->Left:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;->Right:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getChargePortState(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;)Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;->CLOSE:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public isDoorClosed(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 566
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isDoorClosed(I)Z

    move-result p1

    return p1
.end method

.method public isHighBeamOn()Z
    .locals 1

    .line 663
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getHighBeamState()Z

    move-result v0

    return v0
.end method

.method public isLowBeamOn()Z
    .locals 1

    .line 654
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getLowBeamState()Z

    move-result v0

    return v0
.end method

.method public isPositionBeamOn()Z
    .locals 1

    .line 626
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getParkLampState()Z

    move-result v0

    return v0
.end method

.method public isRearFogLampOn()Z
    .locals 1

    .line 672
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getRearFogLampState()Z

    move-result v0

    return v0
.end method

.method public isReverseLampOn()Z
    .locals 2

    .line 676
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getGearLevelValue()Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;->R:Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTrunkClosed()Z
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isTrunkClosed()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$observeData$0$CarBodyManager(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "license"
        }
    .end annotation

    .line 311
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;->onCarLicensePlateCallback(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$1$CarBodyManager(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "state"
        }
    .end annotation

    .line 318
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;->OPEN:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;->CLOSE:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;

    if-ne p1, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_2

    .line 319
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;->CLOSE:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, v2, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;->onChargePortStateChanged(ZZ)V

    :cond_2
    return-void
.end method

.method public synthetic lambda$observeData$10$CarBodyManager(Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;)V
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

    .line 384
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;

    invoke-direct {p0, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->convertDoubleFlashState(Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;->onDoubleFlashBeamChanged(I)V

    .line 386
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;

    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getParkLampState()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;->onPositionBeamChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$11$CarBodyManager(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "isOn"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 392
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;

    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getTurnLampState()Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->convertDoubleFlashState(Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;->onDoubleFlashBeamChanged(I)V

    .line 394
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;->onPositionBeamChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$12$CarBodyManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "states"
        }
    .end annotation

    .line 400
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 401
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;->onOuterPositionBeamStatusChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$13$CarBodyManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "states"
        }
    .end annotation

    .line 405
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 406
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;->onInnerPositionBeamStatusChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$14$CarBodyManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "isOn"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 412
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;->onLowBeamChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$15$CarBodyManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "isOn"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 419
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;->onHighBeamChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$16$CarBodyManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "isOn"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 426
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;->onRearFogLampChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$17$CarBodyManager(Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "level"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 433
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;->R:Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;->onReverseLampChanged(Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$18$CarBodyManager(Ljava/lang/Integer;)V
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

    .line 441
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->convertLeftSdcDoorPos(I)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;->onLeftSdcDoorPosChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$19$CarBodyManager(Ljava/lang/Integer;)V
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

    .line 446
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->convertRightSdcDoorPos(I)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;->onRightSdcDoorPosChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$2$CarBodyManager(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "state"
        }
    .end annotation

    .line 323
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;->OPEN:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;->CLOSE:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;

    if-ne p1, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_2

    .line 324
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;->CLOSE:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    invoke-interface {v0, v2, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;->onChargePortStateChanged(ZZ)V

    :cond_2
    return-void
.end method

.method public synthetic lambda$observeData$20$CarBodyManager(Lcom/xiaopeng/carcontrol/viewmodel/scu/SdcRadarDisLevel;)V
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

    .line 452
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/SdcRadarDisLevel;->toScuCode()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;->onSdcLeftRadarDisLevelChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$21$CarBodyManager(Lcom/xiaopeng/carcontrol/viewmodel/scu/SdcRadarDisLevel;)V
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

    .line 457
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/SdcRadarDisLevel;->toScuCode()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;->onSdcRightRadarDisLevelChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$22$CarBodyManager(Ljava/lang/Boolean;)V
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

    .line 474
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;->onBrakeLightChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$23$CarBodyManager(Ljava/lang/Integer;)V
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

    .line 481
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;->onDaytimeRunningLightChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$24$CarBodyManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mode"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 489
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->convertArsWorkMode(I)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;->onArsWorkModeChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$25$CarBodyManager(Ljava/lang/Integer;)V
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

    .line 496
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;->onEnvironmentModeChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$3$CarBodyManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "isClosed"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 336
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;->onBonnetStateChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$4$CarBodyManager(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "isClosed"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 343
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;->onDoorChanged(IZ)V

    const-string v0, "isSupportSdc"

    .line 345
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 346
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;

    invoke-direct {p0, v2}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->convertLeftSdcDoorPos(I)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;->onLeftSdcDoorPosChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$5$CarBodyManager(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "isClosed"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 351
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;->onDoorChanged(IZ)V

    const-string v0, "isSupportSdc"

    .line 353
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 354
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->convertRightSdcDoorPos(I)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;->onRightSdcDoorPosChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$6$CarBodyManager(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "isClosed"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 359
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;

    const/4 v1, 0x2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;->onDoorChanged(IZ)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$7$CarBodyManager(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "isClosed"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 364
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;

    const/4 v1, 0x3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;->onDoorChanged(IZ)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$8$CarBodyManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "isLocked"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 369
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;->onCentralLockStateChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$9$CarBodyManager(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "isOn"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 376
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;

    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getTurnLampState()Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->convertDoubleFlashState(Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;->onDoubleFlashBeamChanged(I)V

    .line 378
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;

    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getParkLampState()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;->onPositionBeamChanged(Z)V

    .line 379
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyListener;->onSaberModeChanged(I)V

    :cond_0
    return-void
.end method

.method protected observeData()V
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mCarInfoVm:Lcom/xiaopeng/carcontrol/viewmodel/carinfo/CarInfoViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carinfo/CarInfoViewModel;->getCarLicensePlateData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CarBodyManager$qJ1Jm0YMhyOZ30PLTPRk_RKoFg8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CarBodyManager$qJ1Jm0YMhyOZ30PLTPRk_RKoFg8;-><init>(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 317
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getLeftChargePortStateData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CarBodyManager$a9t7wueunLiFKTqovYGnRb6gvrs;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CarBodyManager$a9t7wueunLiFKTqovYGnRb6gvrs;-><init>(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 322
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getRightChargePortStateData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CarBodyManager$njrFK9dXrO0cyNCGuMS3p5CEqRM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CarBodyManager$njrFK9dXrO0cyNCGuMS3p5CEqRM;-><init>(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 335
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getBonnetData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CarBodyManager$h3D_UCqcIs0q8FjD9uBFy4TDUPA;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CarBodyManager$h3D_UCqcIs0q8FjD9uBFy4TDUPA;-><init>(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 342
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getDoorStateData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CarBodyManager$8a4umhfC9F9fG4sqfQG4MvS0twc;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CarBodyManager$8a4umhfC9F9fG4sqfQG4MvS0twc;-><init>(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 350
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getDoorStateData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CarBodyManager$9Z_2OQaJDSsTdrd37WPc4UtPal8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CarBodyManager$9Z_2OQaJDSsTdrd37WPc4UtPal8;-><init>(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 358
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getDoorStateData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CarBodyManager$sDEYGltLyB1mIA7nZ4zVk_tQvYs;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CarBodyManager$sDEYGltLyB1mIA7nZ4zVk_tQvYs;-><init>(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 363
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getDoorStateData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CarBodyManager$EHW378fvfo6lgKWYVsxBPvgy-zA;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CarBodyManager$EHW378fvfo6lgKWYVsxBPvgy-zA;-><init>(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 368
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getCentralLockStateData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CarBodyManager$bkZTlkA525bUCCC5TfaMvwhfzMQ;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CarBodyManager$bkZTlkA525bUCCC5TfaMvwhfzMQ;-><init>(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 375
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getParkLightRelatedFMBLightState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CarBodyManager$YB6QR-Mw73NRa7JB4uTeDPyFqrY;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CarBodyManager$YB6QR-Mw73NRa7JB4uTeDPyFqrY;-><init>(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 383
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getTurnLampData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CarBodyManager$JLyG3IdvFQGsbs9uJI77DaqoGwc;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CarBodyManager$JLyG3IdvFQGsbs9uJI77DaqoGwc;-><init>(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 391
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getParkLampData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CarBodyManager$zuGqSMLMXaH6dSNRcO9-miNcrJ4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CarBodyManager$zuGqSMLMXaH6dSNRcO9-miNcrJ4;-><init>(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 399
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getOuterParkingLampStatesData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CarBodyManager$M9JwqxIO7xApaTfUKajF20qYM3I;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CarBodyManager$M9JwqxIO7xApaTfUKajF20qYM3I;-><init>(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 404
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getInnerParkingLampStatesData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CarBodyManager$ldL6JX8_Yv3fOfNKCsIhyObD2tk;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CarBodyManager$ldL6JX8_Yv3fOfNKCsIhyObD2tk;-><init>(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 411
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getLowBeamLampState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CarBodyManager$6FQXXJXbL45wlWCPsLdlv0jkCX0;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CarBodyManager$6FQXXJXbL45wlWCPsLdlv0jkCX0;-><init>(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 418
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getHighBeamLampData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CarBodyManager$QSNLSyC1CRJ7mAZsxj-5KUoHoKA;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CarBodyManager$QSNLSyC1CRJ7mAZsxj-5KUoHoKA;-><init>(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 425
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getRearFogLampData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CarBodyManager$_z7vJSh6NfEuPNvJr8ilSR9mqps;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CarBodyManager$_z7vJSh6NfEuPNvJr8ilSR9mqps;-><init>(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 432
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getGearLevelData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CarBodyManager$9Nngcjow9vzljgiXYOMkZpEuFHE;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CarBodyManager$9Nngcjow9vzljgiXYOMkZpEuFHE;-><init>(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    const-string v0, "isSupportSdc"

    .line 439
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getLeftSdcDoorPosData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CarBodyManager$bg8MTJejoTv5UP8o2q0MQzmdpew;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CarBodyManager$bg8MTJejoTv5UP8o2q0MQzmdpew;-><init>(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 445
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getRightSdcDoorPosData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CarBodyManager$6tZNFW3YYF3uyXcZV7kpaGycG-8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CarBodyManager$6tZNFW3YYF3uyXcZV7kpaGycG-8;-><init>(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 451
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getLeftSdcDisLevelData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CarBodyManager$MwnVMqCLzZ4-S4hLTE885ooOx4M;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CarBodyManager$MwnVMqCLzZ4-S4hLTE885ooOx4M;-><init>(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 456
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getRightSdcDisLevelData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CarBodyManager$2zEKjGrcEp87j6EBJRNRMR8JLQs;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CarBodyManager$2zEKjGrcEp87j6EBJRNRMR8JLQs;-><init>(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_0
    const-string v0, "isSupportBrakeLight"

    .line 472
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 473
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getBrakeLightData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CarBodyManager$j98bgApmz-nzwq35k66TsLWkOAc;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CarBodyManager$j98bgApmz-nzwq35k66TsLWkOAc;-><init>(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_1
    const-string v0, "isSupportDaytimeRunningLight"

    .line 479
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 480
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getDaytimeRunningLightData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CarBodyManager$KkrAqySSM87cYLavCHuHHSupwR8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CarBodyManager$KkrAqySSM87cYLavCHuHHSupwR8;-><init>(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_2
    const-string v0, "isSupportArs"

    .line 487
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 488
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getArsWorkModeData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CarBodyManager$iEQ079XqObhSwwPVZWZ1yi-AR4I;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CarBodyManager$iEQ079XqObhSwwPVZWZ1yi-AR4I;-><init>(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 495
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getEnvironmentModeData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CarBodyManager$acpM7fJekAZCDRNdeHRjA46dANI;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CarBodyManager$acpM7fJekAZCDRNdeHRjA46dANI;-><init>(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

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

    .line 201
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "getInnerPositionBeamStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0x1e

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "getElcTrunkPos"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0x1d

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "isBonnetClosed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x1c

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "getDaytimeRunningLightsOutputStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x1b

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "setCentralLock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x1a

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "isChargePortClosed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0x19

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "isAllDoorsClosed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0x18

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "isRearFogLampOn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v3, 0x17

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "getSdcLeftRadarDisLevel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0x16

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "isHighBeamOn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v3, 0x15

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "getCarBodyColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v3, 0x14

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "isDoorClosed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v3, 0x13

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "getEnvironmentMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v3, 0x12

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "setArsWorkMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v3, 0x11

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "getRightSdcDoorPos"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v3, 0x10

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "getOuterPositionBeamStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v3, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "isPositionBeamOn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v3, 0xe

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "controlSdc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v3, 0xd

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "getDoubleFlashBeamState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "getTrunkWorkStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "getLeftSdcDoorPos"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "isLowBeamOn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "getSaberMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "isTrunkClosed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_0

    :cond_17
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_18
    const-string v0, "isReverseLampOn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_0

    :cond_18
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_19
    const-string v0, "getCarLicensePlate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_0

    :cond_19
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_1a
    const-string v0, "isCentralLocked"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_0

    :cond_1a
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_1b
    const-string v0, "getArsWorkMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_0

    :cond_1b
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_1c
    const-string v0, "isChargeGunUnlinked"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_0

    :cond_1c
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_1d
    const-string v0, "getBrakeLightOnOff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_0

    :cond_1d
    move v3, v2

    goto :goto_0

    :sswitch_1e
    const-string v0, "getSdcRightRadarDisLevel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_0

    :cond_1e
    move v3, v1

    :goto_0
    const/4 v0, 0x0

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    .line 248
    :pswitch_0
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->getInnerPositionBeamStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_2

    .line 218
    :pswitch_1
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->getElcTrunkPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_2

    .line 224
    :pswitch_2
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->isBonnetClosed()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_2

    .line 296
    :pswitch_3
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->getDaytimeRunningLightsOutputStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_2

    .line 236
    :pswitch_4
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->setCentralLock(Z)V

    goto/16 :goto_2

    .line 209
    :pswitch_5
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->isChargePortClosed(Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_2

    .line 230
    :pswitch_6
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->isAllDoorsClosed()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_2

    .line 260
    :pswitch_7
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->isRearFogLampOn()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_2

    .line 280
    :pswitch_8
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->getSdcLeftRadarDisLevel()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_2

    .line 257
    :pswitch_9
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->isHighBeamOn()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_2

    .line 203
    :pswitch_a
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->getCarBodyColor()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_2

    .line 227
    :pswitch_b
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->isDoorClosed(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_2

    .line 299
    :pswitch_c
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->getEnvironmentMode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 301
    :goto_1
    iget-object p2, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 287
    :pswitch_d
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->setArsWorkMode(I)V

    goto/16 :goto_2

    .line 277
    :pswitch_e
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->getRightSdcDoorPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_2

    .line 245
    :pswitch_f
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->getOuterPositionBeamStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_2

    .line 242
    :pswitch_10
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->isPositionBeamOn()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_11
    if-eqz p2, :cond_1f

    const-string p1, ","

    .line 267
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1f

    .line 268
    array-length p2, p1

    if-le p2, v2, :cond_1f

    .line 269
    aget-object p2, p1, v1

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    aget-object p1, p1, v2

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->controlSdc(ZZ)V

    goto/16 :goto_2

    .line 239
    :pswitch_12
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->getDoubleFlashBeamState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_2

    .line 221
    :pswitch_13
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->getTrunkWorkStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    .line 274
    :pswitch_14
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->getLeftSdcDoorPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    .line 254
    :pswitch_15
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->isLowBeamOn()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2

    .line 251
    :pswitch_16
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->getSaberMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    .line 215
    :pswitch_17
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->isTrunkClosed()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2

    .line 263
    :pswitch_18
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->isReverseLampOn()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2

    .line 206
    :pswitch_19
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->getCarLicensePlate()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 233
    :pswitch_1a
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->isCentralLocked()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2

    .line 290
    :pswitch_1b
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->getArsWorkMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    .line 212
    :pswitch_1c
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->isChargeGunUnlinked(Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2

    .line 293
    :pswitch_1d
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->getBrakeLightOnOff()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2

    .line 283
    :pswitch_1e
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->getSdcRightRadarDisLevel()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1f
    :goto_2
    if-eqz v0, :cond_20

    .line 304
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_20
    const-string p1, ""

    :goto_3
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7d0401e4 -> :sswitch_1e
        -0x623cc111 -> :sswitch_1d
        -0x59cb340c -> :sswitch_1c
        -0x5224d860 -> :sswitch_1b
        -0x518b482b -> :sswitch_1a
        -0x274f90ed -> :sswitch_19
        -0x263d15b1 -> :sswitch_18
        -0x18f86f4a -> :sswitch_17
        -0x169b65f2 -> :sswitch_16
        -0x14df0fa8 -> :sswitch_15
        -0xa3a646f -> :sswitch_14
        -0x24b72ff -> :sswitch_13
        0x16ff56b9 -> :sswitch_12
        0x25fe0595 -> :sswitch_11
        0x2663b841 -> :sswitch_10
        0x286f222f -> :sswitch_f
        0x3614ec3a -> :sswitch_e
        0x44409b14 -> :sswitch_d
        0x488a7020 -> :sswitch_c
        0x496af384 -> :sswitch_b
        0x4e967be3 -> :sswitch_a
        0x4ed072fa -> :sswitch_9
        0x5022de59 -> :sswitch_8
        0x593fade7 -> :sswitch_7
        0x5a5e7fba -> :sswitch_6
        0x5c3e2c6b -> :sswitch_5
        0x67391e7e -> :sswitch_4
        0x6743da3c -> :sswitch_3
        0x6d646b12 -> :sswitch_2
        0x6fd38786 -> :sswitch_1
        0x7207af4a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public setArsWorkMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 720
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setArsWorkMode(I)V

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 721
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getArsWorkMode()I

    move-result p1

    if-ne p1, v0, :cond_0

    .line 722
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const v0, 0x7f11002f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(IZ)V

    :cond_0
    return-void
.end method

.method public setCentralLock(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->windowdoor_central_lock:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lock"
        }
    .end annotation

    .line 592
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setCentralLock(Z)V

    .line 593
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "windowdoor_central_lock"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
