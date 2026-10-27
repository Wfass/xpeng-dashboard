.class public Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;
.super Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;
.source "VipRLSeatControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl$SingleHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl$1;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;
    .locals 1

    .line 19
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl$SingleHolder;->access$100()Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;

    move-result-object v0

    return-object v0
.end method

.method private observerRLSeatMove()V
    .locals 1

    .line 36
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipRLSeatControl$K4PqB9J9w2-nRui5Q9d755_D7GI;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipRLSeatControl$K4PqB9J9w2-nRui5Q9d755_D7GI;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected checkFrontSeatOccupied()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected checkSeatMoveAble()Z
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getGearLevelValue()Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;->P:Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 94
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->rear_seat_operate_gear_p:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return v2

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isRlSeatOccupied()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->rear_seat_occupied_notice:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return v2

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected init()V
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;->mIsInit:Z

    if-nez v0, :cond_0

    .line 29
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->init()V

    .line 30
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;->observerRLSeatMove()V

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;->mIsInit:Z

    :cond_0
    return-void
.end method

.method protected isLayFlatCorrectly()Z
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isRLSeatLieFlat()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$null$0$VipRLSeatControl(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "integer"
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;->onSeatPosChanged()V

    return-void
.end method

.method public synthetic lambda$observerRLSeatMove$1$VipRLSeatControl()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRLSeatData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipRLSeatControl$30E6mMmmBGj6n1wic0G37h_xy1s;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipRLSeatControl$30E6mMmmBGj6n1wic0G37h_xy1s;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public laySeatFlat()V
    .locals 3

    .line 50
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;->init()V

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RLSeat lay flat rlOccupied:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isRlSeatOccupied()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",rrOccupied:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    .line 52
    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isRrSeatOccupied()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",rcOccupied:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    .line 53
    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isRmSeatOccupied()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;->isLayFlatCorrectly()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "isSupportTTSAfterSeatFlatForSleep"

    .line 55
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;->seatFlatSpeak()V

    .line 58
    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->Flat:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;->callbackStatus(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)V

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;->mStatusChangedListener:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl$OnStatusChangedListener;

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;->mStatusChangedListener:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl$OnStatusChangedListener;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl$OnStatusChangedListener;->onSeatHasFlat()V

    :cond_1
    return-void

    .line 64
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;->checkSeatMoveAble()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 65
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;->moveSeatFlat()V

    :cond_3
    return-void
.end method

.method protected moveSeatFlat()V
    .locals 4

    .line 71
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->FlatMoving:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;->callbackStatus(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)V

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatFold(Z)V

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected onSeatPosChanged()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->Flat:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;->isLayFlatCorrectly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->Normal:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;->callbackStatus(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)V

    goto :goto_0

    .line 44
    :cond_0
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->onSeatPosChanged()V

    :goto_0
    return-void
.end method

.method protected restore()V
    .locals 0

    return-void
.end method

.method protected restoreFinish()V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreFinish:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->Normal:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;->callbackStatus(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)V

    return-void
.end method

.method public restoreSeat()V
    .locals 4

    .line 79
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;->init()V

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreSeat mStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->RestoreMoving:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;->callbackStatus(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)V

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatFold(Z)V

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected stopSeat()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatStopMove()V

    return-void
.end method
