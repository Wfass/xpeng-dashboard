.class public Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;
.super Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;
.source "VipDrvSeatControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl$SingleHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl$1;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;
    .locals 1

    .line 19
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl$SingleHolder;->access$100()Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected checkFrontSeatOccupied()Z
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isDrvSeatOccupied()Z

    move-result v0

    return v0
.end method

.method protected checkSeatMoveAble()Z
    .locals 1

    .line 39
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->isRearSeatNotOccupied()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "isSupportSeatFlatFrontOccupied"

    .line 40
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    .line 41
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isDrvSeatOccupied()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected init()V
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->mIsInit:Z

    if-nez v0, :cond_1

    .line 28
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->init()V

    .line 29
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->observerDrvSeatMove()V

    const-string v0, "isSupportSeatFlatFrontOccupied"

    .line 30
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->observerDrvSeatOccupied()V

    :cond_0
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->mIsInit:Z

    :cond_1
    return-void
.end method

.method protected isLayFlatCorrectly()Z
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isDrvSeatLieFlat()Z

    move-result v0

    return v0
.end method

.method protected moveSeatFlat()V
    .locals 9

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveSeatFlat:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->FlatMoving:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    if-ne v0, v1, :cond_2

    const-string v0, "isEcuDoSeatLayFlat"

    .line 53
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDrvSeatLayFlat()V

    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatTiltPos()I

    move-result v0

    const/16 v2, 0x37

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    .line 57
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatHorzPos()I

    move-result v0

    const/16 v2, 0x5f

    if-ge v0, v2, :cond_1

    .line 58
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->mIsDrvMoveHor:Z

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDSeatHorzPos(I)V

    goto :goto_0

    .line 61
    :cond_1
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/16 v4, 0x64

    sget v5, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->VIP_SEAT_VER_POS:I

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    .line 62
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatLegPos()I

    move-result v7

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatCushionPos()I

    move-result v8

    .line 61
    invoke-virtual/range {v3 .. v8}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDrvSeatAllPositions(IIIII)V

    .line 65
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void
.end method

.method protected onSeatPosChanged()V
    .locals 7

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->Flat:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->isLayFlatCorrectly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->Normal:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->callbackStatus(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)V

    goto :goto_0

    .line 102
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->mIsDrvMoveHor:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->FlatMoving:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    .line 103
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatHorzPos()I

    move-result v0

    const/16 v1, 0x5f

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 104
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->mIsDrvMoveHor:Z

    .line 105
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/16 v2, 0x64

    sget v3, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->VIP_SEAT_VER_POS:I

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    .line 106
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatLegPos()I

    move-result v5

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatCushionPos()I

    move-result v6

    .line 105
    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDrvSeatAllPositions(IIIII)V

    .line 108
    :cond_1
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->onSeatPosChanged()V

    :goto_0
    return-void
.end method

.method protected restore()V
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restore seat:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->isRearSeatNotOccupied()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->RestoreMoving:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    if-ne v0, v1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->restoreDrvSeatPos(ZZ)Z

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method protected restoreFinish()V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreFinish:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isDrvSeatEqualMemory()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->Normal:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->RestorePause:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->callbackStatus(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)V

    return-void
.end method

.method protected seatFlatSpeak()V
    .locals 3

    .line 114
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->vip_seat_flat_tts:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    .line 115
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->vip_seat_flat_tts:I

    .line 116
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 115
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;Z)Ljava/lang/String;

    return-void
.end method

.method protected stopSeat()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->stopDrvSeatMove()V

    return-void
.end method
