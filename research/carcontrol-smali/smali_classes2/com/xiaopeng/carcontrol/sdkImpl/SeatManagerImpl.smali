.class public Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;
.super Lcom/xiaopeng/carcontrol/sdkImpl/AbstractManagerImpl;
.source "SeatManagerImpl.java"

# interfaces
.implements Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;


# static fields
.field private static final TAG:Ljava/lang/String; = "CarBodyImpl"


# instance fields
.field private mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

.field private mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

.field private mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

.field private mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/sdkImpl/AbstractManagerImpl;-><init>()V

    return-void
.end method

.method private handleMassagerDataChange(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatMassage;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1089
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz v0, :cond_0

    .line 1090
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatMassage;->getIndex()I

    move-result v1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatMassage;->getEffect()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatMassage;->getIntensity()I

    move-result v3

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatMassage;->isRunning()Z

    move-result p1

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onMassagerStatusChange(ILjava/lang/String;IZ)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$no_nzXCzTjfWBoUQYlA498g83u4(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatMassage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->handleMassagerDataChange(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatMassage;)V

    return-void
.end method


# virtual methods
.method public getDSeatCushionExtPos()I
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatCushionPos()I

    move-result v0

    return v0
.end method

.method public getDSeatHorzPos()I
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatHorzPos()I

    move-result v0

    return v0
.end method

.method public getDSeatLegPos()I
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatLegPos()I

    move-result v0

    return v0
.end method

.method public getDSeatTiltPos()I
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatTiltPos()I

    move-result v0

    return v0
.end method

.method public getDSeatVerPos()I
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatVerPos()I

    move-result v0

    return v0
.end method

.method public getDriverAntiFatigueStatus()I
    .locals 1

    .line 1070
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDriverAntiFatigueStatus()I

    move-result v0

    return v0
.end method

.method public getDriverSeatAntiFatigueSw()Z
    .locals 1

    .line 1040
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDriverSeatAntiFatigueSw()Z

    move-result v0

    return v0
.end method

.method public getDrvSeatMoveState()Z
    .locals 1

    .line 1030
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDriverSeatMoveState()Z

    move-result v0

    return v0
.end method

.method public getMassageMemoryMode(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seatId"
        }
    .end annotation

    .line 1010
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getMassageMode(I)I

    move-result p1

    return p1
.end method

.method public getMassagerIntensity(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 922
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getMassagerIntensity(I)I

    move-result p1

    return p1
.end method

.method public getMassagerRunningEffectId(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seatId"
        }
    .end annotation

    .line 1020
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getMassagerRunningEffectId(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPSeatHorzPos()I
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPSeatHorzPos()I

    move-result v0

    return v0
.end method

.method public getPSeatLegPos()I
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPSeatLegPos()I

    move-result v0

    return v0
.end method

.method public getPSeatTiltPos()I
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPSeatTiltPos()I

    move-result v0

    return v0
.end method

.method public getPSeatVerPos()I
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPSeatVerPos()I

    move-result v0

    return v0
.end method

.method public getParkDropdownMenuEnable()Z
    .locals 1

    .line 1085
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getParkDropdownMenuEnable()Z

    move-result v0

    return v0
.end method

.method public getPsnSeatEqualMemory()Z
    .locals 1

    .line 723
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isPsnSeatEqualMemory()Z

    move-result v0

    return v0
.end method

.method public getPsnSeatMoveState()Z
    .locals 1

    .line 1035
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPassengerSeatMoveState()Z

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

    .line 693
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPsnSeatName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPsnSeatSelectId()I
    .locals 1

    .line 708
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getCurrentSelectedPsnHabit()I

    move-result v0

    return v0
.end method

.method public getPsnSrsEnable()Z
    .locals 1

    .line 1075
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPsnSrsEnable()Z

    move-result v0

    return v0
.end method

.method public getRLSeatHorPos()I
    .locals 1

    .line 603
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRLSeatHorPos()I

    move-result v0

    return v0
.end method

.method public getRLSeatLegHorPos()I
    .locals 1

    .line 613
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRLSeatLegHorPos()I

    move-result v0

    return v0
.end method

.method public getRLSeatLegVerPos()I
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

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

    .line 698
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRLSeatName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRLSeatSelectId()I
    .locals 1

    .line 713
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getCurrentSelectedRLHabit()I

    move-result v0

    return v0
.end method

.method public getRLSeatTiltPos()I
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRLSeatTiltPos()I

    move-result v0

    return v0
.end method

.method public getRRSeatHorPos()I
    .locals 1

    .line 643
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRRSeatHorPos()I

    move-result v0

    return v0
.end method

.method public getRRSeatLegHorPos()I
    .locals 1

    .line 653
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRRSeatLegHorPos()I

    move-result v0

    return v0
.end method

.method public getRRSeatLegVerPos()I
    .locals 1

    .line 663
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

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

    .line 703
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRRSeatName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRRSeatSelectId()I
    .locals 1

    .line 718
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getCurrentSelectedRRHabit()I

    move-result v0

    return v0
.end method

.method public getRRSeatTiltPos()I
    .locals 1

    .line 633
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRRSeatTiltPos()I

    move-result v0

    return v0
.end method

.method public getRlSeatEqualMemory()Z
    .locals 1

    .line 728
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isRLSeatEqualMemory()Z

    move-result v0

    return v0
.end method

.method public getRrSeatEqualMemory()Z
    .locals 1

    .line 733
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isRRSeatEqualMemory()Z

    move-result v0

    return v0
.end method

.method public getSecRowLtSeatEZ()I
    .locals 2

    .line 799
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowLtSeatZeroGrav()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 803
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowLTFuctionStatus()I

    move-result v1

    if-nez v0, :cond_1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public getSecRowLtSeatZeroGrav()I
    .locals 4

    .line 753
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowLtSeatZeroGrav()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 757
    :cond_0
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowLTFuctionStatus()I

    move-result v3

    if-nez v0, :cond_1

    if-ne v3, v1, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getSecRowRtSeatEZ()I
    .locals 2

    .line 817
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowRtSeatZeroGrav()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 821
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowRTFuctionStatus()I

    move-result v1

    if-nez v0, :cond_1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public getSecRowRtSeatZeroGrav()I
    .locals 4

    .line 776
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowRtSeatZeroGrav()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 780
    :cond_0
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowRTFuctionStatus()I

    move-result v3

    if-nez v0, :cond_1

    if-ne v3, v1, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getTrdRowLtSeatFold()I
    .locals 2

    .line 847
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowLeftSeatTiltState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getTrdRowLtSeatTiltPos()I
    .locals 1

    .line 673
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowLtSeatTiltPos()I

    move-result v0

    return v0
.end method

.method public getTrdRowRtSeatFold()I
    .locals 2

    .line 864
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowRightSeatTiltState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getTrdRowRtSeatTiltPos()I
    .locals 1

    .line 683
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowRtSeatTiltPos()I

    move-result v0

    return v0
.end method

.method public getTrdRowSeatStowState()I
    .locals 2

    .line 881
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowSeatStowState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected initInternal()V
    .locals 2

    .line 35
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    .line 36
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/account/IAccountViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    .line 37
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    .line 38
    invoke-static {}, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->getInstance()Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->getSeatManagerServer()Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    return-void
.end method

.method public isDrvBeltUnbuckled()Z
    .locals 1

    .line 1050
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isDrvBeltUnbuckled()Z

    move-result v0

    return v0
.end method

.method public isDrvHeadrestNormal()Z
    .locals 1

    .line 937
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isDrvHeadrestNormal()Z

    move-result v0

    return v0
.end method

.method public isDrvSeatOccupied()Z
    .locals 1

    .line 947
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isDrvSeatOccupied()Z

    move-result v0

    return v0
.end method

.method public isDrvSeatSbrSt()Z
    .locals 1

    .line 988
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isDrvSeatSbrSt()Z

    move-result v0

    return v0
.end method

.method public isMassagerRunning(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 898
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isMassagerRunning(I)Z

    move-result p1

    return p1
.end method

.method public isPsnBeltUnbuckled()Z
    .locals 1

    .line 1055
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isPsnBeltUnbuckled()Z

    move-result v0

    return v0
.end method

.method public isPsnHeadrestNormal()Z
    .locals 1

    .line 942
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isPsnHeadrestNormal()Z

    move-result v0

    return v0
.end method

.method public isPsnSeatOccupied()Z
    .locals 1

    .line 952
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isPsnSeatOccupied()Z

    move-result v0

    return v0
.end method

.method public isPsnSeatSbrSt()Z
    .locals 1

    .line 993
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isPsnSeatSbrSt()Z

    move-result v0

    return v0
.end method

.method public isRearSeatSbrSt()Z
    .locals 1

    .line 998
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isRearSeatSbrSt()Z

    move-result v0

    return v0
.end method

.method public isRlSeatOccupied()Z
    .locals 1

    .line 957
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isRlSeatOccupied()Z

    move-result v0

    return v0
.end method

.method public isRmSeatOccupied()Z
    .locals 1

    .line 962
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isRmSeatOccupied()Z

    move-result v0

    return v0
.end method

.method public isRrSeatOccupied()Z
    .locals 1

    .line 967
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isRrSeatOccupied()Z

    move-result v0

    return v0
.end method

.method public isTlSeatOccupied()Z
    .locals 1

    .line 972
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isTlSeatOccupied()Z

    move-result v0

    return v0
.end method

.method public isTmSeatOccupied()Z
    .locals 1

    .line 978
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isTmSeatOccupied()Z

    move-result v0

    return v0
.end method

.method public isTrSeatOccupied()Z
    .locals 1

    .line 983
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isTrSeatOccupied()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$observeData$0$SeatManagerImpl(Ljava/lang/Integer;)V
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

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onDrvHorPosChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$1$SeatManagerImpl(Ljava/lang/Integer;)V
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

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onDrvVerPosChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$10$SeatManagerImpl(Ljava/lang/Integer;)V
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

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onRlSeatLegHorPosChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$11$SeatManagerImpl(Ljava/lang/Integer;)V
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

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onRlSeatLegVerPosChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$12$SeatManagerImpl(Ljava/lang/Integer;)V
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

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onRlSeatHorPosChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$13$SeatManagerImpl(Ljava/lang/Integer;)V
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

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onRrSeatTiltPosChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$14$SeatManagerImpl(Ljava/lang/Integer;)V
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

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onRrSeatLegHorPosChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$15$SeatManagerImpl(Ljava/lang/Integer;)V
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

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onRRSeatLegVerPosChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$16$SeatManagerImpl(Ljava/lang/Integer;)V
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

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onRrSeatHorPosChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$17$SeatManagerImpl(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "id"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onPsnSeatSelectIdChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$18$SeatManagerImpl(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "id"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onRLSeatSelectIdChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$19$SeatManagerImpl(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "id"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onRRSeatSelectIdChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$2$SeatManagerImpl(Ljava/lang/Integer;)V
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

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onDrvTiltPosChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$20$SeatManagerImpl(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "equal"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onPsnSeatEqualMemoryChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$21$SeatManagerImpl(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "equal"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onRlSeatEqualMemoryChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$22$SeatManagerImpl(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "equal"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onRrSeatEqualMemoryChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$23$SeatManagerImpl(Ljava/lang/Integer;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "func"
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz v0, :cond_7

    .line 165
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_2

    .line 168
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v4, 0x4

    if-eq v0, v4, :cond_5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    goto :goto_1

    .line 171
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_7

    .line 172
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowLTFuctionStatus()I

    move-result p1

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-ne p1, v2, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-interface {v0, v2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onSecRowLtSeatZeroGravChanged(I)V

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-ne p1, v3, :cond_4

    move v1, v3

    :cond_4
    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onSecRowLtSeatEZChanged(I)V

    goto :goto_3

    .line 169
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    invoke-interface {p1, v2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onSecRowLtSeatEZChanged(I)V

    .line 170
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    invoke-interface {p1, v1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onSecRowLtSeatZeroGravChanged(I)V

    goto :goto_3

    .line 166
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    invoke-interface {p1, v2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onSecRowLtSeatZeroGravChanged(I)V

    .line 167
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    invoke-interface {p1, v1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onSecRowLtSeatEZChanged(I)V

    :cond_7
    :goto_3
    return-void
.end method

.method public synthetic lambda$observeData$24$SeatManagerImpl(Ljava/lang/Integer;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "func"
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz v0, :cond_7

    .line 181
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_2

    .line 184
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v4, 0x4

    if-eq v0, v4, :cond_5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    goto :goto_1

    .line 187
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_7

    .line 188
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowRTFuctionStatus()I

    move-result p1

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-ne p1, v2, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-interface {v0, v2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onSecRowRtSeatZeroGravChanged(I)V

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-ne p1, v3, :cond_4

    move v1, v3

    :cond_4
    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onSecRowRtSeatEZChanged(I)V

    goto :goto_3

    .line 185
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    invoke-interface {p1, v2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onSecRowRtSeatEZChanged(I)V

    .line 186
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    invoke-interface {p1, v1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onSecRowRtSeatZeroGravChanged(I)V

    goto :goto_3

    .line 182
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    invoke-interface {p1, v2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onSecRowRtSeatZeroGravChanged(I)V

    .line 183
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    invoke-interface {p1, v1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onSecRowRtSeatEZChanged(I)V

    :cond_7
    :goto_3
    return-void
.end method

.method public synthetic lambda$observeData$25$SeatManagerImpl(Ljava/lang/Integer;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "status"
        }
    .end annotation

    .line 198
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-nez v0, :cond_1

    .line 199
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowLeftSeatTiltState()I

    move-result p1

    if-ne p1, v2, :cond_0

    .line 200
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    invoke-interface {p1, v2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onTrdRowLtFoldStatusChanged(I)V

    goto :goto_2

    .line 202
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    invoke-interface {p1, v1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onTrdRowLtFoldStatusChanged(I)V

    goto :goto_2

    .line 204
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_2

    goto :goto_1

    .line 206
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v3, :cond_4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 208
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_6

    .line 209
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    invoke-interface {p1, v0}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onTrdRowRtFoldStatusChanged(I)V

    goto :goto_2

    .line 207
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    invoke-interface {p1, v1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onTrdRowLtFoldStatusChanged(I)V

    goto :goto_2

    .line 205
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    invoke-interface {p1, v3}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onTrdRowLtFoldStatusChanged(I)V

    :cond_6
    :goto_2
    return-void
.end method

.method public synthetic lambda$observeData$26$SeatManagerImpl(Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "status"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 213
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz v0, :cond_2

    .line 214
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 215
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    invoke-interface {p1, v1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onTrdRowLtFoldStatusChanged(I)V

    goto :goto_0

    .line 216
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 217
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    invoke-interface {p1, v0}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onTrdRowLtFoldStatusChanged(I)V

    goto :goto_0

    .line 219
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onTrdRowLtFoldStatusChanged(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$observeData$27$SeatManagerImpl(Ljava/lang/Integer;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "status"
        }
    .end annotation

    .line 224
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-nez v0, :cond_1

    .line 225
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowRightSeatTiltState()I

    move-result p1

    if-ne p1, v2, :cond_0

    .line 226
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    invoke-interface {p1, v2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onTrdRowRtFoldStatusChanged(I)V

    goto :goto_2

    .line 228
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    invoke-interface {p1, v1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onTrdRowRtFoldStatusChanged(I)V

    goto :goto_2

    .line 230
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_2

    goto :goto_1

    .line 232
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v3, :cond_4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 234
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_6

    .line 235
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    invoke-interface {p1, v0}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onTrdRowRtFoldStatusChanged(I)V

    goto :goto_2

    .line 233
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    invoke-interface {p1, v1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onTrdRowRtFoldStatusChanged(I)V

    goto :goto_2

    .line 231
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    invoke-interface {p1, v3}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onTrdRowRtFoldStatusChanged(I)V

    :cond_6
    :goto_2
    return-void
.end method

.method public synthetic lambda$observeData$28$SeatManagerImpl(Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "status"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 239
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz v0, :cond_2

    .line 240
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 241
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    invoke-interface {p1, v1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onTrdRowRtFoldStatusChanged(I)V

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 243
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    invoke-interface {p1, v0}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onTrdRowRtFoldStatusChanged(I)V

    goto :goto_0

    .line 245
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onTrdRowRtFoldStatusChanged(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$observeData$29$SeatManagerImpl(Ljava/lang/Integer;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "status"
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 252
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz v0, :cond_6

    .line 253
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-nez v0, :cond_1

    .line 254
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowSeatStowState()I

    move-result p1

    if-ne p1, v2, :cond_0

    .line 255
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    invoke-interface {p1, v2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onTrdRowSeatStowStatusChanged(I)V

    goto :goto_2

    .line 257
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    invoke-interface {p1, v1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onTrdRowSeatStowStatusChanged(I)V

    goto :goto_2

    .line 259
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_2

    goto :goto_1

    .line 261
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v3, :cond_4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 263
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_6

    .line 264
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    invoke-interface {p1, v0}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onTrdRowRtFoldStatusChanged(I)V

    goto :goto_2

    .line 262
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    invoke-interface {p1, v1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onTrdRowSeatStowStatusChanged(I)V

    goto :goto_2

    .line 260
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    invoke-interface {p1, v3}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onTrdRowSeatStowStatusChanged(I)V

    :cond_6
    :goto_2
    return-void
.end method

.method public synthetic lambda$observeData$3$SeatManagerImpl(Ljava/lang/Integer;)V
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

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onDrvLegPosChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$30$SeatManagerImpl(Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "status"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 269
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz v0, :cond_2

    .line 270
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 271
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    invoke-interface {p1, v1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onTrdRowSeatStowStatusChanged(I)V

    goto :goto_0

    .line 272
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 273
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    invoke-interface {p1, v0}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onTrdRowSeatStowStatusChanged(I)V

    goto :goto_0

    .line 275
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onTrdRowSeatStowStatusChanged(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$observeData$31$SeatManagerImpl(Ljava/lang/Integer;)V
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

    .line 282
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onTrdRowLtSeatTiltPosChangedpos(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$32$SeatManagerImpl(Ljava/lang/Integer;)V
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

    .line 287
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onTrdRowRtSeatTiltPosChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$33$SeatManagerImpl(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "normal"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 303
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onDrvHeadrestChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$34$SeatManagerImpl(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "normal"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 308
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onPsnHeadrestChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$35$SeatManagerImpl(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "occupied"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 314
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onDrvSeatOccupiedChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$36$SeatManagerImpl(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "occupied"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 319
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onPsnOnSeatChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$37$SeatManagerImpl(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "occupied"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 324
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onRlOnSeatChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$38$SeatManagerImpl(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "occupied"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 329
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onRmOnSeatChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$39$SeatManagerImpl(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "occupied"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 334
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onRrOnSeatChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$4$SeatManagerImpl(Ljava/lang/Integer;)V
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

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onDrvCushionExtPosChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$40$SeatManagerImpl(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "occupied"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 339
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onTlOnSeatChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$41$SeatManagerImpl(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "occupied"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 344
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onTmOnSeatChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$42$SeatManagerImpl(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "occupied"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 349
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onTrOnSeatChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$43$SeatManagerImpl([Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "data"
        }
    .end annotation

    .line 355
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 357
    :try_start_0
    aget-object v1, p1, v1

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aget-object p1, p1, v2

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onPsnSeatNameChanged(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$44$SeatManagerImpl([Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "data"
        }
    .end annotation

    .line 363
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 365
    :try_start_0
    aget-object v1, p1, v1

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aget-object p1, p1, v2

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onRLSeatNameChanged(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$45$SeatManagerImpl([Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "data"
        }
    .end annotation

    .line 370
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 372
    :try_start_0
    aget-object v1, p1, v1

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aget-object p1, p1, v2

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onRRSeatNameChanged(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$46$SeatManagerImpl(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "occupied"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 378
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onDrvSeatSbrStChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$47$SeatManagerImpl(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "occupied"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 383
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onPsnSeatSbrStChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$48$SeatManagerImpl(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "occupied"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 388
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onRearSeatSbrStChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$49$SeatManagerImpl(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "stop"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 394
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onDrvSeatMoveStateChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$5$SeatManagerImpl(Ljava/lang/Integer;)V
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

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onPsnHorPosChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$50$SeatManagerImpl(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "stop"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 400
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onPsnSeatMoveStateChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$51$SeatManagerImpl(Ljava/lang/Boolean;)V
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

    .line 406
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onDrvBeltWaringChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$52$SeatManagerImpl(Ljava/lang/Boolean;)V
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

    .line 412
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onPsnBeltWaringChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$53$SeatManagerImpl(Ljava/lang/Boolean;)V
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

    .line 418
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onDrvSeatAntiFatigueSwChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$54$SeatManagerImpl(Ljava/lang/Integer;)V
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

    .line 423
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onDriverAntiFatigueStChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$55$SeatManagerImpl(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "status"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 428
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz p1, :cond_0

    .line 429
    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onDrvSeatAntiFatiguePreview()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$56$SeatManagerImpl(Ljava/lang/Boolean;)V
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

    .line 435
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz v0, :cond_0

    .line 436
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onPsnSrsStatusChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$57$SeatManagerImpl(Ljava/lang/Boolean;)V
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

    .line 440
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onParkDropdownMenuStatusChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$6$SeatManagerImpl(Ljava/lang/Integer;)V
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

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onPsnVerPosChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$7$SeatManagerImpl(Ljava/lang/Integer;)V
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

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onPsnTiltPosChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$8$SeatManagerImpl(Ljava/lang/Integer;)V
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

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onPsnLegPosChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$9$SeatManagerImpl(Ljava/lang/Integer;)V
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

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;->onRlSeatTiltPosChanged(I)V

    :cond_0
    return-void
.end method

.method protected observeData()V
    .locals 5

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDriverSeatData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$_C8y81l0lW2sIqjZDVptKj6ElIE;

    invoke-direct {v2, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$_C8y81l0lW2sIqjZDVptKj6ElIE;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDriverSeatData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v3, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$iLxf2MIYZqnBop6HwRncVYYfb1M;

    invoke-direct {v3, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$iLxf2MIYZqnBop6HwRncVYYfb1M;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v3}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDriverSeatData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$ux2wwRku_X6_P-wPMCO8LFuLfXs;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$ux2wwRku_X6_P-wPMCO8LFuLfXs;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDriverSeatData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$wqBUAJhFEyY67ifzq-WVH7iciBI;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$wqBUAJhFEyY67ifzq-WVH7iciBI;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDriverSeatData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$T8ul5gLNrIB5xCbFZeb6sn2mc9w;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$T8ul5gLNrIB5xCbFZeb6sn2mc9w;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPsnSeatHorzData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$Mh-mbBYKu_e2Pk7Z5exEB24Svw4;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$Mh-mbBYKu_e2Pk7Z5exEB24Svw4;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPsnSeatVerData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$lnm262REcES0RGg6U9IUso8wb30;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$lnm262REcES0RGg6U9IUso8wb30;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPsnSeatTiltData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$b_q3LmunpWhGWAgjCUcIvJqtwPw;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$b_q3LmunpWhGWAgjCUcIvJqtwPw;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPsnSeatLegData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$aiLqRIIe3p0NW3234W4Wok-VxDw;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$aiLqRIIe3p0NW3234W4Wok-VxDw;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRLSeatData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$tJ2PYTycB2BEpDx7V2z2qv-wktg;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$tJ2PYTycB2BEpDx7V2z2qv-wktg;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRLSeatLegData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$F58aYJMBwFOi4-gU-_hjp067hXk;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$F58aYJMBwFOi4-gU-_hjp067hXk;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowLtSeatLeSuHeig()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$F_d6XokcuwfMDvAKS15oNiqYuyw;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$F_d6XokcuwfMDvAKS15oNiqYuyw;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowLtSeatHorz()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$_JBhdjHGNosjC3j3vpMypfRR3jk;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$_JBhdjHGNosjC3j3vpMypfRR3jk;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRRSeatData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$STbVFP0D28CyuyiKfLJeXl917VA;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$STbVFP0D28CyuyiKfLJeXl917VA;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRRSeatLegData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$L14csh0RqWnvUM8Ovm3zqHlQBCQ;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$L14csh0RqWnvUM8Ovm3zqHlQBCQ;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowRtSeatLeSuHeig()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$THrrAdeTnlmkDljyqj9jEy-5JNs;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$THrrAdeTnlmkDljyqj9jEy-5JNs;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowRtSeatHorz()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$wI77VKwpVoeg4LCJvhLtNcRHV5E;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$wI77VKwpVoeg4LCJvhLtNcRHV5E;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSeatPsnHabitIndex()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$L9HI6UrYDjPRW3_YL79yunfGXjo;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$L9HI6UrYDjPRW3_YL79yunfGXjo;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSeatRLHabitIndex()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$ufaOCZGQqLqZO68iLEUtnam3Fds;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$ufaOCZGQqLqZO68iLEUtnam3Fds;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSeatRRHabitIndex()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$L6Cp-Ob8ZS1t2ZB5aFUZLkThtrU;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$L6Cp-Ob8ZS1t2ZB5aFUZLkThtrU;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPsnSeatEqualMemoryData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$7xYj3B2PfnKpjy6FcCc26ymy_NQ;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$7xYj3B2PfnKpjy6FcCc26ymy_NQ;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRlSeatEqualMemoryData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$pWgoXnsFco6vzuqjdUEdorOdJW8;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$pWgoXnsFco6vzuqjdUEdorOdJW8;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRrSeatEqualMemoryData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$PRMbgJe1kQ96GzS70DpoV07MyZw;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$PRMbgJe1kQ96GzS70DpoV07MyZw;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    const-string v0, "isSupportSecRowZeroGravity"

    .line 162
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowLtEzOrZeroGStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$3S4JRMAtlaH7A3wOkf_Q5T7eZe4;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$3S4JRMAtlaH7A3wOkf_Q5T7eZe4;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowRtEzOrZeroGStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$b0i_0dN6MTL9Ltn25TKZp2zBTJc;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$b0i_0dN6MTL9Ltn25TKZp2zBTJc;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_0
    const-string v0, "isSupportTrdRowFold"

    .line 196
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowLtFoldStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$m64iCXOcGzypsIZy731XqwJkk_Q;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$m64iCXOcGzypsIZy731XqwJkk_Q;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowLtSeatFoldSuccessStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$cFoPkl8T6Amsz5hh15EdhhElo-I;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$cFoPkl8T6Amsz5hh15EdhhElo-I;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 223
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowRtFoldStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$fIIT4wsnsONreB4-8pQJ-W_ra4E;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$fIIT4wsnsONreB4-8pQJ-W_ra4E;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 238
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowRtSeatFoldSuccessStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$6ou4oSbB0FRdWpXsaa4oNzY2rxU;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$6ou4oSbB0FRdWpXsaa4oNzY2rxU;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_1
    const-string v0, "isSupportTrdRowStow"

    .line 250
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowStowStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$Rfft8rY9x5lOAtD1HOKF7KOtYZg;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$Rfft8rY9x5lOAtD1HOKF7KOtYZg;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 268
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowStowSuccessStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$rlHFBNaRYn-EyyLxv7F64kVxt0g;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$rlHFBNaRYn-EyyLxv7F64kVxt0g;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_2
    const-string v0, "isSupportTrdRowSeatControl"

    .line 280
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 281
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowLtSeatTilt()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$4usRlAg0GZaiQLLK2b3Uqa4PbIc;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$4usRlAg0GZaiQLLK2b3Uqa4PbIc;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 286
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowRtSeatTilt()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$xfV3NK9Iq921xiqn8vFn-htLDbs;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$xfV3NK9Iq921xiqn8vFn-htLDbs;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 293
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getMassageData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v4, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$no_nzXCzTjfWBoUQYlA498g83u4;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$no_nzXCzTjfWBoUQYlA498g83u4;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 295
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getMassageData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$no_nzXCzTjfWBoUQYlA498g83u4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$no_nzXCzTjfWBoUQYlA498g83u4;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 297
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getMassageData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$no_nzXCzTjfWBoUQYlA498g83u4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$no_nzXCzTjfWBoUQYlA498g83u4;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 299
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getMassageData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$no_nzXCzTjfWBoUQYlA498g83u4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$no_nzXCzTjfWBoUQYlA498g83u4;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 302
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDrvHeadrestNormal()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$BizZ638I4Z9kqTxnM4co77f4zIs;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$BizZ638I4Z9kqTxnM4co77f4zIs;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 307
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPsnHeadrestNormal()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$JZwcJQPszvq3BA34u5ziCNM1-so;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$JZwcJQPszvq3BA34u5ziCNM1-so;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 313
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDriverSeatOccupiedData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$LHyQSM5HKG6WzGT9Wc4RJZ6feaw;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$LHyQSM5HKG6WzGT9Wc4RJZ6feaw;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 318
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPsnSeatOccupiedData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$El5ajL1eF9-gd2YrH-EdyFppeOU;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$El5ajL1eF9-gd2YrH-EdyFppeOU;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 323
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRlSeatOccupiedData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$lqViE7c5v050wOTdCyhpnYr8D88;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$lqViE7c5v050wOTdCyhpnYr8D88;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 328
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRmSeatOccupiedData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$NpWBgf184tdvvUP0uIHliy1O-Jg;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$NpWBgf184tdvvUP0uIHliy1O-Jg;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 333
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRrSeatOccupiedData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$9tLoaU7_F5daUVepI696G6g_510;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$9tLoaU7_F5daUVepI696G6g_510;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 338
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTlSeatOccupiedData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$qksxDC4DGUsJe2alliu2zSIf3oI;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$qksxDC4DGUsJe2alliu2zSIf3oI;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 343
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTmSeatOccupiedData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$Lp2spTTcGuskUP_p3v10Xrk4aDA;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$Lp2spTTcGuskUP_p3v10Xrk4aDA;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 348
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrSeatOccupiedData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$XOGX5ABPCfcBQd5-8VMosXUVZsA;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$XOGX5ABPCfcBQd5-8VMosXUVZsA;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 354
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPsnSeatNameData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$xADTzbSyb5AVwDTvd8Pt4YV_Z18;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$xADTzbSyb5AVwDTvd8Pt4YV_Z18;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 362
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowLtNameData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$zRYJWp718-tVn7jM6-gl95P8JG0;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$zRYJWp718-tVn7jM6-gl95P8JG0;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 369
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowRtNameData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$G9N8RMmg3aN-QzYwBeyL_LC4hls;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$G9N8RMmg3aN-QzYwBeyL_LC4hls;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 377
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDrvSeatSbrData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$n2SRiDe5Hah_LYMMPuizfOMAhWg;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$n2SRiDe5Hah_LYMMPuizfOMAhWg;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 382
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPsnSeatSbrData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$MWgA3_9Ge4t7KV-P6ffjXe3acts;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$MWgA3_9Ge4t7KV-P6ffjXe3acts;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 387
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRearSeatSbrData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$3ThVENmUNsZEkrANyna4azRGRXk;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$3ThVENmUNsZEkrANyna4azRGRXk;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 393
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDrvSeatMoveStData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$oLdGFsIGO254iOwVYuOW4DaoFBc;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$oLdGFsIGO254iOwVYuOW4DaoFBc;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 399
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPsnSeatMoveStData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$R_1NHhzt9cupDoGfPi0Zbsi5gkQ;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$R_1NHhzt9cupDoGfPi0Zbsi5gkQ;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 405
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDvrBeltWarnData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$qYFCXu9rIof0I-MPRtrOxxxa57U;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$qYFCXu9rIof0I-MPRtrOxxxa57U;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 411
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPsnBeltWarnData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$h3mXOQ-BDcZSnmtgsekccsKiLEY;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$h3mXOQ-BDcZSnmtgsekccsKiLEY;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    const-string v0, "IsSupportSeatAntiFatigue"

    .line 416
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 417
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDrvSeatAntiFatigueSwData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$J7plMhoiNj5oCtDq-4m5PbjS_uY;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$J7plMhoiNj5oCtDq-4m5PbjS_uY;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 422
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDrvSeatAntiFatigueStatusData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$T7daoq3jWNgNMvVkUiHvn_eoemg;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$T7daoq3jWNgNMvVkUiHvn_eoemg;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 427
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDrvSeatAntiFatiguePreviewData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$GNDg9BcT4Clvzt_nSWo4k3ma2oM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$GNDg9BcT4Clvzt_nSWo4k3ma2oM;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 434
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPsnSrsEnableData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$ESkhKbM171qIRnFQTy-ecDXnz0c;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$ESkhKbM171qIRnFQTy-ecDXnz0c;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 439
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getParkDropdownMenuData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$zetM9wqe2FILCVC0WymKW64NCcI;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$zetM9wqe2FILCVC0WymKW64NCcI;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public restoreDrvSeatPos()Z
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->restoreDrvSeatPos()Z

    move-result v0

    return v0
.end method

.method public restorePsnSeatPos()Z
    .locals 1

    .line 578
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->restorePsnSeatPos()Z

    move-result v0

    return v0
.end method

.method public setDSeatCushionExtPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 493
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDSeatCushionPos(I)V

    return-void
.end method

.method public setDSeatHorzPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 453
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDSeatHorzPos(I)V

    return-void
.end method

.method public setDSeatLegPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 483
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDSeatLegPos(I)V

    return-void
.end method

.method public setDSeatTiltPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 473
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDSeatTiltPos(I)V

    return-void
.end method

.method public setDSeatVerPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 463
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDSeatVerPos(I)V

    return-void
.end method

.method public setDriverAntiFatigueMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 1065
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDriverAntiFatigueMode(I)V

    return-void
.end method

.method public setDriverAntiFatigueReq(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cmd"
        }
    .end annotation

    .line 1060
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDriverAntiFatigueReq(I)V

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

    .line 1045
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDriverSeatAntiFatigueSw(Z)V

    return-void
.end method

.method public setDrvSeatAllPositions(IIIII)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "horizonPos",
            "verticalPos",
            "tiltPos",
            "legPos",
            "cushionPos"
        }
    .end annotation

    .line 538
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDrvSeatAllPositions(IIIII)V

    return-void
.end method

.method public setDrvSeatAllPositionsWithoutSave(IIIII)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "horizonPos",
            "verticalPos",
            "tiltPos",
            "legPos",
            "cushionPos"
        }
    .end annotation

    .line 543
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDrvSeatAllPositionsWithoutSave(IIIII)V

    return-void
.end method

.method public setDrvSeatLayFlat()V
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDrvSeatLayFlat()V

    return-void
.end method

.method public setMassageMemoryMode(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seatId",
            "mode"
        }
    .end annotation

    .line 1015
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setMassageMode(II)V

    return-void
.end method

.method public setMassagerIntensity(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "intensity"
        }
    .end annotation

    .line 917
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setMassagerIntensity(II)V

    return-void
.end method

.method public setPSeatHorzPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 503
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPSeatHorzPos(I)V

    return-void
.end method

.method public setPSeatLegPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 533
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPSeatLegPos(I)V

    return-void
.end method

.method public setPSeatTiltPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 523
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPSeatTiltPos(I)V

    return-void
.end method

.method public setPSeatVerPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 513
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPSeatVerPos(I)V

    return-void
.end method

.method public setPsnSeatAllPositions(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "horizonPos",
            "verticalPos",
            "tiltPos",
            "legPos"
        }
    .end annotation

    .line 548
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPsnSeatAllPositions(IIII)V

    return-void
.end method

.method public setPsnSeatAllPositionsWithoutSave(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "horizonPos",
            "verticalPos",
            "tiltPos",
            "legPos"
        }
    .end annotation

    .line 553
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPsnSeatAllPositionsWithoutSave(IIII)V

    return-void
.end method

.method public setPsnSeatLayFlat()V
    .locals 1

    .line 568
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPsnSeatLayFlat()V

    return-void
.end method

.method public setPsnSrsEnable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1080
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPsnSrsEnable(Z)V

    return-void
.end method

.method public setRLSeatFold(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 927
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatFold(Z)V

    return-void
.end method

.method public setRLSeatHorPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 608
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatHorPos(I)V

    return-void
.end method

.method public setRLSeatLegHorPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 618
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatLegHorPos(I)V

    return-void
.end method

.method public setRLSeatLegVerPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 628
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatLegVerPos(I)V

    return-void
.end method

.method public setRLSeatTiltPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 598
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatTiltPos(I)V

    return-void
.end method

.method public setRRSeatFold(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 932
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatFold(Z)V

    return-void
.end method

.method public setRRSeatHorPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 648
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatHorPos(I)V

    return-void
.end method

.method public setRRSeatLegHorPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 658
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatLegHorPos(I)V

    return-void
.end method

.method public setRRSeatLegVerPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 668
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatLegVerPos(I)V

    return-void
.end method

.method public setRRSeatTiltPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 638
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatTiltPos(I)V

    return-void
.end method

.method public setRearSeatFold(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fold"
        }
    .end annotation

    .line 1003
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatFold(Z)V

    .line 1004
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatFold(Z)V

    return-void
.end method

.method public setSeatMenuNotShowKeepTime(ZJ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "drv",
            "keepTime"
        }
    .end annotation

    .line 558
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setSeatMenuNotShowKeepTime(ZJ)V

    return-void
.end method

.method public setSecRowLtSeatEZ(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 812
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setSecRowLtSeatEZ(I)V

    return-void
.end method

.method public setSecRowLtSeatOneKeyRestore()V
    .locals 9

    .line 835
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sget-object v3, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    sget-object v4, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    sget-object v5, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    const/4 v6, 0x4

    aget v5, v5, v6

    sget-object v6, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    const/4 v7, 0x5

    aget v6, v6, v7

    sget-object v7, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    const/4 v8, 0x6

    aget v7, v7, v8

    invoke-virtual/range {v0 .. v7}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatAllPositions(IIIIIII)V

    return-void
.end method

.method public setSecRowLtSeatZeroGrav(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 766
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setSecRowLtSeatZeroGrav(Z)V

    return-void
.end method

.method public setSecRowLtSeatZeroGravWithScreen(ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "on",
            "screenType"
        }
    .end annotation

    .line 771
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setSecRowLtSeatZeroGrav(ZI)V

    return-void
.end method

.method public setSecRowRtSeatEZ(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 830
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setSecRowRtSeatEZ(I)V

    return-void
.end method

.method public setSecRowRtSeatOneKeyRestore()V
    .locals 9

    .line 841
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sget-object v3, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    sget-object v4, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    sget-object v5, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    const/4 v6, 0x4

    aget v5, v5, v6

    sget-object v6, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    const/4 v7, 0x5

    aget v6, v6, v7

    sget-object v7, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    const/4 v8, 0x6

    aget v7, v7, v8

    invoke-virtual/range {v0 .. v7}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatAllPositions(IIIIIII)V

    return-void
.end method

.method public setSecRowRtSeatZeroGrav(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 789
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setSecRowRtSeatZeroGrav(Z)V

    return-void
.end method

.method public setSecRowRtSeatZeroGravWithScreen(ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "on",
            "screenType"
        }
    .end annotation

    .line 794
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setSecRowRtSeatZeroGrav(ZI)V

    return-void
.end method

.method public setTrdRowLtSeatFold(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 859
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowLtSeatFol(I)V

    return-void
.end method

.method public setTrdRowLtSeatTiltPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 678
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowLtSeatTiltPos(I)V

    return-void
.end method

.method public setTrdRowRtSeatFold(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 876
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowRtSeatFol(I)V

    return-void
.end method

.method public setTrdRowRtSeatTiltPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 688
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowRtSeatTiltPos(I)V

    return-void
.end method

.method public setTrdRowSeatStow(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 893
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowSeatStow(I)V

    return-void
.end method

.method public startMassager(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "effectId"
        }
    .end annotation

    const-string v0, "null"

    .line 903
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Null"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 906
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->startMassager(ILjava/lang/String;)V

    goto :goto_1

    .line 904
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const-string v0, ""

    invoke-virtual {p2, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->startMassager(ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method public startMassagerWithIntensity(IILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "seatId",
            "intensity",
            "effectId"
        }
    .end annotation

    .line 1025
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->startMassager(IILjava/lang/String;)V

    return-void
.end method

.method public stopDrvSeatMove()V
    .locals 1

    .line 583
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->stopDrvSeatMove()V

    return-void
.end method

.method public stopMassager(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 912
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->stopMassager(I)V

    return-void
.end method

.method public stopPsnSeatMove()V
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->stopPsnSeatMove()V

    return-void
.end method

.method public switchPsnSeatId(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectId"
        }
    .end annotation

    .line 738
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->restorePsnSelectSeatPos(IZ)Z

    return-void
.end method

.method public switchRLSeatId(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectId"
        }
    .end annotation

    .line 743
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->restoreRLSelectSeatPos(IZ)Z

    return-void
.end method

.method public switchRRSeatId(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectId"
        }
    .end annotation

    .line 748
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->restoreRRSelectSeatPos(IZ)Z

    return-void
.end method
