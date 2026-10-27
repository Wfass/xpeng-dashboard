.class public abstract Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;
.super Ljava/lang/Object;
.source "SeatBaseViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController$Callback;


# static fields
.field static final SEAT_MEMORY_MAX_COUNT:I = 0x3


# instance fields
.field protected final SBR_ST_RUNNABLE_DELAY:J

.field protected final TAG:Ljava/lang/String;

.field final mBcmCallback:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController$Callback;

.field mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

.field protected volatile mDrvDoorClosedTime:J

.field private mDrvLumbarControlStrategy:Lcom/xiaopeng/carcontrol/viewmodel/cabin/DrvLumbarControlStrategy;

.field protected mDrvSbrStRunnable:Ljava/lang/Runnable;

.field mFollowedVehicleLostConfig:Ljava/lang/String;

.field mHandler:Landroid/os/Handler;

.field private mIsDrvDoorOpen:Z

.field protected mIsDrvSbrOn:Z

.field private mIsPsnDoorOpen:Z

.field protected mIsPsnSbrOn:Z

.field private volatile mIsRearDoorOpen:Z

.field protected volatile mIsRearSbrOn:Z

.field mIsSeatUiCtrlResume:Z

.field mLtEasyEnterErrorCallback:Ljava/lang/String;

.field mLtEasyEnterErrorEvent:Ljava/lang/String;

.field mLtZeroGravErrorCallback:Ljava/lang/String;

.field mLtZeroGravErrorEvent:Ljava/lang/String;

.field mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

.field mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

.field mPabRunnable:Ljava/lang/Runnable;

.field protected volatile mPsnDoorClosedTime:J

.field protected mPsnSbrStRunnable:Ljava/lang/Runnable;

.field private mPsnSrsConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

.field protected volatile mRearDoorClosedTime:J

.field protected mRearSbrStRunnable:Ljava/lang/Runnable;

.field protected mRlZeroFuncRunnable:Ljava/lang/Runnable;

.field protected mRlZeroFunctionActive:Z

.field protected mRlZeroToastScreenId:I

.field protected mRrZeroFuncRunnable:Ljava/lang/Runnable;

.field protected mRrZeroFunctionActive:Z

.field protected mRrZeroToastScreenId:I

.field mRtEasyEnterErrorCallback:Ljava/lang/String;

.field mRtEasyEnterErrorEvent:Ljava/lang/String;

.field mRtZeroGravErrorCallback:Ljava/lang/String;

.field mRtZeroGravErrorEvent:Ljava/lang/String;

.field mScenarioController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController;

.field mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

.field mTlFoldErrorCallback:Ljava/lang/String;

.field mTlFoldErrorEvent:Ljava/lang/String;

.field mTrFoldErrorCallback:Ljava/lang/String;

.field mTrFoldErrorEvent:Ljava/lang/String;

.field mTrdRowStowErrorCallback:Ljava/lang/String;

.field mTrdRowStowErrorEvent:Ljava/lang/String;

.field mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

.field protected zeroRunnableDelay:J


# direct methods
.method constructor <init>()V
    .locals 4

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mIsSeatUiCtrlResume:Z

    const-string v1, "2"

    .line 74
    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mFollowedVehicleLostConfig:Ljava/lang/String;

    .line 95
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatBaseViewModel$WUqVxdIahp5SmBDGS036YEm0a30;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatBaseViewModel$WUqVxdIahp5SmBDGS036YEm0a30;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;)V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mPabRunnable:Ljava/lang/Runnable;

    const/4 v1, -0x1

    .line 96
    iput v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mRlZeroToastScreenId:I

    .line 97
    iput v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mRrZeroToastScreenId:I

    .line 98
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mRlZeroFunctionActive:Z

    .line 99
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel$1;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;)V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mRlZeroFuncRunnable:Ljava/lang/Runnable;

    .line 105
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mRrZeroFunctionActive:Z

    .line 106
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatBaseViewModel$pyzMHPIvZek9NvJzUirFm6yTDKk;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatBaseViewModel$pyzMHPIvZek9NvJzUirFm6yTDKk;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;)V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mRrZeroFuncRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    .line 107
    iput-wide v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->zeroRunnableDelay:J

    .line 109
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel$2;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;)V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mDrvSbrStRunnable:Ljava/lang/Runnable;

    .line 121
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel$3;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;)V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mPsnSbrStRunnable:Ljava/lang/Runnable;

    .line 133
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel$4;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;)V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mRearSbrStRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f40

    .line 145
    iput-wide v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->SBR_ST_RUNNABLE_DELAY:J

    .line 147
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel$5;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel$5;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;)V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mBcmCallback:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController$Callback;

    .line 181
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v1

    const-string/jumbo v2, "xp_msm"

    .line 184
    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    const-string/jumbo v2, "xp_bcm"

    .line 186
    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    const-string/jumbo v2, "xp_mcu"

    .line 188
    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    const-string/jumbo v2, "xp_vcu"

    .line 190
    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    .line 191
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v2

    const-string/jumbo v3, "xp_UserScenarioService"

    .line 192
    invoke-virtual {v2, v3}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController;

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mScenarioController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController;

    .line 193
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->isSupportEsbConfig()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "xp_scu"

    .line 195
    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    .line 197
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->readFollowedVehicleLostConfig()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mFollowedVehicleLostConfig:Ljava/lang/String;

    .line 199
    :cond_0
    invoke-virtual {v1, v3}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController;

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mScenarioController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController;

    const-string v1, "isSupportDrvLumbarKeySettings"

    .line 200
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/DrvLumbarControlStrategy;

    invoke-direct {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/DrvLumbarControlStrategy;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mDrvLumbarControlStrategy:Lcom/xiaopeng/carcontrol/viewmodel/cabin/DrvLumbarControlStrategy;

    .line 203
    :cond_1
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->getHandler(I)Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mHandler:Landroid/os/Handler;

    .line 204
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->isDrvSeatOccupied()Z

    move-result v1

    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mIsDrvSbrOn:Z

    .line 205
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->isPsnSeatOccupied()Z

    move-result v1

    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mIsPsnSbrOn:Z

    .line 206
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->isRearSeatOccupied()Z

    move-result v1

    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mIsRearSbrOn:Z

    .line 207
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getDoorState(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mIsDrvDoorOpen:Z

    .line 208
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v1, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getDoorState(I)I

    move-result v1

    if-ne v1, v2, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_1
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mIsPsnDoorOpen:Z

    .line 209
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getDoorState(I)I

    move-result v1

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    .line 210
    invoke-interface {v1, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getDoorState(I)I

    move-result v1

    if-ne v1, v2, :cond_5

    :cond_4
    move v0, v2

    :cond_5
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mIsRearDoorOpen:Z

    return-void
.end method

.method private setAsWelcomeMode(ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "drvWelcomeMode",
            "psnWelcomeMode"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 273
    :goto_1
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAsWelcomeMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 274
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {p2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setAsWelcomeMode(Z)V

    return-void
.end method


# virtual methods
.method public cancelAllControlDrvLumbar()V
    .locals 1

    const-string v0, "isSupportDrvLumbarKeySettings"

    .line 1720
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1721
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mDrvLumbarControlStrategy:Lcom/xiaopeng/carcontrol/viewmodel/cabin/DrvLumbarControlStrategy;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/DrvLumbarControlStrategy;->cancelControl()V

    :cond_0
    return-void
.end method

.method public cancelRlZeroRunnable()V
    .locals 2

    .line 1529
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mRlZeroFuncRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public cancelRrZeroRunnable()V
    .locals 2

    .line 1532
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mRrZeroFuncRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public checkChairMovable()Z
    .locals 3

    .line 1223
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->getCarSpeed()F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 1224
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->smart_chair_speed_error:I

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return v1

    .line 1227
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->isDrvDoorOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1228
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->smart_chair_door_error:I

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return v1

    .line 1231
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->isDrvSeatOccupied()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1232
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->smart_chair_driver_error:I

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method protected checkChairMovable(Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ignoreDrvDoorState"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1239
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->checkChairMovable(ZZ)Z

    move-result p1

    return p1
.end method

.method protected checkChairMovable(ZZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ignoreDrvDoorState",
            "ignoreDrvState"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1243
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->checkChairMovable(ZZZ)Z

    move-result p1

    return p1
.end method

.method protected checkChairMovable(ZZZ)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ignoreDrvDoorState",
            "ignoreDrvState",
            "ignoreSpeed"
        }
    .end annotation

    .line 1247
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->isDrvDoorOpened()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1248
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->isDrvSeatOccupied()Z

    move-result v2

    .line 1249
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->getCarSpeed()F

    move-result v3

    const/high16 v4, 0x40400000    # 3.0f

    cmpl-float v3, v3, v4

    const/4 v4, 0x0

    if-ltz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v4

    .line 1250
    :goto_0
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkSeatMovable, doorState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", driverState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", speedState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ignoreDrvDoorState: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ignoreDrvState: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez p3, :cond_1

    if-eqz v3, :cond_1

    .line 1254
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->smart_chair_speed_error:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return v4

    :cond_1
    if-nez p1, :cond_2

    if-nez v0, :cond_2

    .line 1258
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->smart_chair_door_error:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return v4

    :cond_2
    if-nez p2, :cond_3

    if-nez v2, :cond_3

    .line 1262
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->smart_chair_driver_error:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return v4

    :cond_3
    return v1
.end method

.method protected checkPsnChairMovable()Z
    .locals 3

    .line 1211
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->isPsnDoorOpened()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1212
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->smart_chair_door_error:I

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return v1

    .line 1215
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->isPsnSeatOccupied()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1216
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->smart_chair_psn_error:I

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public enterDrvLumbarScene()V
    .locals 1

    const-string v0, "isSupportDrvLumbarKeySettings"

    .line 1706
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1707
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mDrvLumbarControlStrategy:Lcom/xiaopeng/carcontrol/viewmodel/cabin/DrvLumbarControlStrategy;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/DrvLumbarControlStrategy;->enterScene()V

    :cond_0
    return-void
.end method

.method public enterMeditationState(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tiltPos"
        }
    .end annotation

    .line 1275
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getDSeatTiltPos()I

    move-result v0

    sub-int v0, p1, v0

    .line 1277
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    .line 1278
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->checkChairMovable(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1279
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->TAG:Ljava/lang/String;

    const-string v2, "Start to move seat tilt position"

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v1, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setDSeatTiltPos(I)V

    .line 1282
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setDrvWelcomeModeActiveSt(Z)V

    .line 1283
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setPsnWelcomeModeActiveSt(Z)V

    :cond_0
    return-void
.end method

.method public exitDrvLumbarScene()V
    .locals 1

    const-string v0, "isSupportDrvLumbarKeySettings"

    .line 1713
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1714
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mDrvLumbarControlStrategy:Lcom/xiaopeng/carcontrol/viewmodel/cabin/DrvLumbarControlStrategy;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/DrvLumbarControlStrategy;->exitScene()V

    :cond_0
    return-void
.end method

.method public getBackBeltSw()Z
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getBackBeltWStatus()Z

    move-result v0

    return v0
.end method

.method public getCarSpeed()F
    .locals 1

    .line 1032
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getCarSpeed()F

    move-result v0

    return v0
.end method

.method public getDSeatCushionPos()I
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getDSeatCushionPos()I

    move-result v0

    return v0
.end method

.method public getDSeatHorzPos()I
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getDSeatHorzPos()I

    move-result v0

    return v0
.end method

.method public getDSeatLegPos()I
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getDSeatLegPos()I

    move-result v0

    return v0
.end method

.method public getDSeatTiltPos()I
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getDSeatTiltPos()I

    move-result v0

    return v0
.end method

.method public getDSeatVerPos()I
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getDSeatVerPos()I

    move-result v0

    return v0
.end method

.method public getDriverSeatAntiFatigueSw()Z
    .locals 1

    .line 1910
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getDriverSeatAntiFatigueSw()Z

    move-result v0

    return v0
.end method

.method public getDriverSeatMoveState()Z
    .locals 1

    .line 1900
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getDriverSeatMoveState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDrvLumbControlSw()Z
    .locals 1

    .line 1429
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getDriverSeatLumbControlSwitchEnable()Z

    move-result v0

    return v0
.end method

.method public getDrvSeatPosIdx()I
    .locals 1

    .line 892
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getDrvSeatPosIdx()I

    move-result v0

    return v0
.end method

.method public getEsbConfigMode()Ljava/lang/String;
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mFollowedVehicleLostConfig:Ljava/lang/String;

    return-object v0
.end method

.method public getEsbMode()Z
    .locals 2

    .line 377
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mFollowedVehicleLostConfig:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getEsbModeSp()Z

    move-result v0

    return v0

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getEsbEnable()Z

    move-result v0

    return v0
.end method

.method public getPSeatHorzPos()I
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getPSeatHorzPos()I

    move-result v0

    return v0
.end method

.method public getPSeatLegPos()I
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getPSeatLegPos()I

    move-result v0

    return v0
.end method

.method public getPSeatTiltPos()I
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getPSeatTiltPos()I

    move-result v0

    return v0
.end method

.method public getPSeatVerPos()I
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getPSeatVerPos()I

    move-result v0

    return v0
.end method

.method public getPassengerSeatMoveState()Z
    .locals 1

    .line 1905
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getPassengerSeatMoveState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPsnLumbControlSw()Z
    .locals 1

    .line 1439
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getPassengerSeatLumbControlSwitchEnable()Z

    move-result v0

    return v0
.end method

.method public getPsnSrsEnable()Z
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getPsnSrsEnable()Z

    move-result v0

    return v0
.end method

.method public getRLSeatHeadHorPos()I
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getRLSeatHeadHorPos()I

    move-result v0

    return v0
.end method

.method public getRLSeatHeadVerPos()I
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getRLSeatHeadVerPos()I

    move-result v0

    return v0
.end method

.method public getRLSeatHorPos()I
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getRLSeatHorPos()I

    move-result v0

    return v0
.end method

.method public getRLSeatLegHorPos()I
    .locals 1

    .line 557
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getRLSeatLegHorPos()I

    move-result v0

    return v0
.end method

.method public getRLSeatLegPos()I
    .locals 1

    .line 597
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getRLSeatLegPos()I

    move-result v0

    return v0
.end method

.method public getRLSeatLegVerPos()I
    .locals 1

    .line 552
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getRLSeatLegVerPos()I

    move-result v0

    return v0
.end method

.method public getRLSeatTiltPos()I
    .locals 1

    .line 542
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getRLSeatTiltPos()I

    move-result v0

    return v0
.end method

.method public getRLSeatZeroAngle()I
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getRLSeatZeroAngle()I

    move-result v0

    return v0
.end method

.method public getRRSeatHeadHorPos()I
    .locals 1

    .line 687
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getRRSeatHeadHorPos()I

    move-result v0

    return v0
.end method

.method public getRRSeatHeadVerPos()I
    .locals 1

    .line 677
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getRRSeatHeadVerPos()I

    move-result v0

    return v0
.end method

.method public getRRSeatHorPos()I
    .locals 1

    .line 587
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getRRSeatHorPos()I

    move-result v0

    return v0
.end method

.method public getRRSeatLegHorPos()I
    .locals 1

    .line 582
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getRRSeatLegHorPos()I

    move-result v0

    return v0
.end method

.method public getRRSeatLegPos()I
    .locals 1

    .line 607
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getRRSeatLegPos()I

    move-result v0

    return v0
.end method

.method public getRRSeatLegVerPos()I
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getRRSeatLegVerPos()I

    move-result v0

    return v0
.end method

.method public getRRSeatTiltPos()I
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getRRSeatTiltPos()I

    move-result v0

    return v0
.end method

.method public getRRSeatZeroAngle()I
    .locals 1

    .line 577
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getRRSeatZeroAngle()I

    move-result v0

    return v0
.end method

.method public getRearLeaveRemindWarningSw()Z
    .locals 1

    .line 1920
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->getRemindWarningSw()Z

    move-result v0

    return v0
.end method

.method public getRlFuncTrigSource()I
    .locals 1

    .line 1880
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getRlFuncTrigSource()I

    move-result v0

    return v0
.end method

.method public getRrFuncTrigSource()I
    .locals 1

    .line 1885
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getRrFuncTrigSource()I

    move-result v0

    return v0
.end method

.method public getSecRowLTFuctionStatus()I
    .locals 1

    .line 1570
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getSecRowLTFuctionStatus()I

    move-result v0

    return v0
.end method

.method public getSecRowLTMoveStatus()I
    .locals 1

    .line 1580
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getSecRowLTMoveStatus()I

    move-result v0

    return v0
.end method

.method public getSecRowLeftSeatBeltWarning()Z
    .locals 1

    .line 1745
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->getSecRowLeftSeatBeltWarning()Z

    move-result v0

    return v0
.end method

.method public getSecRowLtSeatZeroGrav()I
    .locals 1

    .line 1560
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getSecRowLtSeatZeroGrav()I

    move-result v0

    return v0
.end method

.method public getSecRowMiddleSeatBeltWarning()Z
    .locals 1

    .line 1755
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->getSecRowMiddleSeatBeltWarning()Z

    move-result v0

    return v0
.end method

.method public getSecRowRTFuctionStatus()I
    .locals 1

    .line 1575
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getSecRowRTFuctionStatus()I

    move-result v0

    return v0
.end method

.method public getSecRowRTMoveStatus()I
    .locals 1

    .line 1585
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getSecRowRTMoveStatus()I

    move-result v0

    return v0
.end method

.method public getSecRowRightSeatBeltWarning()Z
    .locals 1

    .line 1765
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->getSecRowRightSeatBeltWarning()Z

    move-result v0

    return v0
.end method

.method public getSecRowRtSeatZeroGrav()I
    .locals 1

    .line 1565
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getSecRowRtSeatZeroGrav()I

    move-result v0

    return v0
.end method

.method getStallState()I
    .locals 1

    .line 942
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getGearLevel()I

    move-result v0

    return v0
.end method

.method public getTlFuncTrigSource()I
    .locals 1

    .line 1890
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getTlFuncTrigSource()I

    move-result v0

    return v0
.end method

.method public getTrFuncTrigSource()I
    .locals 1

    .line 1895
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getTrFuncTrigSource()I

    move-result v0

    return v0
.end method

.method public getTrdRowLTHeadStatus()I
    .locals 1

    .line 1590
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getTrdRowLTHeadStatus()I

    move-result v0

    return v0
.end method

.method public getTrdRowLeftSeatBeltWarning()Z
    .locals 1

    .line 1775
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->getTrdRowLeftSeatBeltWarning()Z

    move-result v0

    return v0
.end method

.method public getTrdRowLeftSeatTiltState()I
    .locals 1

    .line 1605
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getTrdRowLeftSeatTiltState()I

    move-result v0

    return v0
.end method

.method public getTrdRowLtSeatFol()I
    .locals 1

    .line 1625
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getTrdRowLtSeatFol()I

    move-result v0

    return v0
.end method

.method public getTrdRowLtSeatHeadVerticalPos()I
    .locals 1

    .line 1645
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getTrdRowLtSeatHeadVerticalPos()I

    move-result v0

    return v0
.end method

.method public getTrdRowLtSeatTiltPos()I
    .locals 1

    .line 1635
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getTrdRowLtSeatTiltPos()I

    move-result v0

    return v0
.end method

.method public getTrdRowMidHeadStatus()I
    .locals 1

    .line 1600
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getTrdRowMidHeadStatus()I

    move-result v0

    return v0
.end method

.method public getTrdRowMidSeatHeadVerticalPos()I
    .locals 1

    .line 1655
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getTrdRowMidSeatHeadVerticalPos()I

    move-result v0

    return v0
.end method

.method public getTrdRowMiddleSeatBeltWarning()Z
    .locals 1

    .line 1785
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->getTrdRowMiddleSeatBeltWarning()Z

    move-result v0

    return v0
.end method

.method public getTrdRowRTHeadStatus()I
    .locals 1

    .line 1595
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getTrdRowRTHeadStatus()I

    move-result v0

    return v0
.end method

.method public getTrdRowRightSeatBeltWarning()Z
    .locals 1

    .line 1795
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->getTrdRowRightSeatBeltWarning()Z

    move-result v0

    return v0
.end method

.method public getTrdRowRightSeatTiltState()I
    .locals 1

    .line 1610
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getTrdRowRightSeatTiltState()I

    move-result v0

    return v0
.end method

.method public getTrdRowRtSeatFol()I
    .locals 1

    .line 1630
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getTrdRowRtSeatFol()I

    move-result v0

    return v0
.end method

.method public getTrdRowRtSeatHeadVerticalPos()I
    .locals 1

    .line 1650
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getTrdRowRtSeatHeadVerticalPos()I

    move-result v0

    return v0
.end method

.method public getTrdRowRtSeatTiltPos()I
    .locals 1

    .line 1640
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getTrdRowRtSeatTiltPos()I

    move-result v0

    return v0
.end method

.method public getTrdRowSeatStow()I
    .locals 1

    .line 1620
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getTrdRowSeatStow()I

    move-result v0

    return v0
.end method

.method public getTrdRowSeatStowState()I
    .locals 1

    .line 1615
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getTrdRowSeatStowState()I

    move-result v0

    return v0
.end method

.method protected abstract handleBackBeltWaringChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation
.end method

.method protected handleDoorStateChanged([I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    if-eqz p1, :cond_a

    .line 1073
    array-length v0, p1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_a

    .line 1074
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDoorStateChanged , door state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsDrvSbrOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mIsDrvSbrOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsPsnSbrOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mIsPsnSbrOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsRearSbrOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mIsRearSbrOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1076
    aget v1, p1, v0

    const-string v2, "isRightDudder"

    const-wide/16 v3, 0x1f40

    const/4 v5, 0x1

    if-ne v1, v5, :cond_1

    .line 1077
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1078
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mIsDrvDoorOpen:Z

    if-nez v1, :cond_3

    .line 1079
    iput-boolean v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mIsDrvDoorOpen:Z

    .line 1080
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mDrvSbrStRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1083
    :cond_0
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mIsPsnDoorOpen:Z

    if-nez v1, :cond_3

    .line 1084
    iput-boolean v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mIsPsnDoorOpen:Z

    .line 1085
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mPsnSbrStRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1089
    :cond_1
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1090
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mIsDrvDoorOpen:Z

    if-eqz v1, :cond_3

    .line 1091
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mDrvSbrStRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1092
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mIsDrvDoorOpen:Z

    .line 1093
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mDrvDoorClosedTime:J

    .line 1094
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mDrvSbrStRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v6, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1097
    :cond_2
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mIsPsnDoorOpen:Z

    if-eqz v1, :cond_3

    .line 1098
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mPsnSbrStRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1099
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mIsPsnDoorOpen:Z

    .line 1100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mPsnDoorClosedTime:J

    .line 1101
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mPsnSbrStRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v6, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1105
    :cond_3
    :goto_0
    aget v1, p1, v5

    if-ne v1, v5, :cond_5

    .line 1106
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1107
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mIsPsnDoorOpen:Z

    if-nez v1, :cond_7

    .line 1108
    iput-boolean v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mIsPsnDoorOpen:Z

    .line 1109
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mPsnSbrStRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1112
    :cond_4
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mIsDrvDoorOpen:Z

    if-nez v1, :cond_7

    .line 1113
    iput-boolean v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mIsDrvDoorOpen:Z

    .line 1114
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mDrvSbrStRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1118
    :cond_5
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1119
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mIsPsnDoorOpen:Z

    if-eqz v1, :cond_7

    .line 1120
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mPsnSbrStRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1121
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mIsPsnDoorOpen:Z

    .line 1122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mPsnDoorClosedTime:J

    .line 1123
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mPsnSbrStRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 1126
    :cond_6
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mIsDrvDoorOpen:Z

    if-eqz v1, :cond_7

    .line 1127
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mDrvSbrStRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1128
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mIsDrvDoorOpen:Z

    .line 1129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mDrvDoorClosedTime:J

    .line 1130
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mDrvSbrStRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    :goto_1
    const/4 v1, 0x2

    .line 1135
    aget v1, p1, v1

    if-eq v1, v5, :cond_9

    const/4 v1, 0x3

    aget p1, p1, v1

    if-ne p1, v5, :cond_8

    goto :goto_2

    .line 1141
    :cond_8
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mIsRearDoorOpen:Z

    if-eqz p1, :cond_a

    .line 1142
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mRearSbrStRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1143
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mIsRearDoorOpen:Z

    .line 1144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mRearDoorClosedTime:J

    .line 1145
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mRearSbrStRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 1137
    :cond_9
    :goto_2
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mIsRearDoorOpen:Z

    if-nez p1, :cond_a

    .line 1138
    iput-boolean v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mIsRearDoorOpen:Z

    .line 1139
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mRearSbrStRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_a
    :goto_3
    return-void
.end method

.method protected abstract handleDrvLumbControlEnableChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method protected abstract handleDrvSeatAntiFatigueSwChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method protected abstract handleDrvSeatMoveStChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stop"
        }
    .end annotation
.end method

.method protected abstract handleDrvSeatOccupied(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "occupied"
        }
    .end annotation
.end method

.method protected abstract handleDrvSeatSbrSt(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method protected abstract handleEsbChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation
.end method

.method protected abstract handleEsbConfigChanged(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configMode"
        }
    .end annotation
.end method

.method protected abstract handleMsmdSeatAntiFatiguePreviewStatusChanged()V
.end method

.method protected abstract handleMsmdSeatAntiFatigueStatusChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation
.end method

.method protected abstract handleMsmdSeatLumbRelaxModeChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation
.end method

.method protected abstract handleMsmpSeatLumbRelaxModeChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation
.end method

.method protected abstract handlePsnLumbControlEnableChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method protected abstract handlePsnSeatMoveStChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stop"
        }
    .end annotation
.end method

.method protected abstract handlePsnSeatSbrSt(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method protected abstract handlePsnSrsEnableChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method protected abstract handlePsnSrsNoResponse()V
.end method

.method protected abstract handlePsnWelcomeModeChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation
.end method

.method protected abstract handleRearSeatSbrSt(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method protected abstract handleRearSeatWelcomeModeChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation
.end method

.method protected abstract handleSecLeftBeltWarningChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation
.end method

.method protected abstract handleSecMidBeltWarningChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation
.end method

.method protected abstract handleSecRightBeltWarningChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation
.end method

.method protected abstract handleTrdLeftBeltWarningChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation
.end method

.method protected abstract handleTrdMidBeltWarningChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation
.end method

.method protected abstract handleTrdRightBeltWarningChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation
.end method

.method protected abstract handleWelcomeModeChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation
.end method

.method public haveDefaultSeat(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public isCapsuleSeatLieFlat()Z
    .locals 1

    .line 1350
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->isDrvSeatLieFlat()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->isPsnSeatLieFlat()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDrvBeltUnbuckled()Z
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getDrvBeltStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isDrvDoorOpened()Z
    .locals 3

    const-string v0, "isRightDudder"

    .line 926
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 927
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getDoorState(I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 929
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getDoorState(I)I

    move-result v0

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public isDrvHeadrestNormal()Z
    .locals 1

    .line 1289
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->isDrvHeadrestNormal()Z

    move-result v0

    return v0
.end method

.method public isDrvSeatCorrectForRearFold()Z
    .locals 3

    .line 1406
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDrvSeatCorrectForRearFold, seatHor:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->getDSeatHorzPos()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", seatVer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->getDSeatVerPos()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",seatTilt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1407
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->getDSeatTiltPos()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1406
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->getDSeatHorzPos()I

    move-result v0

    sget v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->SLEEP_REST_SEAT_SAFE_DRV_HOR_POS:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 1409
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->getDSeatVerPos()I

    move-result v0

    sget v2, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->SLEEP_REST_SEAT_SAFE_DRV_VER_POS:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 1410
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->getDSeatTiltPos()I

    move-result v0

    sget v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->SLEEP_REST_SEAT_SAFE_DRV_TILT_POS:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDrvSeatLieFlat()Z
    .locals 6

    .line 1315
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDrvSeatLieFlat seatHor:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->getDSeatHorzPos()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",seatVer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1316
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->getDSeatVerPos()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",seatTilt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1317
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->getDSeatTiltPos()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1315
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "isEcuDoSeatLayFlat"

    .line 1318
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 1320
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->getDSeatTiltPos()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v2, :cond_0

    .line 1321
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->isDrvHeadrestNormal()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    return v1

    .line 1323
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->getDSeatHorzPos()I

    move-result v0

    add-int/lit8 v0, v0, -0x64

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v4, 0x2

    if-ge v0, v4, :cond_2

    .line 1325
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->getDSeatVerPos()I

    move-result v0

    sget v5, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->VIP_SEAT_VER_POS:I

    sub-int/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v4, :cond_2

    .line 1327
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->getDSeatTiltPos()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v2, :cond_2

    .line 1328
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->isDrvHeadrestNormal()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    return v1
.end method

.method public isDrvSeatOccupied()Z
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->isDrvSeatOccupied()Z

    move-result v0

    return v0
.end method

.method public isDrvSeatSbrSt()Z
    .locals 5

    .line 1847
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mIsDrvSbrOn:Z

    .line 1848
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->isDrvSeatOccupied()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1852
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDrvSeatSbrSt occupied = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mIsDrvSbrOn = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mIsDrvSbrOn:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", drvStrSt = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public isDrvTiltMovingSafe()Z
    .locals 1

    .line 1367
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->isDrvTiltMovingSafe()Z

    move-result v0

    return v0
.end method

.method public isLocalIgOn()Z
    .locals 2

    .line 1270
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->getIgStatusFromMcu()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isPsnBeltUnbuckled()Z
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getPsnBeltStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isPsnDoorOpened()Z
    .locals 3

    const-string v0, "isRightDudder"

    .line 934
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 935
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getDoorState(I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 937
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getDoorState(I)I

    move-result v0

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public isPsnHeadrestNormal()Z
    .locals 1

    .line 1294
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->isPsnHeadrestNormal()Z

    move-result v0

    return v0
.end method

.method public isPsnSeatCorrectForRearFold()Z
    .locals 3

    .line 1415
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPsnSeatCorrectForRearFold, seatHor:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->getPSeatHorzPos()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", seatVer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->getPSeatVerPos()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",seatTilt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1416
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->getPSeatTiltPos()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1415
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->getPSeatHorzPos()I

    move-result v0

    sget v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->SLEEP_REST_SEAT_SAFE_PSN_HOR_POS:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 1418
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->getPSeatVerPos()I

    move-result v0

    sget v2, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->SLEEP_REST_SEAT_SAFE_PSN_VER_POS:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 1419
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->getPSeatTiltPos()I

    move-result v0

    sget v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->SLEEP_REST_SEAT_SAFE_PSN_TILT_POS:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPsnSeatLieFlat()Z
    .locals 5

    .line 1334
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPsnSeatLieFlat, seatHor:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->getPSeatHorzPos()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",seatTilt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1335
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->getPSeatTiltPos()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1334
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "isEcuDoSeatLayFlat"

    .line 1336
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 1338
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->getPSeatTiltPos()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v2, :cond_0

    .line 1339
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->isPsnHeadrestNormal()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    return v1

    .line 1341
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->getPSeatHorzPos()I

    move-result v0

    add-int/lit8 v0, v0, -0x64

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v4, 0x2

    if-ge v0, v4, :cond_2

    .line 1343
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->getPSeatTiltPos()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v2, :cond_2

    .line 1344
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->isPsnHeadrestNormal()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    return v1
.end method

.method public isPsnSeatOccupied()Z
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->isPsnSeatOccupied()Z

    move-result v0

    return v0
.end method

.method public isPsnSeatSbrSt()Z
    .locals 5

    .line 1858
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mIsPsnSbrOn:Z

    .line 1859
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->isPsnSeatOccupied()Z

    move-result v1

    .line 1860
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->isPsnSeatOccupied()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 1863
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPsnSeatSbrSt occupied = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mIsPsnSbrOn = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mIsPsnSbrOn:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", psnStrSt = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public isPsnTiltMovingSafe()Z
    .locals 1

    .line 1372
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->isPsnTiltMovingSafe()Z

    move-result v0

    return v0
.end method

.method public isPsnWelcomeEnabled()Z
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getPsnSeatWelcomeMode()Z

    move-result v0

    return v0
.end method

.method public isRLSeatLieFlat()Z
    .locals 3

    .line 1355
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->getRLSeatTiltPos()I

    move-result v0

    const/4 v1, 0x0

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isRRSeatLieFlat()Z
    .locals 3

    .line 1361
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->getRRSeatTiltPos()I

    move-result v0

    const/4 v1, 0x0

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isRearSeatOccupied()Z
    .locals 4

    .line 343
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->isRlSeatOccupied()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->isRmSeatOccupied()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->isRrSeatOccupied()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-nez v0, :cond_4

    const-string v3, "isSupportTrdRowSeat"

    .line 344
    invoke-static {v3}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 345
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->isTlSeatOccupied()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->isTmSeatOccupied()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->isTrSeatOccupied()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    move v0, v1

    :cond_4
    return v0
.end method

.method public isRearSeatSbrSt()Z
    .locals 5

    .line 1869
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mIsRearSbrOn:Z

    .line 1870
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->isRearSeatOccupied()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1874
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRearSeatSbrSt occupied = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mIsRearSbrOn = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mIsRearSbrOn:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", rearStrSt = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public isRearSeatWelcomeEnabled()Z
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getRearSeatWelcomeMode()Z

    move-result v0

    return v0
.end method

.method public isRlSeatOccupied()Z
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->isRlSeatOccupied()Z

    move-result v0

    return v0
.end method

.method public isRmSeatOccupied()Z
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->isRmSeatOccupied()Z

    move-result v0

    return v0
.end method

.method public isRrSeatOccupied()Z
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->isRrSeatOccupied()Z

    move-result v0

    return v0
.end method

.method abstract isSupportEsbConfig()Z
.end method

.method public isSupportMSMP()Z
    .locals 1

    const-string v0, "isSupportMsmP"

    .line 1172
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSupportMsm()Z
    .locals 1

    const-string v0, "isSupportMsmD"

    .line 1167
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isTlSeatOccupied()Z
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->isTlSeatOccupied()Z

    move-result v0

    return v0
.end method

.method public isTmSeatOccupied()Z
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->isTmSeatOccupied()Z

    move-result v0

    return v0
.end method

.method public isTrSeatOccupied()Z
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->isTrSeatOccupied()Z

    move-result v0

    return v0
.end method

.method public isWelcomeModeEnabled()Z
    .locals 1

    const-string v0, "isSupportMcuSeatWelcome"

    .line 215
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->getSeatWelcomeMode()Z

    move-result v0

    return v0

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getSeatWelcomeMode()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$new$0$SeatBaseViewModel()V
    .locals 0

    .line 95
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->handlePsnSrsNoResponse()V

    return-void
.end method

.method public synthetic lambda$new$1$SeatBaseViewModel()V
    .locals 1

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mRrZeroFunctionActive:Z

    return-void
.end method

.method public synthetic lambda$setEsbMode$2$SeatBaseViewModel(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "enable"
        }
    .end annotation

    .line 372
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->handleEsbChanged(Z)V

    return-void
.end method

.method public synthetic lambda$showPsnSrsCloseDialog$3$SeatBaseViewModel(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "dialog",
            "i"
        }
    .end annotation

    const/4 p1, 0x0

    .line 418
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->setPsnSrsEnable(Z)V

    return-void
.end method

.method public moveDrvSeatToSafeForRearSleep()V
    .locals 6

    .line 1394
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    sget v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->SLEEP_REST_SEAT_SAFE_DRV_HOR_POS:I

    sget v2, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->SLEEP_REST_SEAT_SAFE_DRV_VER_POS:I

    sget v3, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->SLEEP_REST_SEAT_SAFE_DRV_TILT_POS:I

    .line 1395
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->getDSeatLegPos()I

    move-result v4

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->getDSeatCushionPos()I

    move-result v5

    .line 1394
    invoke-interface/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setDriverAllPositions(IIIII)V

    return-void
.end method

.method public movePsnSeatToSafeForRearSleep()V
    .locals 5

    .line 1400
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    sget v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->SLEEP_REST_SEAT_SAFE_PSN_HOR_POS:I

    sget v2, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->SLEEP_REST_SEAT_SAFE_PSN_VER_POS:I

    sget v3, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->SLEEP_REST_SEAT_SAFE_PSN_TILT_POS:I

    .line 1401
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->getPSeatLegPos()I

    move-result v4

    .line 1400
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setPsnAllPositions(IIII)V

    return-void
.end method

.method public onDrvLumbarControl(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyCode"
        }
    .end annotation

    const-string v0, "isSupportDrvLumbarKeySettings"

    .line 1727
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1728
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mDrvLumbarControlStrategy:Lcom/xiaopeng/carcontrol/viewmodel/cabin/DrvLumbarControlStrategy;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/DrvLumbarControlStrategy;->onDrvLumbarControl(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onDrvSeatAntiFatigueSwChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 1012
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->handleDrvSeatAntiFatigueSwChanged(Z)V

    return-void
.end method

.method public onDrvSeatLumberControlEnableChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 992
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->handleDrvLumbControlEnableChanged(Z)V

    return-void
.end method

.method public onDrvSeatMoveStateChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stop"
        }
    .end annotation

    .line 1002
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->handleDrvSeatMoveStChanged(Z)V

    return-void
.end method

.method public onEsbChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 987
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->handleEsbChanged(Z)V

    return-void
.end method

.method public onFollowedVehicleLostConfigChanged(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forceUpdate"
        }
    .end annotation

    .line 1182
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->isSupportEsbConfig()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1183
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->readFollowedVehicleLostConfig()Ljava/lang/String;

    move-result-object v0

    .line 1184
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFollowedVehicleLostConfigChanged to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    .line 1185
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mFollowedVehicleLostConfig:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1186
    :cond_0
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mFollowedVehicleLostConfig:Ljava/lang/String;

    .line 1188
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->isMainProcess()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1189
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->getEsbMode()Z

    move-result p1

    .line 1190
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resume saved esb mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->setEsbMode(Z)V

    .line 1194
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mFollowedVehicleLostConfig:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->handleEsbConfigChanged(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onMsmdSeatAntiFatigueStatusChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 1017
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->handleMsmdSeatAntiFatigueStatusChanged(I)V

    return-void
.end method

.method public onMsmdSeatLumbRelaxModeChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 1022
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->handleMsmdSeatLumbRelaxModeChanged(I)V

    return-void
.end method

.method public onMsmpSeatLumbRelaxModeChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 1027
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->handleMsmpSeatLumbRelaxModeChanged(I)V

    return-void
.end method

.method public onPsnSeatLumberControlEnableChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 997
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->handlePsnLumbControlEnableChanged(Z)V

    return-void
.end method

.method public onPsnSeatMoveStateChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stop"
        }
    .end annotation

    .line 1007
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->handlePsnSeatMoveStChanged(Z)V

    return-void
.end method

.method public onPsnSrsEnableChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 429
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->handlePsnSrsEnableChanged(Z)V

    .line 431
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "psn_srs_enable"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 434
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mPabRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPsnWelcomeModeChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 982
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->handlePsnWelcomeModeChanged(Z)V

    return-void
.end method

.method public onSecLeftBeltWarningStateChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 952
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->handleSecLeftBeltWarningChanged(Z)V

    return-void
.end method

.method public onSecMidBeltWarningStateChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 957
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->handleSecMidBeltWarningChanged(Z)V

    return-void
.end method

.method public onSecRightBeltWarningStateChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 962
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->handleSecRightBeltWarningChanged(Z)V

    return-void
.end method

.method public onTrdLeftBeltWarningStateChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 967
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->handleTrdLeftBeltWarningChanged(Z)V

    return-void
.end method

.method public onTrdMidBeltWarningStateChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 972
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->handleTrdMidBeltWarningChanged(Z)V

    return-void
.end method

.method public onTrdRightBeltWarningStateChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 977
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->handleTrdRightBeltWarningChanged(Z)V

    return-void
.end method

.method public onWelcomeModeChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 947
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->handleWelcomeModeChanged(Z)V

    return-void
.end method

.method public seatSaveOutMode()Z
    .locals 5

    .line 1377
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mScenarioController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController;->getCurrentUserScenario()Ljava/lang/String;

    move-result-object v0

    .line 1378
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mScenarioController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController;

    invoke-interface {v1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController;->getUserScenarioStatus(Ljava/lang/String;)I

    move-result v1

    .line 1379
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scenario:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "vipseat_mode"

    .line 1380
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "spacecapsule_mode_sleep"

    .line 1381
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "spacecapsule_mode_movie"

    .line 1382
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "meditation_mode"

    .line 1383
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "trailed_mode"

    .line 1384
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "5d_cinema_mode"

    .line 1385
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-nez v1, :cond_2

    .line 1387
    :cond_1
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->getSeatStatus()Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->Normal:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    if-ne v0, v1, :cond_2

    .line 1388
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipPsnSeatControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/space/VipPsnSeatControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipPsnSeatControl;->getSeatStatus()Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->Normal:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    if-ne v0, v1, :cond_2

    .line 1389
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->getSeatStatus()Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->Normal:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setBackBeltSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setBackBeltSw(Z)V

    return-void
.end method

.method public setBleDisconnectRequest(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "active"
        }
    .end annotation

    .line 1735
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->setBleDisconnectRequest(I)V

    return-void
.end method

.method public setDSeatCushionMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation

    .line 742
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setDSeatCushionMove(II)V

    return-void
.end method

.method public setDSeatCushionPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 479
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setDSeatCushionPos(I)V

    return-void
.end method

.method public setDSeatHorzMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation

    .line 722
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setDSeatHorzMove(II)V

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

    .line 439
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setDSeatHorzPos(I)V

    return-void
.end method

.method public setDSeatLegMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation

    .line 737
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setDSeatLegMove(II)V

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

    .line 469
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setDSeatLegPos(I)V

    return-void
.end method

.method public setDSeatLumbHorzMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation

    .line 747
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setDSeatLumbHorzMove(II)V

    return-void
.end method

.method public setDSeatLumbVerMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation

    .line 752
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setDSeatLumbVerMove(II)V

    return-void
.end method

.method public setDSeatTiltMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation

    .line 732
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setDSeatTiltMove(II)V

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

    .line 459
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setDSeatTiltPos(I)V

    return-void
.end method

.method public setDSeatVerMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation

    .line 727
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setDSeatVerMove(II)V

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

    .line 449
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setDSeatVerPos(I)V

    return-void
.end method

.method public setDriverAllPositionsToDomain()V
    .locals 15

    .line 912
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->isWelcomeModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 913
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getDrvSeatPosIdx()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getDrvSeatPos(I)[I

    move-result-object v0

    .line 914
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDriverAllPositionsToDomain index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getDrvSeatPosIdx()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 915
    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 916
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDriverAllPositionsToDomain request:1, saved seat position hor:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v5, v0, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",ver:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x1

    aget v6, v0, v5

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ",tilt:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v6, 0x2

    aget v7, v0, v6

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ",leg:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v7, 0x3

    aget v8, v0, v7

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ",cushion:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v8, v0, v2

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    iget-object v8, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    const/4 v9, 0x1

    aget v10, v0, v4

    aget v11, v0, v5

    aget v12, v0, v6

    aget v13, v0, v7

    aget v14, v0, v2

    invoke-interface/range {v8 .. v14}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setDriverAllPositions(IIIIII)V

    :cond_0
    return-void
.end method

.method public setDriverAllPositionsToMcu()V
    .locals 14

    .line 897
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->isWelcomeModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getDrvSeatPosIdx()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getDrvSeatPos(I)[I

    move-result-object v0

    .line 899
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDriverAllPositionsToMcu index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getDrvSeatPosIdx()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 900
    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 901
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDriverAllPositionsToMcu saved seat position hor:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v5, v0, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",ver:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x1

    aget v6, v0, v5

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ",tilt:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v6, 0x2

    aget v7, v0, v6

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ",leg:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v7, 0x3

    aget v8, v0, v7

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ",cushion:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v8, v0, v2

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    iget-object v8, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    aget v9, v0, v4

    aget v10, v0, v5

    aget v11, v0, v6

    aget v12, v0, v7

    aget v13, v0, v2

    invoke-interface/range {v8 .. v13}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setDriverAllPositionsToMcu(IIIII)V

    :cond_0
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

    .line 1915
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setDriverSeatAntiFatigueSw(Z)V

    return-void
.end method

.method public setDrvLumbControlSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1424
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setDriverSeatLumbControlSwitchEnable(Z)V

    return-void
.end method

.method public setDrvSeatLayFlat()V
    .locals 1

    .line 712
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setDrvSeatLayFlat()V

    return-void
.end method

.method public setDrvWelcomeModeActiveSt(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "active"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setDrvWelcomeModeActiveSt(Z)V

    return-void
.end method

.method public setEsbMode(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 357
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->isSupportEsbConfig()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 358
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mFollowedVehicleLostConfig:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 359
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Use new config, force set electric belt sw to true, and set SCU OTA tag with: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setEsbEnable(ZZ)V

    .line 362
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    invoke-interface {v0, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setScuOtaTagStatus(I)V

    goto :goto_3

    .line 364
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Use old config, set electric belt sw with param: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", and set SCU OTA tag with: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    if-eqz p1, :cond_3

    move v4, v3

    goto :goto_2

    :cond_3
    move v4, v1

    :goto_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setEsbEnable(Z)V

    .line 367
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    if-eqz p1, :cond_4

    move v1, v3

    :cond_4
    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setScuOtaTagStatus(I)V

    goto :goto_3

    .line 370
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setEsbEnable(Z)V

    .line 372
    :goto_3
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatBaseViewModel$u8k-FSnrieFy6nofvcZP7RKhfi8;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatBaseViewModel$u8k-FSnrieFy6nofvcZP7RKhfi8;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;Z)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setFollowedVehicleLostConfig(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .line 1201
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setFollowedVehicleLostConfig(Ljava/lang/String;)V

    return-void
.end method

.method public setLtSeatEasyEntryErrorCallBack(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "callback"
        }
    .end annotation

    .line 1817
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mLtEasyEnterErrorEvent:Ljava/lang/String;

    .line 1818
    iput-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mLtEasyEnterErrorCallback:Ljava/lang/String;

    return-void
.end method

.method public setLtSeatZeroGravErrorCallBack(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "callback"
        }
    .end annotation

    .line 1805
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mLtZeroGravErrorEvent:Ljava/lang/String;

    .line 1806
    iput-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mLtZeroGravErrorCallback:Ljava/lang/String;

    return-void
.end method

.method public setPSeatHorzMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation

    .line 757
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setPSeatHorzMove(II)V

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

    .line 490
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setPSeatHorzPos(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 492
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setPSeatLegMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation

    .line 772
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setPSeatLegMove(II)V

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

    .line 527
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setPSeatLegPos(I)V

    return-void
.end method

.method public setPSeatLumbHorzMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation

    .line 777
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setPSeatLumbHorzMove(II)V

    return-void
.end method

.method public setPSeatLumbVerMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation

    .line 782
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setPSeatLumbVerMove(II)V

    return-void
.end method

.method public setPSeatTiltMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation

    .line 767
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setPSeatTiltMove(II)V

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

    .line 514
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setPSeatTiltPos(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 516
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setPSeatVerMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation

    .line 762
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setPSeatVerMove(II)V

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

    .line 503
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setPSeatVerPos(I)V

    return-void
.end method

.method public setPsnLumbControlSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1434
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setPassengerSeatLumbControlSwitchEnable(Z)V

    return-void
.end method

.method public setPsnSeatLayFlat()V
    .locals 1

    .line 717
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setPsnSeatLayFlat()V

    return-void
.end method

.method public setPsnSrsEnable(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 401
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setPsnSrsEnable(Z)V

    .line 402
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mPabRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 403
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mPabRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setPsnWelcomeMode(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const/4 v0, 0x1

    .line 253
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->setPsnWelcomeMode(ZZ)V

    return-void
.end method

.method public setPsnWelcomeMode(ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "needSave"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPsnWelcomeMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 259
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setPsnSeatWelcomeMode(ZZ)V

    const-string p2, "isSupportAirSuspension"

    .line 260
    invoke-static {p2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "isSupportAsWelcomeWithSeat"

    .line 261
    invoke-static {p2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->isWelcomeModeEnabled()Z

    move-result p2

    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->setAsWelcomeMode(ZZ)V

    :cond_0
    return-void
.end method

.method public setPsnWelcomeModeActiveSt(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "active"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setPsnWelcomeModeActiveSt(Z)V

    return-void
.end method

.method public setRLSeaHorzMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation

    .line 792
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setRLSeaHorzMove(II)V

    return-void
.end method

.method public setRLSeatFold(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fold"
        }
    .end annotation

    .line 692
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setRLSeatFold(Z)V

    return-void
.end method

.method public setRLSeatHeadHorPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 642
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setRLSeatHeadHorPos(I)V

    return-void
.end method

.method public setRLSeatHeadRestHorzMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation

    .line 817
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setRLSeatHeadRestHorzMove(II)V

    return-void
.end method

.method public setRLSeatHeadRestVerMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation

    .line 822
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setRLSeatHeadRestVerMove(II)V

    return-void
.end method

.method public setRLSeatHeadVerPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 632
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setRLSeatHeadVerPos(I)V

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

    .line 617
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setRLSeatHorPos(I)V

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

    .line 627
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setRLSeatLegHorPos(I)V

    return-void
.end method

.method public setRLSeatLegMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation

    .line 807
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setRLSeatLegMove(II)V

    return-void
.end method

.method public setRLSeatLegPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 592
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setRLSeatLegPos(I)V

    return-void
.end method

.method public setRLSeatLegVerMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation

    .line 812
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setRLSeatLegVerMove(II)V

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

    .line 622
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setRLSeatLegVerPos(I)V

    return-void
.end method

.method public setRLSeatLumbHorzMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation

    .line 797
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setRLSeatLumbHorzMove(II)V

    return-void
.end method

.method public setRLSeatLumbVerMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation

    .line 802
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setRLSeatLumbVerMove(II)V

    return-void
.end method

.method public setRLSeatStopMove()V
    .locals 1

    .line 697
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setRLSeatStopMove()V

    return-void
.end method

.method public setRLSeatTiltMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation

    .line 787
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setRLSeatTiltMove(II)V

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

    .line 612
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setRLSeatTiltPos(I)V

    return-void
.end method

.method public setRRSeaHorzMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation

    .line 832
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setRRSeaHorzMove(II)V

    return-void
.end method

.method public setRRSeatFold(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fold"
        }
    .end annotation

    .line 702
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setRRSeatFold(Z)V

    return-void
.end method

.method public setRRSeatHeadHorPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 682
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setRRSeatHeadHorPos(I)V

    return-void
.end method

.method public setRRSeatHeadRestHorzMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation

    .line 857
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setRRSeatHeadRestHorzMove(II)V

    return-void
.end method

.method public setRRSeatHeadRestVerMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation

    .line 862
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setRRSeatHeadRestVerMove(II)V

    return-void
.end method

.method public setRRSeatHeadVerPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 672
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setRRSeatHeadVerPos(I)V

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

    .line 657
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setRRSeatHorPos(I)V

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

    .line 667
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setRRSeatLegHorPos(I)V

    return-void
.end method

.method public setRRSeatLegMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation

    .line 837
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setRRSeatLegMove(II)V

    return-void
.end method

.method public setRRSeatLegPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 602
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setRRSeatLegPos(I)V

    return-void
.end method

.method public setRRSeatLegVerMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation

    .line 852
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setRRSeatLegVerMove(II)V

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

    .line 662
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setRRSeatLegVerPos(I)V

    return-void
.end method

.method public setRRSeatLumbHorzMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation

    .line 842
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setRRSeatLumbHorzMove(II)V

    return-void
.end method

.method public setRRSeatLumbVerMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation

    .line 847
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setRRSeatLumbVerMove(II)V

    return-void
.end method

.method public setRRSeatStopMove()V
    .locals 1

    .line 707
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setRRSeatStopMove()V

    return-void
.end method

.method public setRRSeatTiltMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation

    .line 827
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setRRSeatTiltMove(II)V

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

    .line 652
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setRRSeatTiltPos(I)V

    return-void
.end method

.method public setRearLeaveRemindWarningSwitch(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 1925
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->setRemindWarningSwitch(Z)V

    return-void
.end method

.method public setRearSeatBeltWarningPopUpSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1800
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->setRearSeatBeltWarningPopUpSw(Z)V

    return-void
.end method

.method public setRearSeatWelcomeMode(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const/4 v0, 0x1

    .line 284
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->setRearSeatWelcomeMode(ZZ)V

    return-void
.end method

.method public setRearSeatWelcomeMode(ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "needSave"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setRearSeatWelcomeMode(ZZ)V

    return-void
.end method

.method public setRtSeatEasyEntryErrorCallBack(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "callback"
        }
    .end annotation

    .line 1823
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mRtEasyEnterErrorEvent:Ljava/lang/String;

    .line 1824
    iput-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mRtEasyEnterErrorCallback:Ljava/lang/String;

    return-void
.end method

.method public setRtSeatZeroGravErrorCallBack(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "callback"
        }
    .end annotation

    .line 1811
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mRtZeroGravErrorEvent:Ljava/lang/String;

    .line 1812
    iput-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mRtZeroGravErrorCallback:Ljava/lang/String;

    return-void
.end method

.method public setSeatMenuNotShowKeepTime(ZJ)V
    .locals 1
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

    .line 537
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setSeatMenuNotShowKeepTime(ZJ)V

    return-void
.end method

.method public setSeatUiCtrlResume(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resume"
        }
    .end annotation

    .line 294
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mIsSeatUiCtrlResume:Z

    return-void
.end method

.method public setSecRowLeftSeatBeltWarning(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1740
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->setSecRowLeftSeatBeltWarning(Z)V

    return-void
.end method

.method public setSecRowLtSeatEZ(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eZStatus"
        }
    .end annotation

    .line 1444
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setSecRowLtSeatEZ(I)V

    return-void
.end method

.method public setSecRowLtSeatZeroGrav(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zeroGravStatus"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1454
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->setSecRowLtSeatZeroGrav(II)V

    return-void
.end method

.method public setSecRowLtSeatZeroGrav(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "zeroGravStatus",
            "screenId"
        }
    .end annotation

    .line 1465
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->getSecRowLTFuctionStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1466
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_zero_ready:I

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(II)V

    return-void

    .line 1469
    :cond_0
    iput p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mRlZeroToastScreenId:I

    .line 1470
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mRlZeroFunctionActive:Z

    .line 1471
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mRlZeroFuncRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1472
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mRlZeroFuncRunnable:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->zeroRunnableDelay:J

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1473
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {p2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setSecRowLtSeatZeroGrav(I)V

    return-void
.end method

.method public setSecRowLtSeatZeroGrav(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1492
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->setSecRowLtSeatZeroGrav(ZI)V

    return-void
.end method

.method public setSecRowLtSeatZeroGrav(ZI)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "screenId"
        }
    .end annotation

    .line 1503
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->getSecRowLTFuctionStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1504
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_zero_ready:I

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(II)V

    return-void

    .line 1507
    :cond_0
    iput p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mRlZeroToastScreenId:I

    .line 1508
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    :goto_0
    invoke-interface {p2, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setSecRowLtSeatZeroGrav(I)V

    .line 1509
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mRlZeroFunctionActive:Z

    .line 1510
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mRlZeroFuncRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1511
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mRlZeroFuncRunnable:Ljava/lang/Runnable;

    iget-wide v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->zeroRunnableDelay:J

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setSecRowMiddleSeatBeltWarning(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1750
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->setSecRowMiddleSeatBeltWarning(Z)V

    return-void
.end method

.method public setSecRowRightSeatBeltWarning(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1760
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->setSecRowRightSeatBeltWarning(Z)V

    return-void
.end method

.method public setSecRowRtSeatEZ(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eZStatus"
        }
    .end annotation

    .line 1449
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setSecRowRtSeatEZ(I)V

    return-void
.end method

.method public setSecRowRtSeatZeroGrav(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zeroGravStatus"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1459
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->setSecRowRtSeatZeroGrav(II)V

    return-void
.end method

.method public setSecRowRtSeatZeroGrav(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "zeroGravStatus",
            "screenId"
        }
    .end annotation

    .line 1479
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->getSecRowRTFuctionStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1480
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_zero_ready:I

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(II)V

    return-void

    .line 1483
    :cond_0
    iput p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mRrZeroToastScreenId:I

    .line 1484
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mRrZeroFunctionActive:Z

    .line 1485
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mRrZeroFuncRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1486
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mRrZeroFuncRunnable:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->zeroRunnableDelay:J

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1487
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {p2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setSecRowRtSeatZeroGrav(I)V

    return-void
.end method

.method public setSecRowRtSeatZeroGrav(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1497
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->setSecRowRtSeatZeroGrav(ZI)V

    return-void
.end method

.method public setSecRowRtSeatZeroGrav(ZI)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "screenId"
        }
    .end annotation

    .line 1517
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->getSecRowRTFuctionStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1518
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_zero_ready:I

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(II)V

    return-void

    .line 1521
    :cond_0
    iput p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mRrZeroToastScreenId:I

    .line 1522
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    :goto_0
    invoke-interface {p2, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setSecRowRtSeatZeroGrav(I)V

    .line 1523
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mRrZeroFunctionActive:Z

    .line 1524
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mRrZeroFuncRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1525
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mRrZeroFuncRunnable:Ljava/lang/Runnable;

    iget-wide v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->zeroRunnableDelay:J

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setTlSeatFolErrorCallBack(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "callback"
        }
    .end annotation

    .line 1829
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mTlFoldErrorEvent:Ljava/lang/String;

    .line 1830
    iput-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mTlFoldErrorCallback:Ljava/lang/String;

    return-void
.end method

.method public setTrSeatFolErrorCallBack(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "callback"
        }
    .end annotation

    .line 1835
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mTrFoldErrorEvent:Ljava/lang/String;

    .line 1836
    iput-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mTrFoldErrorCallback:Ljava/lang/String;

    return-void
.end method

.method public setTrdRowLeftSeatBeltWarning(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1770
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->setTrdRowLeftSeatBeltWarning(Z)V

    return-void
.end method

.method public setTrdRowLeftSeatHeadVerMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation

    .line 877
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setTrdRowLeftSeatHeadVerMove(II)V

    return-void
.end method

.method public setTrdRowLeftSeatTiltMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation

    .line 867
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setTrdRowLeftSeatTiltMove(II)V

    return-void
.end method

.method public setTrdRowLtSeatFol(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trdRowLtSeatFolStatus"
        }
    .end annotation

    .line 1542
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->getTrdRowSeatStowState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1543
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_stow_ing:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void

    .line 1546
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setTrdRowLtSeatFol(I)V

    return-void
.end method

.method public setTrdRowLtSeatHeadVerticalPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1678
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->getTrdRowSeatStowState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1679
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_stow_ing:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void

    .line 1682
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setTrdRowLtSeatHeadVerticalPos(I)V

    return-void
.end method

.method public setTrdRowLtSeatTiltPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1660
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->getTrdRowSeatStowState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1661
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_stow_ing:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void

    .line 1664
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setTrdRowLtSeatTiltPos(I)V

    return-void
.end method

.method public setTrdRowMidSeatHeadVerMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation

    .line 887
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setTrdRowMidSeatHeadVerMove(II)V

    return-void
.end method

.method public setTrdRowMidSeatHeadVerticalPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1696
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->getTrdRowSeatStowState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1697
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_stow_ing:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void

    .line 1700
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setTrdRowMidSeatHeadVerticalPos(I)V

    return-void
.end method

.method public setTrdRowMiddleSeatBeltWarning(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1780
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->setTrdRowMiddleSeatBeltWarning(Z)V

    return-void
.end method

.method public setTrdRowRightSeatBeltWarning(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1790
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->setTrdRowRightSeatBeltWarning(Z)V

    return-void
.end method

.method public setTrdRowRightSeatHeadVerMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation

    .line 882
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setTrdRowRightSeatHeadVerMove(II)V

    return-void
.end method

.method public setTrdRowRightSeatTiltMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation

    .line 872
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setTrdRowRightSeatTiltMove(II)V

    return-void
.end method

.method public setTrdRowRtSeatFol(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trdRowRtSeatFolStatus"
        }
    .end annotation

    .line 1551
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->getTrdRowSeatStowState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1552
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_stow_ing:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void

    .line 1555
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setTrdRowRtSeatFol(I)V

    return-void
.end method

.method public setTrdRowRtSeatHeadVerticalPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1687
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->getTrdRowSeatStowState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1688
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_stow_ing:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void

    .line 1691
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setTrdRowRtSeatHeadVerticalPos(I)V

    return-void
.end method

.method public setTrdRowRtSeatTiltPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1669
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->getTrdRowSeatStowState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1670
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_adjust_stow_ing:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void

    .line 1673
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setTrdRowRtSeatTiltPos(I)V

    return-void
.end method

.method public setTrdRowSeatStow(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stowStatus"
        }
    .end annotation

    .line 1537
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setTrdRowSeatStow(I)V

    return-void
.end method

.method public setTrdRowSeatStowErrorCallBack(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "callback"
        }
    .end annotation

    .line 1841
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mTrdRowStowErrorEvent:Ljava/lang/String;

    .line 1842
    iput-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mTrdRowStowErrorCallback:Ljava/lang/String;

    return-void
.end method

.method public setWelcomeMode(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const/4 v0, 0x1

    .line 224
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->setWelcomeMode(ZZ)V

    return-void
.end method

.method public setWelcomeMode(ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "needSave"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDrvWelcomeMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "isSupportMcuSeatWelcome"

    .line 230
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->setSeatWelcomeMode(ZZ)V

    goto :goto_0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setSeatWelcomeMode(ZZ)V

    :goto_0
    const-string p2, "isSupportAirSuspension"

    .line 235
    invoke-static {p2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "isSupportAsWelcomeWithSeat"

    .line 236
    invoke-static {p2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 237
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->isPsnWelcomeEnabled()Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->setAsWelcomeMode(ZZ)V

    :cond_1
    return-void
.end method

.method public showPsnSrsCloseDialog()V
    .locals 3

    .line 413
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->TAG:Ljava/lang/String;

    const-string v1, "showMicrophoneConfirmDialog"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mPsnSrsConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    if-nez v0, :cond_0

    .line 415
    new-instance v0, Lcom/xiaopeng/xui/app/XDialog;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$style;->XDialogView:I

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mPsnSrsConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    .line 416
    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->psn_srs_tv:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setTitle(I)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->psn_srs_dialog_content:I

    .line 417
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setMessage(I)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->btn_confirm:I

    new-instance v2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatBaseViewModel$RIZLxG3PghiZRgOLoyrTy_m4-sw;

    invoke-direct {v2, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatBaseViewModel$RIZLxG3PghiZRgOLoyrTy_m4-sw;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;)V

    .line 418
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(ILcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->btn_cancel:I

    .line 419
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 420
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mPsnSrsConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setSystemDialog(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mPsnSrsConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    if-eqz v0, :cond_1

    .line 423
    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->show()V

    :cond_1
    return-void
.end method

.method public stopCapsuleSeatMove()V
    .locals 1

    .line 1309
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->stopDrvSeatMove()V

    .line 1310
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->stopPsnSeatMove()V

    return-void
.end method

.method public stopDrvSeatMove()V
    .locals 1

    .line 1299
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->stopDrvSeatMove()V

    return-void
.end method

.method public stopPsnSeatMove()V
    .locals 1

    .line 1304
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->stopPsnSeatMove()V

    return-void
.end method
