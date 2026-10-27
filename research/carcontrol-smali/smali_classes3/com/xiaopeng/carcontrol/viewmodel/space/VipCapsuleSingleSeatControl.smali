.class public Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;
.super Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;
.source "VipCapsuleSingleSeatControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl$SingleHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VipCapsuleSingleSeatControl"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl$1;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;
    .locals 1

    .line 17
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl$SingleHolder;->access$100()Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected checkFrontSeatOccupied()Z
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isPsnSeatOccupied()Z

    move-result v0

    return v0
.end method

.method protected checkSeatMoveAble()Z
    .locals 1

    .line 87
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->isRearSeatNotOccupied()Z

    move-result v0

    return v0
.end method

.method protected init()V
    .locals 1

    .line 25
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;->mIsInit:Z

    if-nez v0, :cond_0

    .line 26
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->init()V

    .line 27
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;->observerPsnSeatMove()V

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;->mIsInit:Z

    :cond_0
    return-void
.end method

.method protected isLayFlatCorrectly()Z
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isPsnSeatLieFlat()Z

    move-result v0

    return v0
.end method

.method protected layFlatWaitingTTS()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;->mStatusChangedListener:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl$OnStatusChangedListener;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;->mStatusChangedListener:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl$OnStatusChangedListener;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl$OnStatusChangedListener;->onPlayLayFlatWaitingTTS()V

    :cond_0
    return-void
.end method

.method protected moveSeatFlat()V
    .locals 5

    .line 45
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start move seat flat:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->FlatMoving:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    if-ne v0, v1, :cond_3

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;->mStatusChangedListener:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl$OnStatusChangedListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;->mStatusChangedListener:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl$OnStatusChangedListener;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl$OnStatusChangedListener;->onSeatStartMove(Z)V

    :cond_0
    const-string v0, "isEcuDoSeatLayFlat"

    .line 50
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPsnSeatLayFlat()V

    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPSeatTiltPos()I

    move-result v0

    const/16 v2, 0x37

    const/16 v3, 0x64

    if-ge v0, v2, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    .line 54
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPSeatHorzPos()I

    move-result v0

    const/16 v2, 0x5f

    if-ge v0, v2, :cond_2

    .line 55
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;->mIsPsnMoveHor:Z

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPSeatHorzPos(I)V

    goto :goto_0

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    sget v2, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;->VIP_SEAT_VER_POS:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4, v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPsnSeatAllPositions(IIII)V

    .line 62
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    return-void
.end method

.method protected onSeatPosChanged()V
    .locals 4

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->Flat:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;->isLayFlatCorrectly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->Normal:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;->callbackStatus(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)V

    goto :goto_0

    .line 118
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;->mIsPsnMoveHor:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->FlatMoving:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    .line 119
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPSeatHorzPos()I

    move-result v0

    const/16 v1, 0x5f

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 120
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;->mIsPsnMoveHor:Z

    .line 121
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/16 v2, 0x64

    sget v3, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;->VIP_SEAT_VER_POS:I

    invoke-virtual {v1, v2, v3, v0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPsnSeatAllPositions(IIII)V

    .line 124
    :cond_1
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->onSeatPosChanged()V

    :goto_0
    return-void
.end method

.method protected restore()V
    .locals 4

    .line 74
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restore seat:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;->isRearSeatNotOccupied()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->RestoreMoving:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    if-ne v0, v1, :cond_1

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;->mStatusChangedListener:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl$OnStatusChangedListener;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;->mStatusChangedListener:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl$OnStatusChangedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl$OnStatusChangedListener;->onSeatStartMove(Z)V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->restorePsnSeatPos()Z

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method protected restoreFinish()V
    .locals 3

    .line 92
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreFinish:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isPsnSeatEqualMemory()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->Normal:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->RestorePause:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;->callbackStatus(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)V

    return-void
.end method

.method protected seatFlatSpeak()V
    .locals 0

    return-void
.end method

.method protected stopSeat()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->stopPsnSeatMove()V

    return-void
.end method
