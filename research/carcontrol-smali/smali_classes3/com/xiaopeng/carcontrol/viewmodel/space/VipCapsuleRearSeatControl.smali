.class public Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;
.super Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;
.source "VipCapsuleRearSeatControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl$SingleHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl$1;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;
    .locals 1

    .line 21
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl$SingleHolder;->access$100()Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;

    move-result-object v0

    return-object v0
.end method

.method private observerRearSeatMove()V
    .locals 1

    .line 42
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipCapsuleRearSeatControl$Y-AalXtllNCh6HqKVLkDAlLYGRY;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipCapsuleRearSeatControl$Y-AalXtllNCh6HqKVLkDAlLYGRY;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;)V

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
    .locals 1

    .line 132
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->isRearSeatNotOccupied()Z

    move-result v0

    return v0
.end method

.method protected init()V
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->mIsInit:Z

    if-nez v0, :cond_0

    .line 31
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->init()V

    .line 33
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->observerDrvSeatMove()V

    .line 34
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->observerPsnSeatMove()V

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->mIsInit:Z

    :cond_0
    return-void
.end method

.method protected isLayFlatCorrectly()Z
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isDrvSeatCorrectForRearFold()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isPsnSeatCorrectForRearFold()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$null$0$VipCapsuleRearSeatControl(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "integer"
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->onSeatPosChanged()V

    return-void
.end method

.method public synthetic lambda$null$1$VipCapsuleRearSeatControl(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "integer"
        }
    .end annotation

    .line 44
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->onSeatPosChanged()V

    return-void
.end method

.method public synthetic lambda$observerRearSeatMove$2$VipCapsuleRearSeatControl()V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRLSeatData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipCapsuleRearSeatControl$HJGZDA5474mVQGEkn1j84LQNkNI;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipCapsuleRearSeatControl$HJGZDA5474mVQGEkn1j84LQNkNI;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRRSeatData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipCapsuleRearSeatControl$B3598TU5a6uGK7rJ4jOwclbvkWU;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipCapsuleRearSeatControl$B3598TU5a6uGK7rJ4jOwclbvkWU;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method protected layFlatWaitingTTS()V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->TAG:Ljava/lang/String;

    const-string v1, "layFlatWaitingTTS For RSeatOccupied"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public laySeatFlat()V
    .locals 3

    .line 58
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->init()V

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RRSeat lay flat rlOccupied:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isRlSeatOccupied()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",rrOccupied:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    .line 60
    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isRrSeatOccupied()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",rcOccupied:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    .line 61
    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isRmSeatOccupied()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->isLayFlatCorrectly()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "isSupportTTSAfterSeatFlatForSleep"

    .line 63
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->seatFlatSpeak()V

    .line 66
    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->Flat:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->callbackStatus(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)V

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->mStatusChangedListener:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl$OnStatusChangedListener;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->mStatusChangedListener:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl$OnStatusChangedListener;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl$OnStatusChangedListener;->onSeatHasFlat()V

    :cond_1
    return-void

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->FlatWaiting:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    if-eq v0, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 73
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->checkSeatMoveAble()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 74
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->moveSeatDelay()V

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    .line 76
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->FlatWaiting:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->callbackStatus(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)V

    .line 77
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->layFlatWaitingTTS()V

    :cond_5
    :goto_1
    return-void
.end method

.method protected moveSeatFlat()V
    .locals 4

    .line 83
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->FlatMoving:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->callbackStatus(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)V

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->moveDrvSeatToSafeForRearSleep()V

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->movePsnSeatToSafeForRearSleep()V

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected onSeatPosChanged()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->Flat:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->isLayFlatCorrectly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->Normal:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->callbackStatus(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)V

    goto :goto_0

    .line 52
    :cond_0
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->onSeatPosChanged()V

    :goto_0
    return-void
.end method

.method protected restore()V
    .locals 4

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restore seat:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->isRearSeatNotOccupied()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->RestoreMoving:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    if-ne v0, v1, :cond_1

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->mStatusChangedListener:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl$OnStatusChangedListener;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->mStatusChangedListener:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl$OnStatusChangedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl$OnStatusChangedListener;->onSeatStartMove(Z)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->restoreDrvSeatPos(ZZ)Z

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->restorePsnSeatPos()Z

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method protected restoreFinish()V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreFinish:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->Normal:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->callbackStatus(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)V

    return-void
.end method

.method public restoreSeat()V
    .locals 0

    .line 106
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->restoreSeat()V

    return-void
.end method

.method protected startLayFlatMoveNotice()V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->Normal:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->FlatWaiting:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    if-ne v0, v1, :cond_1

    .line 93
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->vip_seat_front_moving_toast:I

    .line 94
    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/App;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 93
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;Z)Ljava/lang/String;

    .line 96
    :cond_1
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->FlatMoving:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->callbackStatus(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)V

    return-void
.end method

.method protected stopSeat()V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->stopDrvSeatMove()V

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->stopPsnSeatMove()V

    return-void
.end method
