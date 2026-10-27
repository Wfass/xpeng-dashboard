.class public Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;
.super Lcom/xiaopeng/carcontrol/sdkImpl/AbstractManagerImpl;
.source "CarBodyManagerImpl.java"

# interfaces
.implements Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;


# instance fields
.field private mArsVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

.field private mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

.field private mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

.field private mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

.field private mLeftSdcLastPos:I

.field private mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

.field private mRightSdcLastPos:I

.field private mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/sdkImpl/AbstractManagerImpl;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mLeftSdcLastPos:I

    .line 45
    iput v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mRightSdcLastPos:I

    return-void
.end method

.method private convertChargePortState(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 757
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;->UNKNOWN:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;

    .line 759
    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$carsettings$ChargePortState:[I

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    return v1

    :cond_1
    return v0

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    return v1

    :cond_4
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

    .line 776
    iget v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mLeftSdcLastPos:I

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-eq v0, p1, :cond_1

    .line 778
    iput p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mLeftSdcLastPos:I

    .line 779
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v3, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isDoorClosed(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 783
    iput v2, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mLeftSdcLastPos:I

    move p1, v2

    goto :goto_0

    :cond_0
    if-lt v0, v1, :cond_1

    if-ge p1, v1, :cond_1

    .line 786
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->TAG:Ljava/lang/String;

    const-string v0, "The Left sdc door is closing and reach position 10, keep show with position10"

    invoke-static {p1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 788
    iput v1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mLeftSdcLastPos:I

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

    .line 797
    iget v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mRightSdcLastPos:I

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-eq v0, p1, :cond_1

    .line 799
    iput p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mRightSdcLastPos:I

    .line 800
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isDoorClosed(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 804
    iput v1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mRightSdcLastPos:I

    move p1, v1

    goto :goto_0

    :cond_0
    if-lt v0, v2, :cond_1

    if-ge p1, v2, :cond_1

    .line 807
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->TAG:Ljava/lang/String;

    const-string v0, "The Right sdc door is closing and reach position 10, keep show with position10"

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 809
    iput v2, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mRightSdcLastPos:I

    move p1, v2

    :cond_1
    :goto_0
    return p1
.end method

.method private convertTrunkState(Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 733
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;->Closed:Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

    .line 735
    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$cabin$TrunkState:[I

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    return v0
.end method


# virtual methods
.method public controlLeftSdc(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cmd"
        }
    .end annotation

    .line 680
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->controlSdc(ZI)V

    return-void
.end method

.method public controlLeftSlideDoor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cmd"
        }
    .end annotation

    .line 488
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->controlLeftSlideDoor(I)V

    return-void
.end method

.method public controlRightSdc(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cmd"
        }
    .end annotation

    .line 685
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->controlSdc(ZI)V

    return-void
.end method

.method public controlRightSlideDoor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cmd"
        }
    .end annotation

    .line 493
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->controlRightSlideDoor(I)V

    return-void
.end method

.method public controlSmartRestore()V
    .locals 0

    return-void
.end method

.method public exeSmartRestore()V
    .locals 1

    .line 725
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/restore/RestoreSmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/restore/RestoreSmartControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/restore/RestoreSmartControl;->handleSmartRestore()V

    return-void
.end method

.method public foldArs()V
    .locals 2

    .line 700
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mArsVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->fold(Z)V

    return-void
.end method

.method public foldMirror(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isFold"
        }
    .end annotation

    .line 660
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->controlMirror(Z)V

    return-void
.end method

.method public getArsFoldState()I
    .locals 1

    .line 715
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mArsVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->getArsFoldState()Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;->getIntValue()I

    move-result v0

    return v0
.end method

.method public getArsPosition()I
    .locals 1

    .line 720
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mArsVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->getArsPosition()I

    move-result v0

    return v0
.end method

.method public getArsWorkState()I
    .locals 1

    .line 710
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mArsVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->getArsWorkState()Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;->getIntValue()I

    move-result v0

    return v0
.end method

.method public getChargePort(Z)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isLeft"
        }
    .end annotation

    .line 414
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;->Left:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;->Right:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getChargePortState(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;)Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->convertChargePortState(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;)I

    move-result p1

    return p1
.end method

.method public getCwcChargeErrorSt()Z
    .locals 1

    .line 543
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getCwcChargeErrorSt()Z

    move-result v0

    return v0
.end method

.method public getCwcChargeSt()I
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getCwcChargeSt()I

    move-result v0

    return v0
.end method

.method public getCwcFRChargeErrorSt()Z
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getCwcFRChargeErrorSt()Z

    move-result v0

    return v0
.end method

.method public getCwcFRChargeSt()I
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getCwcFRChargeSt()I

    move-result v0

    return v0
.end method

.method public getCwcFRSwEnable()Z
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->isCwcFRSwEnable()Z

    move-result v0

    return v0
.end method

.method public getCwcRLChargeErrorSt()Z
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getCwcRLChargeErrorSt()Z

    move-result v0

    return v0
.end method

.method public getCwcRLChargeSt()I
    .locals 1

    .line 558
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getCwcRLChargeSt()I

    move-result v0

    return v0
.end method

.method public getCwcRLSwEnable()Z
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->isCwcRLSwEnable()Z

    move-result v0

    return v0
.end method

.method public getCwcRRChargeErrorSt()Z
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getCwcRRChargeErrorSt()Z

    move-result v0

    return v0
.end method

.method public getCwcRRChargeSt()I
    .locals 1

    .line 568
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getCwcRRChargeSt()I

    move-result v0

    return v0
.end method

.method public getCwcRRSwEnable()Z
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->isCwcRRSwEnable()Z

    move-result v0

    return v0
.end method

.method public getCwcSwEnable()Z
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->isCwcSwEnable()Z

    move-result v0

    return v0
.end method

.method public getEasyLoadingSwitch()Z
    .locals 1

    .line 650
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->isEasyLoadingEnable()Z

    move-result v0

    return v0
.end method

.method public getElcTrunkPos()I
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getElcTrunkPos()I

    move-result v0

    return v0
.end method

.method public getLeftChildLock()Z
    .locals 1

    .line 578
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->isLeftChildLocked()Z

    move-result v0

    return v0
.end method

.method public getLeftSdcDoorPos()I
    .locals 1

    .line 670
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getLeftSdcDoorPos()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->convertLeftSdcDoorPos(I)I

    move-result v0

    return v0
.end method

.method public getLeftSdcSysRunningState()I
    .locals 1

    .line 690
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getLeftSdcSysRunningState()I

    move-result v0

    return v0
.end method

.method public getLeftSlideDoorMode()I
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getLeftSlideDoorMode()I

    move-result v0

    return v0
.end method

.method public getLeftSlideDoorPos()I
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getLeftSlideDoorPos()I

    move-result v0

    return v0
.end method

.method public getLeftSlideDoorState()I
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getLeftSlideDoorState()I

    move-result v0

    return v0
.end method

.method public getRightChildLock()Z
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->isRightChildLocked()Z

    move-result v0

    return v0
.end method

.method public getRightSdcDoorPos()I
    .locals 1

    .line 675
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getRightSdcDoorPos()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->convertRightSdcDoorPos(I)I

    move-result v0

    return v0
.end method

.method public getRightSdcSysRunningState()I
    .locals 1

    .line 695
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getRightSdcSysRunningState()I

    move-result v0

    return v0
.end method

.method public getRightSlideDoorMode()I
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getRightSlideDoorMode()I

    move-result v0

    return v0
.end method

.method public getRightSlideDoorPos()I
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getRightSlideDoorPos()I

    move-result v0

    return v0
.end method

.method public getRightSlideDoorState()I
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getRightSlideDoorState()I

    move-result v0

    return v0
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

    .line 609
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTpmsWarningStates()[Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 610
    array-length v3, v2

    if-lt v3, v1, :cond_0

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    .line 611
    aget-object p1, v2, p1

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;->NORMAL:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;

    if-ne p1, v2, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public getTrunkState()I
    .locals 4

    .line 387
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isTrunkClosed()Z

    move-result v0

    .line 388
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TrunkClosed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x5

    :goto_0
    return v3
.end method

.method public getTyrePressure(I)Ljava/lang/String;
    .locals 4
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

    .line 620
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTyrePressure(I)Ljava/lang/String;

    move-result-object v0

    .line 621
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTyrePressure, position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", value: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTyreTemp(I)I
    .locals 5
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

    .line 630
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTpmsTemperature(I)I

    move-result v1

    .line 631
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTyreTemp, position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ", value: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1

    :cond_0
    return v0
.end method

.method public getWiperSensitivity()I
    .locals 4

    .line 435
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getWiperIntervalValue()Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;->toSensitivityBcmCmd()I

    move-result v0

    .line 436
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->TAG:Ljava/lang/String;

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

.method protected initInternal()V
    .locals 2

    .line 51
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    .line 52
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ICarBodyViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    .line 53
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/IChassisViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    .line 54
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    .line 55
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IArsViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mArsVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

    .line 56
    invoke-static {}, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->getInstance()Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->getCarBodyManagerServer()Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    return-void
.end method

.method public isCentralLocked()Z
    .locals 1

    .line 598
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isCentralLocked()Z

    move-result v0

    return v0
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

    .line 382
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isDoorClosed(I)Z

    move-result p1

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

    .line 640
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->isTpmsTempWarning()[Z

    move-result-object v1

    if-eqz v1, :cond_0

    .line 641
    array-length v2, v1

    if-lt v2, v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 642
    aget-boolean p1, v1, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$observeData$0$CarBodyManagerImpl(Ljava/lang/Boolean;)V
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

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;->onDoorChanged(IZ)V

    .line 65
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "isSupportSdc"

    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 66
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    invoke-direct {p0, v2}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->convertLeftSdcDoorPos(I)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;->onLeftSdcDoorPosChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$1$CarBodyManagerImpl(Ljava/lang/Boolean;)V
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

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 72
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;->onDoorChanged(IZ)V

    .line 73
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "isSupportSdc"

    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 74
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->convertRightSdcDoorPos(I)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;->onRightSdcDoorPosChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$10$CarBodyManagerImpl(Ljava/lang/Integer;)V
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

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;->onLeftSlideDoorStateChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$11$CarBodyManagerImpl(Ljava/lang/Integer;)V
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

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;->onRightSlideDoorStateChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$12$CarBodyManagerImpl(Ljava/lang/Integer;)V
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

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;->onLeftSlideDoorPosChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$13$CarBodyManagerImpl(Ljava/lang/Integer;)V
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

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;->onRightSlideDoorPosChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$14$CarBodyManagerImpl(Ljava/lang/Boolean;)V
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

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;->onCwcSwChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$15$CarBodyManagerImpl(Ljava/lang/Integer;)V
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

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;->onCwcChargeStateChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$16$CarBodyManagerImpl(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "error"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;->onCwcChargeErrorStateChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$17$CarBodyManagerImpl(Ljava/lang/Boolean;)V
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

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;->onCwcFRSwChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$18$CarBodyManagerImpl(Ljava/lang/Integer;)V
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

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;->onCwcFRChargeStateChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$19$CarBodyManagerImpl(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "error"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;->onCwcFRChargeErrorStateChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$2$CarBodyManagerImpl(Ljava/lang/Boolean;)V
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

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 80
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;->onDoorChanged(IZ)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$20$CarBodyManagerImpl(Ljava/lang/Boolean;)V
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

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;->onCwcRLSwChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$21$CarBodyManagerImpl(Ljava/lang/Integer;)V
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

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;->onCwcRLChargeStateChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$22$CarBodyManagerImpl(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "error"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;->onCwcRLChargeErrorStateChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$23$CarBodyManagerImpl(Ljava/lang/Boolean;)V
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

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;->onCwcRRSwChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$24$CarBodyManagerImpl(Ljava/lang/Integer;)V
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

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;->onCwcRRChargeStateChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$25$CarBodyManagerImpl(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "error"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;->onCwcRRChargeErrorStateChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$26$CarBodyManagerImpl(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "lock"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;->onLeftChildLockChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$27$CarBodyManagerImpl(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "lock"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;->onRightChildLockChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$28$CarBodyManagerImpl(Ljava/lang/Boolean;)V
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

    .line 226
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;->onCentralLockStateChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$29$CarBodyManagerImpl(Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "tpmsWarningState"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 232
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFrontLeftTyreWarningStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 234
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;->NORMAL:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;

    if-ne p1, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-interface {v0, v2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;->onFrontLeftTyreWarningStateChanged(Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$3$CarBodyManagerImpl(Ljava/lang/Boolean;)V
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

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 85
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;->onDoorChanged(IZ)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$30$CarBodyManagerImpl(Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "tpmsWarningState"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 238
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFrontRightTyreWarningStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 240
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;->NORMAL:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;

    if-ne p1, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-interface {v0, v2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;->onFrontRightTyreWarningStateChanged(Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$31$CarBodyManagerImpl(Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "tpmsWarningState"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 244
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRearLeftTyreWarningStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 246
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;->NORMAL:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;

    if-ne p1, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-interface {v0, v2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;->onRearLeftTyreWarningStateChanged(Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$32$CarBodyManagerImpl(Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "tpmsWarningState"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 250
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRearLeftTyreWarningStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 252
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;->NORMAL:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;

    if-ne p1, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-interface {v0, v2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;->onRearRightTyreWarningStateChanged(Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$33$CarBodyManagerImpl(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 257
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFrontLeftTyrePressureChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 259
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;->onFrontLeftTyrePressureChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$34$CarBodyManagerImpl(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 263
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFrontRightTyrePressureChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 265
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;->onFrontRightTyrePressureChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$35$CarBodyManagerImpl(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 269
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRearLeftTyrePressureChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;->onRearLeftTyrePressureChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$36$CarBodyManagerImpl(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 275
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRearRightTyrePressureChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 277
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;->onRearRightTyrePressureChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$37$CarBodyManagerImpl(Ljava/lang/Integer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 282
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;->onFrontLeftTyreTempChanged(I)V

    .line 284
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFrontLeftTyreTempChanged: "

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

.method public synthetic lambda$observeData$38$CarBodyManagerImpl(Ljava/lang/Integer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 288
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFrontRightTyreTempChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 290
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;->onFrontRightTyreTempChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$39$CarBodyManagerImpl(Ljava/lang/Integer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 295
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRearLeftTyreTempChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 297
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;->onRearLeftTyreTempChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$4$CarBodyManagerImpl(Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;)V
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

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    if-eqz v0, :cond_0

    .line 90
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->convertTrunkState(Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;->onTrunkStateChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$40$CarBodyManagerImpl(Ljava/lang/Integer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 302
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRearRightTyreTempChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 304
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;->onRearRightTyreTempChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$41$CarBodyManagerImpl(Ljava/lang/Boolean;)V
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

    .line 309
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;->onFrontLeftTyreTempWarningChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$42$CarBodyManagerImpl(Ljava/lang/Boolean;)V
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

    .line 314
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;->onFrontRightTyreTempWarningChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$43$CarBodyManagerImpl(Ljava/lang/Boolean;)V
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

    .line 320
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;->onRearLeftTyreTempWarningChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$44$CarBodyManagerImpl(Ljava/lang/Boolean;)V
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

    .line 325
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;->onRearRightTyreTempWarningChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$45$CarBodyManagerImpl(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enable"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 331
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;->onEasyLoadingModeChanged(Z)V

    .line 333
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->TAG:Ljava/lang/String;

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

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$46$CarBodyManagerImpl(Ljava/lang/Integer;)V
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

    .line 339
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->convertLeftSdcDoorPos(I)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;->onLeftSdcDoorPosChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$47$CarBodyManagerImpl(Ljava/lang/Integer;)V
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

    .line 344
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->convertRightSdcDoorPos(I)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;->onRightSdcDoorPosChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$48$CarBodyManagerImpl(Ljava/lang/Integer;)V
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

    .line 349
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;->onLeftSdcSysRunningStateChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$49$CarBodyManagerImpl(Ljava/lang/Integer;)V
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

    .line 355
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;->onRightSdcSysRunningStateChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$5$CarBodyManagerImpl(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "state"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->convertChargePortState(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;)I

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;->onChargePortChanged(ZI)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$50$CarBodyManagerImpl(Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "arsFoldState"
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 364
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;->getIntValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;->onArsFoldStateChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$51$CarBodyManagerImpl(Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "arsWorkState"
        }
    .end annotation

    .line 368
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 369
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;->getIntValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;->onArsWorkStateChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$52$CarBodyManagerImpl(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "position"
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 374
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;->onArsPositionChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$6$CarBodyManagerImpl(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "state"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 107
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->convertChargePortState(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;)I

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;->onChargePortChanged(ZI)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$7$CarBodyManagerImpl(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "interval"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;->toSensitivityBcmCmd()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;->onWiperSensitivityChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$8$CarBodyManagerImpl(Ljava/lang/Integer;)V
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

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;->onLeftSlideDoorModeChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$9$CarBodyManagerImpl(Ljava/lang/Integer;)V
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

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;->onRightSlideDoorModeChanged(I)V

    :cond_0
    return-void
.end method

.method protected observeData()V
    .locals 6

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getDoorStateData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$RLd39MzNAGoBR7bx5TH3S4Zhd0k;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$RLd39MzNAGoBR7bx5TH3S4Zhd0k;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getDoorStateData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$Q4ah5ruZio6vz43qviXevN-un6U;

    invoke-direct {v2, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$Q4ah5ruZio6vz43qviXevN-un6U;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;)V

    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getDoorStateData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v3, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$E_TFuX1utRjfeCe6BkezAiT3r6I;

    invoke-direct {v3, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$E_TFuX1utRjfeCe6BkezAiT3r6I;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;)V

    invoke-virtual {p0, v0, v3}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getDoorStateData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$MRmev_gp0FiirR4fzdmRlpJKoTE;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$MRmev_gp0FiirR4fzdmRlpJKoTE;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getRearTrunkData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$bp6AJ-v6YhFvHKVlDUXkqvbVCnc;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$bp6AJ-v6YhFvHKVlDUXkqvbVCnc;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getRightChargePortStateData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$dHW6CTCzB0Ws7zMWeKJ02WrA5dA;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$dHW6CTCzB0Ws7zMWeKJ02WrA5dA;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getLeftChargePortStateData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$LDpRnA3paepclGhW2ss4yRnXFMc;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$LDpRnA3paepclGhW2ss4yRnXFMc;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getWiperIntervalData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$hgwFwGSGsKTpjqgiPX9RWn4jMaM;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$hgwFwGSGsKTpjqgiPX9RWn4jMaM;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    const-string v0, "isSupportSlideDoor"

    .line 115
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getLeftSlideDoorModeData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$MKTFUSNX0Emyx5YbALRHElCumCw;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$MKTFUSNX0Emyx5YbALRHElCumCw;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getRightSlideDoorModeData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$z7DjSAg1um13w7kXaAEoEL-wu-k;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$z7DjSAg1um13w7kXaAEoEL-wu-k;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getLeftSlideDoorStateData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$YkyLOLmIgAsI-HI7n0YD4BOUBD8;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$YkyLOLmIgAsI-HI7n0YD4BOUBD8;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getRightSlideDoorStateData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$epxF7Isj9CMzoza5cTrAzJ8iTGg;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$epxF7Isj9CMzoza5cTrAzJ8iTGg;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getLeftSlideDoorPosData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$y9Atd3P0bN1RWCc0NidBhBP1u60;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$y9Atd3P0bN1RWCc0NidBhBP1u60;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getRightSlideDoorPosData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$8Nx6Vtp_8mTrPjBTD1c5MQNZqgY;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$8Nx6Vtp_8mTrPjBTD1c5MQNZqgY;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_0
    const-string v0, "isSupportCwc"

    .line 147
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getCwcSwData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$pn2vbiKdqeSrcxgmQEmDuBCAZ8s;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$pn2vbiKdqeSrcxgmQEmDuBCAZ8s;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getCwcChargingStData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$cwcxjjB7Hn_4yK_X-2519S3GgoE;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$cwcxjjB7Hn_4yK_X-2519S3GgoE;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getCwcChargeErrorData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$IO-xvSDjX1Yz_HdESYV5cAXnx4w;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$IO-xvSDjX1Yz_HdESYV5cAXnx4w;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_1
    const-string v0, "isSupportCwcFR"

    .line 164
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getCwcFRSwData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$R1P8FDF24xzSF7upCe-gZa1W-tc;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$R1P8FDF24xzSF7upCe-gZa1W-tc;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getCwcFrChargingStData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$ywXze0MSN31iYJcgqPxJjkWfM7U;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$ywXze0MSN31iYJcgqPxJjkWfM7U;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getCwcFrChargeErrorData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$JPV9aqrseECiHbbb09HeWhlWHTI;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$JPV9aqrseECiHbbb09HeWhlWHTI;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_2
    const-string v0, "isSupportCwcRL"

    .line 181
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getCwcRLSwData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$w5OeXIedIxfVNUsumKGo1djeYDs;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$w5OeXIedIxfVNUsumKGo1djeYDs;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getCwcRlChargingStData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$Q4EcJBLOXc35ivHALS5SGOQYV-k;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$Q4EcJBLOXc35ivHALS5SGOQYV-k;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getCwcRlChargeErrorData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$J8Zrwf63x91b9GdNrFSKsvgK1L4;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$J8Zrwf63x91b9GdNrFSKsvgK1L4;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_3
    const-string v0, "isSupportCwcRR"

    .line 198
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getCwcRRSwData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$rIWnbneZQBSy88cdh5zrmIk188I;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$rIWnbneZQBSy88cdh5zrmIk188I;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 204
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getCwcRrChargingStData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$cwWpwk9VfJfKjfZFP71FmVYEvOo;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$cwWpwk9VfJfKjfZFP71FmVYEvOo;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getCwcRrChargeErrorData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$ppJgToCmql_ecsBV3AV7bf1IaBg;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$ppJgToCmql_ecsBV3AV7bf1IaBg;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 215
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getLeftChildLockData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$OlNXNiQ36S10avuqggfJWq7xKjY;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$OlNXNiQ36S10avuqggfJWq7xKjY;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getRightChildLockData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$v2KYK_dLaqJq9TT4-4noAP7ipTI;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$v2KYK_dLaqJq9TT4-4noAP7ipTI;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 225
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getCentralLockStateData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$wn_iqTwX4ZQz9SViYlWkAZHCQjU;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$wn_iqTwX4ZQz9SViYlWkAZHCQjU;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 231
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTpmsWarningData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$9vhCjAbX-TNddKcNdq0P6gDoX3Y;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$9vhCjAbX-TNddKcNdq0P6gDoX3Y;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 237
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTpmsWarningData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$lR33Z2gAVQ3UaS2VfBXMw0Gq9TY;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$lR33Z2gAVQ3UaS2VfBXMw0Gq9TY;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTpmsWarningData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$_tnO6j7MRmd5vY_JLBk8hxivhn8;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$_tnO6j7MRmd5vY_JLBk8hxivhn8;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 249
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTpmsWarningData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v5, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$EMdCgSt6ZnrP6On93swdi9Fkj20;

    invoke-direct {v5, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$EMdCgSt6ZnrP6On93swdi9Fkj20;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;)V

    invoke-virtual {p0, v0, v5}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 256
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTyrePressureData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v5, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$9Y-eFh9vFXGcXfBUXXYjVuV8XAo;

    invoke-direct {v5, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$9Y-eFh9vFXGcXfBUXXYjVuV8XAo;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;)V

    invoke-virtual {p0, v0, v5}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 262
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTyrePressureData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v5, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$zpgT3_j-YguwaUJNJvQsZSQ4UH8;

    invoke-direct {v5, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$zpgT3_j-YguwaUJNJvQsZSQ4UH8;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;)V

    invoke-virtual {p0, v0, v5}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 268
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTyrePressureData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v5, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$HMYg2jECgyBOnHMNeCVSqTTgJbs;

    invoke-direct {v5, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$HMYg2jECgyBOnHMNeCVSqTTgJbs;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;)V

    invoke-virtual {p0, v0, v5}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 274
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0, v4}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTyrePressureData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v5, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$jyd_lmmioQPMOAg2aeh0fD4soCI;

    invoke-direct {v5, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$jyd_lmmioQPMOAg2aeh0fD4soCI;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;)V

    invoke-virtual {p0, v0, v5}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 281
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTpmsTempData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v5, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$tw4Uzge1lxhkY4EptRKHgLqiPQs;

    invoke-direct {v5, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$tw4Uzge1lxhkY4EptRKHgLqiPQs;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;)V

    invoke-virtual {p0, v0, v5}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 287
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTpmsTempData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v5, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$nTkRrBJcVl_Cr1SbPeTpK1ViwkU;

    invoke-direct {v5, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$nTkRrBJcVl_Cr1SbPeTpK1ViwkU;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;)V

    invoke-virtual {p0, v0, v5}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 294
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTpmsTempData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v5, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$OYwmz5Me3C7L9dbQ9Gx-1AdJhAQ;

    invoke-direct {v5, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$OYwmz5Me3C7L9dbQ9Gx-1AdJhAQ;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;)V

    invoke-virtual {p0, v0, v5}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 301
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0, v4}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTpmsTempData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v5, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$nnFt4TyT_35tsbqdgZDOO7yCp9U;

    invoke-direct {v5, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$nnFt4TyT_35tsbqdgZDOO7yCp9U;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;)V

    invoke-virtual {p0, v0, v5}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 308
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTpmsTempWarningData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$LJqb4UBayLVA0tAHQwfJ9h4pVm0;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$LJqb4UBayLVA0tAHQwfJ9h4pVm0;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 313
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTpmsTempWarningData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$Hi1bMrQkk2DoOv36ctznBCiC2Z4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$Hi1bMrQkk2DoOv36ctznBCiC2Z4;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 319
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTpmsTempWarningData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$I3hp5xyPqaU9fcSeuAlvgDlTFko;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$I3hp5xyPqaU9fcSeuAlvgDlTFko;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 324
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0, v4}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTpmsTempWarningData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$SAMfK8JbvHb3m0MxZqunBpdtGtk;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$SAMfK8JbvHb3m0MxZqunBpdtGtk;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    const-string v0, "isSupportAirSuspension"

    .line 329
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 330
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getAsEasyLoadingMode()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$Uy97jZnM6WEVoQ-hidGuzsf9amM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$Uy97jZnM6WEVoQ-hidGuzsf9amM;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_5
    const-string v0, "isSupportSdc"

    .line 337
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 338
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getLeftSdcDoorPosData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$ACfwzlhupFEUf2ZY5dYaewX2GeQ;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$ACfwzlhupFEUf2ZY5dYaewX2GeQ;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 343
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getRightSdcDoorPosData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$PvXg9RDLB7kIHK3O4dcJ2UYd2jo;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$PvXg9RDLB7kIHK3O4dcJ2UYd2jo;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 348
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getLeftSdcSysRunningStateData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$Hqji1DWcFmQcDiF8GUGxyloo5bw;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$Hqji1DWcFmQcDiF8GUGxyloo5bw;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 354
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getRightSdcSysRunningStateData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$Bea8S3CLS_9n2tFpkXEQqk_P7kE;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$Bea8S3CLS_9n2tFpkXEQqk_P7kE;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_6
    const-string v0, "isSupportArs"

    .line 361
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 362
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mArsVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->getArsFoldStateLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$LUcVEzsxwwgIfe8_wRMkv-gflOc;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$LUcVEzsxwwgIfe8_wRMkv-gflOc;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 367
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mArsVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->getArsWorkStateLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$XBVQ23gl1hgzp0OFSYHOYX2NOiE;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$XBVQ23gl1hgzp0OFSYHOYX2NOiE;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 372
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mArsVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->getArsPositionLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$2LdX09dZeSPGH2-_aYaMRD6mE9E;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$2LdX09dZeSPGH2-_aYaMRD6mE9E;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_7
    return-void
.end method

.method public resetChargePort(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isLeft"
        }
    .end annotation

    .line 427
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->isChargePortEnable(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->isChargePortResetable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->resetChargePort(Z)V

    :cond_0
    return-void
.end method

.method public setCentralLock(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 603
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setCentralLock(ZZ)V

    return-void
.end method

.method public setChargePort(ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isLeft",
            "open"
        }
    .end annotation

    .line 419
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->isChargePortEnable(ZZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;->Left:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;->Right:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;

    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->controlChargePort(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;Z)V

    :cond_1
    if-eqz p2, :cond_2

    const-string p1, "/system/media/audio/xiaopeng/cdu/wav/CDU_chargeport_on.wav"

    goto :goto_1

    :cond_2
    const-string p1, "/system/media/audio/xiaopeng/cdu/wav/CDU_chargeport_off.wav"

    :goto_1
    const/4 p2, 0x0

    .line 422
    invoke-static {p1, p2, p2}, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->play(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public setCwcSwEnable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 503
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setCwcSwEnable(Z)V

    return-void
.end method

.method public setCwcSwFREnable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 513
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setCwcFRSwEnable(Z)V

    return-void
.end method

.method public setCwcSwRLEnable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 523
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setCwcRLSwEnable(Z)V

    return-void
.end method

.method public setCwcSwRREnable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 533
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setCwcRRSwEnable(Z)V

    return-void
.end method

.method public setEasyLoadingSwitch(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 655
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setEasyLoadingSwitch(Z)V

    return-void
.end method

.method public setLeftChildLock(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lock"
        }
    .end annotation

    .line 583
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setChildLock(ZZ)V

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

    .line 453
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setLeftSlideDoorMode(I)V

    return-void
.end method

.method public setRightChildLock(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lock"
        }
    .end annotation

    .line 593
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setChildLock(ZZ)V

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

    .line 463
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setRightSlideDoorMode(I)V

    return-void
.end method

.method public setTrunk(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controlType"
        }
    .end annotation

    .line 399
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->openRearTrunk()V

    return-void
.end method

.method public setWiperSensitivity(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 442
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWiperSensitivity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 443
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;->fromSensitivityBcmState(I)Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setWiperInterval(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;)V

    return-void
.end method

.method public unfoldArs()V
    .locals 2

    .line 705
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->mArsVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->unfold(Z)V

    return-void
.end method
