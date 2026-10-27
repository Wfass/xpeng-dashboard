.class public Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;
.super Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;
.source "VipCapsuleSeatControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl$SingleHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VipCapsuleSeatControl"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;
    .locals 1

    .line 17
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl$SingleHolder;->access$000()Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected checkFrontSeatOccupied()Z
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isDrvSeatOccupied()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isPsnSeatOccupied()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected checkSeatMoveAble()Z
    .locals 1

    .line 99
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->isRearSeatNotOccupied()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "isSupportSeatFlatFrontOccupied"

    .line 100
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    .line 101
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isDrvSeatOccupied()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isPsnSeatOccupied()Z

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

    .line 25
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->mIsInit:Z

    if-nez v0, :cond_1

    .line 26
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->init()V

    .line 27
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->observerDrvSeatMove()V

    .line 28
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->observerPsnSeatMove()V

    const-string v0, "isSupportSeatFlatFrontOccupied"

    .line 29
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->observerDrvSeatOccupied()V

    .line 31
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->observerPsnSeatOccupied()V

    :cond_0
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->mIsInit:Z

    :cond_1
    return-void
.end method

.method protected isLayFlatCorrectly()Z
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isDrvSeatLieFlat()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isPsnSeatLieFlat()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected layFlatWaitingTTS()V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->mStatusChangedListener:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl$OnStatusChangedListener;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->mStatusChangedListener:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl$OnStatusChangedListener;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl$OnStatusChangedListener;->onPlayLayFlatWaitingTTS()V

    :cond_0
    return-void
.end method

.method protected moveSeatFlat()V
    .locals 11

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->FlatMoving:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    if-ne v0, v1, :cond_4

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->mStatusChangedListener:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl$OnStatusChangedListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->mStatusChangedListener:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl$OnStatusChangedListener;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl$OnStatusChangedListener;->onSeatStartMove(Z)V

    :cond_0
    const-string v0, "isEcuDoSeatLayFlat"

    .line 51
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDrvSeatLayFlat()V

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPsnSeatLayFlat()V

    goto :goto_1

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatTiltPos()I

    move-result v0

    const/16 v2, 0x5f

    const/16 v3, 0x37

    const/16 v4, 0x64

    if-ge v0, v3, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    .line 56
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatHorzPos()I

    move-result v0

    if-ge v0, v2, :cond_2

    .line 57
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->mIsDrvMoveHor:Z

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDSeatHorzPos(I)V

    goto :goto_0

    .line 60
    :cond_2
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/16 v6, 0x64

    sget v7, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->VIP_SEAT_VER_POS:I

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    .line 61
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatLegPos()I

    move-result v9

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatCushionPos()I

    move-result v10

    .line 60
    invoke-virtual/range {v5 .. v10}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDrvSeatAllPositions(IIIII)V

    .line 63
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPSeatTiltPos()I

    move-result v0

    if-ge v0, v3, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    .line 64
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPSeatHorzPos()I

    move-result v0

    if-ge v0, v2, :cond_3

    .line 65
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->mIsPsnMoveHor:Z

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPSeatHorzPos(I)V

    goto :goto_1

    .line 68
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    sget v2, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->VIP_SEAT_VER_POS:I

    const/4 v3, 0x0

    invoke-virtual {v0, v4, v2, v3, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPsnSeatAllPositions(IIII)V

    .line 72
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    return-void
.end method

.method protected onSeatPosChanged()V
    .locals 9

    .line 130
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->mIsDrvMoveHor:Z

    const/16 v1, 0x5f

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    sget-object v3, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->FlatMoving:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    .line 131
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatHorzPos()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 132
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->mIsDrvMoveHor:Z

    .line 133
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/16 v4, 0x64

    sget v5, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->VIP_SEAT_VER_POS:I

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    .line 134
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatLegPos()I

    move-result v7

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatCushionPos()I

    move-result v8

    .line 133
    invoke-virtual/range {v3 .. v8}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDrvSeatAllPositions(IIIII)V

    .line 136
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->mIsPsnMoveHor:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    sget-object v3, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->FlatMoving:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    .line 137
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPSeatHorzPos()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 138
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->mIsPsnMoveHor:Z

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/16 v1, 0x64

    sget v3, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->VIP_SEAT_VER_POS:I

    invoke-virtual {v0, v1, v3, v2, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPsnSeatAllPositions(IIII)V

    .line 142
    :cond_1
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->onSeatPosChanged()V

    return-void
.end method

.method protected restore()V
    .locals 4

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restore seat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VipCapsuleSeatControl"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->isRearSeatNotOccupied()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->RestoreMoving:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    if-ne v0, v1, :cond_1

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->mStatusChangedListener:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl$OnStatusChangedListener;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->mStatusChangedListener:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl$OnStatusChangedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl$OnStatusChangedListener;->onSeatStartMove(Z)V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->restoreDrvSeatPos(ZZ)Z

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->restorePsnSeatPos()Z

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method protected restoreFinish()V
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreFinish:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VipCapsuleSeatControl"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isDrvSeatEqualMemory()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    .line 108
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isPsnSeatEqualMemory()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->Normal:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->RestorePause:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    .line 107
    :goto_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->callbackStatus(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)V

    return-void
.end method

.method protected seatFlatSpeak()V
    .locals 0

    return-void
.end method

.method protected stopSeat()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->stopDrvSeatMove()V

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->stopPsnSeatMove()V

    return-void
.end method
