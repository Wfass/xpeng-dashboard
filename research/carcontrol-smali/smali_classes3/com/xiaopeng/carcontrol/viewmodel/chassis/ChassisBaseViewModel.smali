.class public abstract Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;
.super Ljava/lang/Object;
.source "ChassisBaseViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/chassis/IChassisViewModel;
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController$Callback;
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/IEpsController$Callback;
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController$Callback;


# static fields
.field protected static final TAG:Ljava/lang/String; = "ChassisViewModel"


# instance fields
.field private drivemode:I

.field final mBcmCallBack:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController$Callback;

.field mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

.field final mCdcCallback:Lcom/xiaopeng/carcontrol/carmanager/controller/ICdcController$Callback;

.field mCdcController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICdcController;

.field private mContentObserver:Landroid/database/ContentObserver;

.field mEpsController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEpsController;

.field mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

.field private mHandler:Landroid/os/Handler;

.field protected mInTtmRunning:Z

.field private final mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

.field mTpmsController:Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController;

.field private final mTtmControlCloseRunnable:Ljava/lang/Runnable;

.field private final mTtmControlOpenRunnable:Ljava/lang/Runnable;

.field protected mTtmHook:I

.field private final mTtmResetOpenRunnable:Ljava/lang/Runnable;

.field private final mTtmResetResultRunnable:Ljava/lang/Runnable;

.field mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

.field mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;


# direct methods
.method constructor <init>()V
    .locals 3

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mHandler:Landroid/os/Handler;

    .line 62
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel$1;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mBcmCallBack:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController$Callback;

    .line 139
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel$2;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mCdcCallback:Lcom/xiaopeng/carcontrol/carmanager/controller/ICdcController$Callback;

    .line 146
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/-$$Lambda$ChassisBaseViewModel$4vWmnf6aWLDlB-xSpgi6FTbIR04;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/-$$Lambda$ChassisBaseViewModel$4vWmnf6aWLDlB-xSpgi6FTbIR04;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mTtmControlOpenRunnable:Ljava/lang/Runnable;

    .line 157
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/-$$Lambda$ChassisBaseViewModel$k64y3Yr8ofaynFa0uqaNO7VxeCk;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/-$$Lambda$ChassisBaseViewModel$k64y3Yr8ofaynFa0uqaNO7VxeCk;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mTtmControlCloseRunnable:Ljava/lang/Runnable;

    .line 168
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/-$$Lambda$ChassisBaseViewModel$OTzm27myScamURTAXC_f6VtmsWE;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/-$$Lambda$ChassisBaseViewModel$OTzm27myScamURTAXC_f6VtmsWE;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mTtmResetOpenRunnable:Ljava/lang/Runnable;

    .line 174
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/-$$Lambda$ChassisBaseViewModel$AZA6h6KfUiD9EBXVap9C36RVIXI;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/-$$Lambda$ChassisBaseViewModel$AZA6h6KfUiD9EBXVap9C36RVIXI;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mTtmResetResultRunnable:Ljava/lang/Runnable;

    .line 229
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel$4;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->getHandler(I)Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel$4;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mContentObserver:Landroid/database/ContentObserver;

    .line 188
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v0

    const-string/jumbo v2, "xp_esp"

    .line 191
    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    const-string/jumbo v2, "xp_eps"

    .line 193
    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IEpsController;

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mEpsController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEpsController;

    const-string/jumbo v2, "xp_tpms"

    .line 195
    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController;

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mTpmsController:Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController;

    const-string/jumbo v2, "xp_vcu"

    .line 198
    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    const-string/jumbo v2, "xp_bcm"

    .line 201
    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    const-string/jumbo v2, "xp_msm"

    .line 204
    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    const-string/jumbo v2, "xp_xpu"

    .line 207
    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    const-string/jumbo v2, "xp_cdc"

    .line 210
    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/carmanager/controller/ICdcController;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mCdcController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICdcController;

    .line 212
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mInTtmRunning:Z

    .line 214
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getDriveMode()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->drivemode:I

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel$3;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;)V

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->registerCallback(Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->drivemode:I

    return p0
.end method

.method static synthetic access$002(Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;I)I
    .locals 0

    .line 42
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->drivemode:I

    return p1
.end method

.method private getAsHeightInfo(I)I
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    const-string v0, "isSupportAirSuspension"

    .line 736
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 740
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->getAsHeightFaultStatus()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    move v0, v3

    .line 744
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->isEasyLoadingEnable()Z

    move-result v2

    const/4 v4, 0x3

    if-eqz v2, :cond_1

    move v0, v4

    .line 748
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->getEngineeringModeStatus()I

    move-result v2

    const/4 v5, 0x5

    const/4 v6, 0x6

    if-eq v2, v1, :cond_5

    if-eq v2, v3, :cond_4

    if-eq v2, v4, :cond_3

    if-eq v2, v6, :cond_2

    goto :goto_0

    :cond_2
    move v0, v6

    goto :goto_0

    :cond_3
    move v0, v5

    goto :goto_0

    :cond_4
    const/4 v0, 0x7

    goto :goto_0

    :cond_5
    const/4 v0, 0x4

    .line 764
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->getAsLockModeStatus()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->getAsHoistModeSwitchStatus()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    const/16 v0, 0x8

    :cond_7
    const-string v2, "isSupportXpu"

    .line 768
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 769
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getAsTargetMinHeightRequest()I

    move-result v2

    .line 770
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getAsTargetMaxHeightRequest()I

    move-result v3

    .line 771
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " mAsMinTarget is : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", mAsMaxTarget is "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v10, "ChassisViewModel"

    invoke-static {v10, v7}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_8

    if-eqz v3, :cond_a

    .line 774
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v7, p1, 0x1

    if-lt v7, v3, :cond_9

    if-le v7, v2, :cond_a

    :cond_9
    const/16 v0, 0x9

    :cond_a
    if-ne p1, v6, :cond_b

    .line 782
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getCarSpeed()F

    move-result v2

    const/high16 v3, 0x40400000    # 3.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_b

    const/16 v0, 0xa

    .line 788
    :cond_b
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getPowerResponseMode()I

    move-result v2

    if-eq v2, v4, :cond_c

    if-ne v2, v5, :cond_d

    :cond_c
    if-ne p1, v1, :cond_d

    const/16 v0, 0xc

    :cond_d
    return v0
.end method

.method private isAvhPrepared()Z
    .locals 6

    .line 688
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->isDrvDoorClosed()Z

    move-result v0

    .line 689
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->isEvSysReady()Z

    move-result v1

    .line 690
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->isDrvBeltBuckled()Z

    move-result v2

    .line 691
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDoorClose:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isEvSysReady:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isBeltBuckled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ChassisViewModel"

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const/4 v5, 0x1

    :cond_0
    return v5
.end method

.method static synthetic lambda$saveAsLocationInfo$7(I)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "asHeight"
        }
    .end annotation

    const-string v0, "lat"

    const-string v1, "lon"

    const-string v2, "ChassisViewModel"

    .line 850
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "com.xiaopeng.montecarlo.SuspensionService"

    .line 851
    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "getCurrentLocation"

    .line 852
    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const/4 v5, 0x0

    .line 854
    :try_start_0
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 855
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCurrentLocation, location: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, v5}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_0

    .line 858
    :try_start_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 859
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 860
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v9

    .line 861
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    .line 862
    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v6, "saveSuspensionUserInfo"

    .line 863
    invoke-virtual {v4, v6}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    .line 864
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 865
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "level"

    .line 866
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 867
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 869
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveSuspensionUserInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v5}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 873
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentLocation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v5}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void
.end method

.method private showErrorToast(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resId"
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 955
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    :cond_0
    return-void
.end method

.method private steeringEpsErrorCodeToToastRes(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorCode"
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    const/4 p1, -0x1

    goto :goto_0

    .line 471
    :pswitch_0
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->drive_steer_eps_unable_with_drivemode_race:I

    goto :goto_0

    .line 468
    :pswitch_1
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->drive_steer_eps_unable_with_drivemode_xpower:I

    goto :goto_0

    .line 474
    :pswitch_2
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->drive_steer_eps_unable_with_drivemode_geek:I

    goto :goto_0

    .line 477
    :pswitch_3
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->drive_steer_eps_fault:I

    goto :goto_0

    .line 484
    :pswitch_4
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->drive_steer_eps_unable_with_running:I

    goto :goto_0

    .line 480
    :pswitch_5
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->drive_steer_eps_unable_with_xpilot:I

    :goto_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private translateToInfoJsonString(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "msg"
        }
    .end annotation

    .line 497
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "Code"

    .line 498
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "Msg"

    .line 499
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 500
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 502
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const-string p1, ""

    :goto_0
    return-object p1
.end method


# virtual methods
.method public asErrorCodeToToastRes(IZ)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "errorCode",
            "isAsHeight"
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    const/4 p1, -0x1

    goto :goto_0

    .line 832
    :pswitch_0
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->drive_as_height_unable_notify_power_response:I

    goto :goto_0

    .line 829
    :pswitch_1
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->drive_as_height_unable_notify_drive_mode_geek:I

    goto :goto_0

    .line 826
    :pswitch_2
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->drive_as_driving_not_adjust_tip:I

    goto :goto_0

    .line 823
    :pswitch_3
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->drive_as_xpilot_tip:I

    goto :goto_0

    .line 820
    :pswitch_4
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->vehicle_maintenance_as_lock:I

    goto :goto_0

    .line 811
    :pswitch_5
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->drive_as_exit_transport_mode_tip:I

    goto :goto_0

    .line 817
    :pswitch_6
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->drive_as_camping_mode_tip:I

    goto :goto_0

    .line 814
    :pswitch_7
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->drive_as_trailer_mode_tip:I

    goto :goto_0

    .line 808
    :pswitch_8
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->drive_as_maintenance_tip:I

    goto :goto_0

    .line 805
    :pswitch_9
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->drive_as_exit_easy_load_tips:I

    goto :goto_0

    :pswitch_a
    if-eqz p2, :cond_0

    .line 802
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->drive_as_height_fault:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->drive_as_soft_fault:I

    :goto_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
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

.method public calibrateTyrePressure()V
    .locals 3

    .line 540
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mTpmsController:Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController;->calibrateTyrePressure()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    const-string v2, "ChassisViewModel"

    .line 542
    invoke-static {v2, v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public defaultAsHeightInfoCodeAndNotifyMsg()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const-string v1, ""

    .line 839
    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->translateToInfoJsonString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public defaultAsSoftInfoCodeAndNotifyMsg()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const-string v1, ""

    .line 960
    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->translateToInfoJsonString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public defaultBpfInfoCodeAndNotifyMsg()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const-string v1, ""

    .line 1217
    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->translateToInfoJsonString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public defaultSteeringEpsInfoCodeAndNotifyMsg()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const-string v1, ""

    .line 491
    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->translateToInfoJsonString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getASFaultWarning()I
    .locals 1

    .line 1097
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getASFaultWarning()I

    move-result v0

    return v0
.end method

.method public getAirSuspensionHeightMode()I
    .locals 1

    .line 844
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getAirSuspensionHeight()I

    move-result v0

    return v0
.end method

.method public getAirSuspensionRepairMode()Z
    .locals 1

    .line 994
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getAirSuspensionRepairMode()Z

    move-result v0

    return v0
.end method

.method public getAirSuspensionSoftMode()I
    .locals 1

    .line 964
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getAirSuspensionSoft()I

    move-result v0

    return v0
.end method

.method public getApbSystemStatus()I
    .locals 1

    .line 1044
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->getApbSystemStatus()I

    move-result v0

    return v0
.end method

.method public getAsAutoLevelingResult()I
    .locals 1

    .line 1019
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getAsAutoLevelingResult()I

    move-result v0

    return v0
.end method

.method public getAsCampingMode()Z
    .locals 1

    .line 1014
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getAsCampingModeSwitch()Z

    move-result v0

    return v0
.end method

.method public getAsCustomerModeFlagSwitchStatus()Z
    .locals 1

    .line 1054
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getCustomerModeFlag()Z

    move-result v0

    return v0
.end method

.method public getAsFaultStatus()Z
    .locals 1

    .line 1079
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->getAsHeightFaultStatus()Z

    move-result v0

    return v0
.end method

.method public getAsHeightChangingStatus()Z
    .locals 1

    .line 1024
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getAsHeightChangingStatus()Z

    move-result v0

    return v0
.end method

.method public getAsHeightFaultStatus()Z
    .locals 2

    .line 1084
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getASFaultWarning()I

    move-result v0

    .line 1085
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getAsRedLampFault()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

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

.method public getAsHoistModeSwitchStatus()Z
    .locals 1

    .line 1034
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getAsHoistModeSwitchStatus()Z

    move-result v0

    return v0
.end method

.method public getAsLocationControlSw()Z
    .locals 1

    .line 900
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getAsLocationControlSw()Z

    move-result v0

    return v0
.end method

.method public getAsLocationSw()Z
    .locals 1

    .line 890
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getAsLocationSw()Z

    move-result v0

    return v0
.end method

.method public getAsLockModeStatus()Z
    .locals 2

    .line 1029
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getAsLockModeStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getAsRequestEspState()I
    .locals 1

    .line 1059
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getAsRequestEspState()I

    move-result v0

    return v0
.end method

.method public getAsSoftFaultStatus()Z
    .locals 2

    .line 1092
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getAsYellowLampFaultForCdc()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getASFaultWarning()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

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

.method public getAsSoftInfo()I
    .locals 5

    const-string v0, "isSupportAirSuspension"

    .line 923
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 927
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->getAsSoftFaultStatus()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    move v0, v3

    .line 931
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->getEngineeringModeStatus()I

    move-result v2

    const/4 v4, 0x6

    if-eq v2, v1, :cond_4

    if-eq v2, v3, :cond_3

    const/4 v1, 0x3

    if-eq v2, v1, :cond_2

    if-eq v2, v4, :cond_1

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    goto :goto_0

    :cond_3
    const/4 v0, 0x7

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    .line 947
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->getAsLockModeStatus()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->getAsHoistModeSwitchStatus()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    const/16 v0, 0x8

    :cond_6
    return v0
.end method

.method public getAvhFault()Z
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->getAvhFault()Z

    move-result v0

    return v0
.end method

.method public getAvhForUI()Z
    .locals 5

    .line 357
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->getAvhFault()Z

    move-result v0

    .line 358
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->isAvhPrepared()Z

    move-result v1

    .line 359
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAvhForUI, avhFault: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", avhPrepared: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ChassisViewModel"

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_0

    return v4

    :cond_0
    if-eqz v1, :cond_3

    .line 364
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->getAvh()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->getAvh()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    :cond_1
    move v4, v1

    :cond_2
    return v4

    .line 366
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->getAvhSw()Z

    move-result v0

    return v0
.end method

.method public getAvhSw()Z
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->getAvhSw()Z

    move-result v0

    return v0
.end method

.method public getCdcMode()I
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mCdcController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICdcController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICdcController;->getCdcMode()I

    move-result v0

    return v0
.end method

.method public getCdcuTrailerModeStatus()Z
    .locals 1

    .line 1172
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getTrailerModeStatus()Z

    move-result v0

    return v0
.end method

.method public getDtcFaultStatus()Z
    .locals 1

    .line 1177
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->getDtcFaultStatus()Z

    move-result v0

    return v0
.end method

.method public getEbw()Z
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->isEbwEnabled()Z

    move-result v0

    return v0
.end method

.method public getEngineeringModeStatus()I
    .locals 1

    .line 1004
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getEngineeringModeStatus()I

    move-result v0

    return v0
.end method

.method public getEpsWarningState()Z
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->getEpsWarningState()Z

    move-result v0

    return v0
.end method

.method public getEsp()I
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->getEsp()I

    move-result v0

    return v0
.end method

.method public getEspBpfMode()I
    .locals 1

    .line 1230
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->getEspBpfMode()I

    move-result v0

    return v0
.end method

.method public getEspBpfModeInfo()I
    .locals 1

    const-string v0, "isSupportEspBpf"

    .line 1222
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getEspCstSw()Z
    .locals 1

    .line 1202
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->getEspCstSw()Z

    move-result v0

    return v0
.end method

.method public getEspFault()Z
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->getEspFault()Z

    move-result v0

    return v0
.end method

.method public getEspForUI()Z
    .locals 6

    .line 309
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->getEspFault()Z

    move-result v0

    .line 310
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->isEvSysReady()Z

    move-result v1

    .line 311
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    invoke-interface {v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->getEsp()I

    move-result v2

    .line 312
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    invoke-interface {v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->getEspSw()Z

    move-result v3

    .line 313
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getEspForUI: esp_fault="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", system_ready="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", esp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", espsw="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ChassisViewModel"

    invoke-static {v5, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    return v4

    :cond_0
    if-eqz v1, :cond_5

    const-string v0, "isNewEspArch"

    .line 318
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v2, v1, :cond_1

    const/4 v0, 0x2

    if-eq v2, v0, :cond_1

    const/4 v0, 0x5

    if-ne v2, v0, :cond_2

    :cond_1
    move v4, v1

    :cond_2
    return v4

    :cond_3
    const/4 v0, 0x4

    if-ne v2, v0, :cond_4

    move v4, v1

    :cond_4
    return v4

    :cond_5
    return v3
.end method

.method public getEspSw()Z
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->getEspSw()Z

    move-result v0

    return v0
.end method

.method public getHdc()Z
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->getHdc()Z

    move-result v0

    return v0
.end method

.method public getHdcFault()Z
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->getHdcFault()Z

    move-result v0

    return v0
.end method

.method public getSteeringAngle()F
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mEpsController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEpsController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEpsController;->getSteeringAngle()F

    move-result v0

    return v0
.end method

.method public getSteeringEps()I
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mEpsController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEpsController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEpsController;->getSteeringEps()I

    move-result v0

    return v0
.end method

.method public getSteeringEpsInfo()I
    .locals 6

    .line 428
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getDriveMode()I

    move-result v0

    const/16 v1, 0xd

    const/4 v2, 0x5

    const/4 v3, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    .line 438
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->getEpsWarningState()Z

    move-result v1

    const/4 v4, 0x4

    if-eqz v1, :cond_2

    move v0, v4

    .line 442
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getCngpModeStatus()I

    move-result v1

    const/4 v5, 0x3

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x6

    if-eq v1, v2, :cond_3

    if-eq v1, v3, :cond_3

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3

    const/16 v2, 0x9

    if-ne v1, v2, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 453
    :cond_4
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getCarSpeed()F

    move-result v1

    const-string v2, "getEpsSpdThreshold"

    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getFloat(Ljava/lang/String;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    const/4 v0, 0x2

    .line 457
    :cond_5
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->getTorsionBarTorque()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const-string v2, "getEpsTorsionBarThreshold"

    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getFloat(Ljava/lang/String;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    goto :goto_1

    :cond_6
    move v5, v0

    :goto_1
    return v5
.end method

.method public getTorsionBarTorque()F
    .locals 1

    const-string v0, "isSupportEpsTorque"

    .line 581
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mEpsController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEpsController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEpsController;->getTorsionBarTorque()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTpmsCalibrateState()I
    .locals 1

    .line 534
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mTpmsController:Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController;->getTpmsCalibrateState()I

    move-result v0

    return v0
.end method

.method public getTpmsTemperature(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 558
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mTpmsController:Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController;->getTpmsTemperature()[I

    move-result-object v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 560
    aget p1, v0, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getTrailerModeStatus()Z
    .locals 2

    .line 1167
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getEngineeringModeStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTsmFaultStatus()Z
    .locals 1

    .line 1064
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->getTsmFaultStatus()Z

    move-result v0

    return v0
.end method

.method public getTtmDenormalizeStatus()Z
    .locals 2

    .line 1187
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getTtmDenormalizeStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getTtmHookMotorStatus()I
    .locals 1

    .line 1192
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getTtmHookMotorStatus()I

    move-result v0

    return v0
.end method

.method public getTtmLampConnectStatus()Z
    .locals 2

    .line 1182
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getTtmLampConnectStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getTtmSwitch()I
    .locals 1

    .line 1113
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getTrailerHitchSwitchStatus()I

    move-result v0

    return v0
.end method

.method public getTtmSwitchStatusForUI()I
    .locals 3

    .line 1130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTtmSwitchStatusForUI, mTtmHook: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mTtmHook:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChassisViewModel"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1131
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getTtmSystemError()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 1134
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getTtmHookMotorStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x5

    return v0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x4

    return v0

    .line 1140
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getTrailerHitchSwitchStatus()I

    move-result v0

    return v0
.end method

.method public getTtmSystemError()Z
    .locals 1

    .line 1069
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getTtmSystemError()Z

    move-result v0

    return v0
.end method

.method protected abstract handleApbSystemStatusChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation
.end method

.method protected abstract handleAsCampingModeChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method protected abstract handleAsEasyLoadingModeChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method protected abstract handleAsEngineerModeChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation
.end method

.method protected abstract handleAsHeightModeChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method protected abstract handleAsLevlingModeChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method protected abstract handleAsRepairModeChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method protected abstract handleAsSoftModeChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method protected abstract handleAsWelcomeModeChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method abstract handleAvhFaultChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isFault"
        }
    .end annotation
.end method

.method abstract handleAvhSwChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation
.end method

.method abstract handleCdcModeChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cdc"
        }
    .end annotation
.end method

.method abstract handleEbwChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation
.end method

.method abstract handleEspFaultChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isFault"
        }
    .end annotation
.end method

.method abstract handleEspSwChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation
.end method

.method abstract handleHdcChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation
.end method

.method abstract handleSteeringEpsChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eps"
        }
    .end annotation
.end method

.method protected abstract handleTrailerModeChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method protected abstract handleTtmHookMotorStatusChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation
.end method

.method protected handleTtmSwitchStatusChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 672
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mTtmHook:I

    .line 674
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "trailer_hook_sw"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$Quick;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method protected abstract handleTtmSysErrStatusChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isErr"
        }
    .end annotation
.end method

.method initTrailerMode()V
    .locals 4

    .line 243
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "trailer_hook_sw"

    .line 245
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/provider/CarControl$Quick;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 244
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 247
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "trailer_mode_sw"

    .line 248
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/provider/CarControl$Quick;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mContentObserver:Landroid/database/ContentObserver;

    .line 247
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public isAirSuspensionWelcomeEnable()Z
    .locals 1

    .line 974
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getAsWelcomeMode()Z

    move-result v0

    return v0
.end method

.method public isAsFaultForAsRepair()Z
    .locals 2

    .line 1102
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getASFaultWarning()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

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

.method public isDrvBeltBuckled()Z
    .locals 3

    const-string v0, "isSupportSrs"

    .line 699
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 700
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getDrvBeltStatus()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 702
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getDrvBeltStatus()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public isDrvDoorClosed()Z
    .locals 4

    .line 708
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getDoorsState()[I

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 709
    array-length v2, v0

    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    goto :goto_0

    .line 712
    :cond_0
    aget v0, v0, v1

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public isEasyLoadingEnable()Z
    .locals 1

    .line 984
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getEasyLoadingSwitch()Z

    move-result v0

    return v0
.end method

.method public isTpmsPressureNormal()Z
    .locals 7

    .line 567
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mTpmsController:Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController;->getTpmsWarningState()[I

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 568
    array-length v2, v0

    const/4 v3, 0x4

    if-lt v2, v3, :cond_2

    .line 570
    array-length v2, v0

    const/4 v3, 0x1

    move v4, v1

    move v5, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget v6, v0, v4

    if-nez v6, :cond_0

    move v6, v3

    goto :goto_1

    :cond_0
    move v6, v1

    :goto_1
    and-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v5

    :cond_2
    return v1
.end method

.method public isTpmsSensorWarningState()[Z
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mTpmsController:Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController;->isTpmsSensorStateWarning()[Z

    move-result-object v0

    return-object v0
.end method

.method public isTpmsTempWarning()[Z
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mTpmsController:Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController;->isTpmsTempWarning()[Z

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$new$0$ChassisBaseViewModel()V
    .locals 4

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getTrailerHitchSwitchStatus()I

    move-result v0

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ttm OpenRunnable ttmStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ChassisViewModel"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 150
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->handleTtmSwitchStatusChanged(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 152
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->handleTtmSwitchStatusChanged(I)V

    .line 154
    :goto_0
    iput-boolean v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mInTtmRunning:Z

    return-void
.end method

.method public synthetic lambda$new$1$ChassisBaseViewModel()V
    .locals 4

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getTrailerHitchSwitchStatus()I

    move-result v0

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ttm CloseRunnable ttmStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ChassisViewModel"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez v0, :cond_0

    .line 161
    invoke-virtual {p0, v3}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->handleTtmSwitchStatusChanged(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 163
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->handleTtmSwitchStatusChanged(I)V

    .line 165
    :goto_0
    iput-boolean v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mInTtmRunning:Z

    return-void
.end method

.method public synthetic lambda$new$3$ChassisBaseViewModel()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setTrailerHitchSwitchStatus(Z)V

    .line 170
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/-$$Lambda$ChassisBaseViewModel$oGNANFDMVJrZfSiJXvsV-S9UAl8;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/-$$Lambda$ChassisBaseViewModel$oGNANFDMVJrZfSiJXvsV-S9UAl8;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 171
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mInTtmRunning:Z

    return-void
.end method

.method public synthetic lambda$new$6$ChassisBaseViewModel()V
    .locals 4

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getTrailerHitchSwitchStatus()I

    move-result v0

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ttm ResetResult ttmStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ChassisViewModel"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 178
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/-$$Lambda$ChassisBaseViewModel$bupefRezxSIIDX4g2N4EPfNXPrs;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/-$$Lambda$ChassisBaseViewModel$bupefRezxSIIDX4g2N4EPfNXPrs;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 180
    :cond_0
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/-$$Lambda$ChassisBaseViewModel$4Zwj3ss2P7IZrzpKJiDUqnIxgcQ;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/-$$Lambda$ChassisBaseViewModel$4Zwj3ss2P7IZrzpKJiDUqnIxgcQ;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 182
    :goto_0
    iput-boolean v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mInTtmRunning:Z

    return-void
.end method

.method public synthetic lambda$null$2$ChassisBaseViewModel()V
    .locals 1

    const/4 v0, 0x5

    .line 170
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->handleTtmSwitchStatusChanged(I)V

    return-void
.end method

.method public synthetic lambda$null$4$ChassisBaseViewModel()V
    .locals 1

    const/4 v0, 0x1

    .line 178
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->handleTtmSwitchStatusChanged(I)V

    return-void
.end method

.method public synthetic lambda$null$5$ChassisBaseViewModel()V
    .locals 1

    const/4 v0, 0x2

    .line 180
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->handleTtmSwitchStatusChanged(I)V

    return-void
.end method

.method public synthetic lambda$resetTtmSwitchStatus$9$ChassisBaseViewModel()V
    .locals 1

    const/4 v0, 0x4

    .line 1152
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->handleTtmSwitchStatusChanged(I)V

    return-void
.end method

.method public synthetic lambda$setTtmSwitchStatusForUI$8$ChassisBaseViewModel(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "enable"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 1124
    :goto_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->handleTtmSwitchStatusChanged(I)V

    return-void
.end method

.method public onAvhFaultChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isFault"
        }
    .end annotation

    .line 621
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->handleAvhFaultChanged(Z)V

    return-void
.end method

.method public onAvhStatusChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 614
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->isAvhPrepared()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->parseAvhStatus(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->handleAvhSwChanged(Z)V

    :cond_0
    return-void
.end method

.method public onAvhSwChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 626
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->handleAvhSwChanged(Z)V

    return-void
.end method

.method public onEspChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 590
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->getEspFault()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->isEvSysReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->handleEspSwChanged(Z)V

    .line 593
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string p1, "isSupportEspFeedback"

    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "ChassisViewModel"

    const-string v0, "ESP changed to true, re-send true to ESP"

    .line 594
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->setEsp(Z)V

    .line 596
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->setEspSw(Z)V

    :cond_0
    return-void
.end method

.method public onEspFaultChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isFault"
        }
    .end annotation

    .line 608
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->handleEspFaultChanged(Z)V

    return-void
.end method

.method public onEspSwChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 603
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->handleEspSwChanged(Z)V

    return-void
.end method

.method public onHdcChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 631
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->handleHdcChanged(Z)V

    return-void
.end method

.method public onSteeringEpsChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eps"
        }
    .end annotation

    .line 636
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->handleSteeringEpsChanged(I)V

    return-void
.end method

.method public varargs registerBusiness([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keys"
        }
    .end annotation

    .line 1235
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mTpmsController:Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController;->registerBusiness([Ljava/lang/String;)V

    return-void
.end method

.method public resetTtmSwitchStatus()V
    .locals 4

    const/4 v0, 0x1

    .line 1146
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mInTtmRunning:Z

    .line 1147
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mTtmControlOpenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1148
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mTtmControlCloseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1149
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mTtmResetOpenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1150
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mTtmResetResultRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1151
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setTrailerHitchSwitchStatus(Z)V

    .line 1152
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/-$$Lambda$ChassisBaseViewModel$d8jExGaJURdlTExGeZyOeWkI-n0;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/-$$Lambda$ChassisBaseViewModel$d8jExGaJURdlTExGeZyOeWkI-n0;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 1153
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mTtmResetOpenRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1154
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mTtmResetResultRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public saveAsLocationInfo(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "asHeight"
        }
    .end annotation

    .line 849
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/-$$Lambda$ChassisBaseViewModel$ZEktejMfddCl_gKAO6F2FwkfKi8;

    invoke-direct {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/-$$Lambda$ChassisBaseViewModel$ZEktejMfddCl_gKAO6F2FwkfKi8;-><init>(I)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAirSuspensionHeightMode(IZ)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "height",
            "storeEnable"
        }
    .end annotation

    .line 717
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->getAsHeightInfo(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/16 v2, 0xc

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 727
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setAirSuspensionHeightMode failed, errorCode="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ChassisViewModel"

    invoke-static {p2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    :goto_0
    if-ne p1, v1, :cond_3

    .line 720
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    .line 721
    invoke-interface {v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getPowerResponseMode()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    .line 722
    invoke-interface {v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getPowerResponseMode()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    :cond_2
    const/4 p1, 0x2

    .line 725
    :cond_3
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    const/4 v3, 0x6

    if-eq v3, p1, :cond_4

    if-eqz p2, :cond_4

    move p2, v1

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    :goto_1
    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setAirSuspensionHeight(IZ)V

    .line 729
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->asErrorCodeToToastRes(IZ)I

    move-result p1

    .line 730
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->showErrorToast(I)V

    .line 731
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->translateToInfoJsonString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setAirSuspensionRepairMode(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 989
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setAirSuspensionRepairMode(Z)V

    return-void
.end method

.method public setAirSuspensionSoftMode(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "soft"
        }
    .end annotation

    const/4 v0, 0x1

    .line 905
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->setAirSuspensionSoftMode(IZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setAirSuspensionSoftMode(IZ)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "soft",
            "storeEnable"
        }
    .end annotation

    .line 910
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->getAsSoftInfo()I

    move-result v0

    const/4 v1, 0x0

    .line 911
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->asErrorCodeToToastRes(IZ)I

    move-result v1

    if-nez v0, :cond_0

    .line 913
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setAirSuspensionSoft(IZ)V

    goto :goto_0

    .line 915
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setAirSuspensionHeightMode failed, errorCode="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ChassisViewModel"

    invoke-static {p2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    :goto_0
    invoke-direct {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->showErrorToast(I)V

    .line 918
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->translateToInfoJsonString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setAirSuspensionWelcome(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 969
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setAsWelcomeMode(Z)V

    return-void
.end method

.method public setAsCampingMode(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1009
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setAsCampingModeSwitch(Z)V

    return-void
.end method

.method public setAsCustomerModeFlagSwitchStatus(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1049
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setCustomerModeFlag(Z)V

    return-void
.end method

.method public setAsLocationControlSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 895
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setAsLocationControlSw(Z)V

    return-void
.end method

.method public setAsLocationSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    const/4 v0, 0x1

    .line 880
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->setAsLocationSw(ZZ)V

    return-void
.end method

.method public setAsLocationSw(ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "on",
            "storeEnable"
        }
    .end annotation

    .line 885
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setAsLocationSw(ZZ)V

    return-void
.end method

.method public setAvhSw(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 339
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->getAvhFault()Z

    move-result v0

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAvhSw avhFault="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ChassisViewModel"

    invoke-static {v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 344
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->handleAvhSwChanged(Z)V

    goto :goto_0

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->setAvhSw(Z)V

    :goto_0
    return-void
.end method

.method public setCdcMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cdc"
        }
    .end annotation

    .line 524
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mCdcController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICdcController;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICdcController;->setCdcMode(IZ)V

    return-void
.end method

.method public setEasyLoadingSwitch(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 979
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setEasyLoadingSwitch(Z)V

    return-void
.end method

.method public setEbw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 405
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setEbwEnable(Z)V

    return-void
.end method

.method public setEngineeringModeStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 999
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setEngineeringModeStatus(I)V

    return-void
.end method

.method public setEpbSystemStatus(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1039
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->setEpbSystemStatus(Z)V

    return-void
.end method

.method public setEsp(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->setEsp(Z)V

    return-void
.end method

.method public setEspBpfMode(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 1207
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->getEspBpfModeInfo()I

    move-result v0

    if-nez v0, :cond_0

    .line 1209
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    invoke-interface {v1, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->setEspBpfMode(I)V

    goto :goto_0

    .line 1211
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEspBpfMode failed, errorCode="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ChassisViewModel"

    invoke-static {v1, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string p1, ""

    .line 1213
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->translateToInfoJsonString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setEspCstSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1197
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->setEspCstSw(Z)V

    return-void
.end method

.method public setEspSw()V
    .locals 8

    .line 265
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->getEspFault()Z

    move-result v0

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEspSw espFault="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ChassisViewModel"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 267
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->getEspSw()Z

    move-result v1

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {p0, v3}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->handleEspSwChanged(Z)V

    goto/16 :goto_2

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->isEvSysReady()Z

    move-result v0

    .line 274
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setEspSw isEspPrepared="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", currentEspSw="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 275
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    xor-int/lit8 v4, v1, 0x1

    invoke-interface {v3, v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->setEspSw(Z)V

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    .line 280
    :cond_1
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getDriveMode()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    const/16 v7, 0xd

    if-eq v5, v7, :cond_2

    const/16 v7, 0x11

    if-eq v5, v7, :cond_3

    move v6, v4

    goto :goto_0

    :cond_2
    move v6, v3

    .line 292
    :cond_3
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setEspSw, getSnowMode: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v7}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getSnowMode()Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "isSupportSnowMode"

    .line 293
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getSnowMode()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v4

    goto :goto_1

    :cond_4
    move v2, v6

    :goto_1
    if-eqz v0, :cond_5

    if-eq v2, v3, :cond_6

    .line 299
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    invoke-interface {v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->setEspMode(I)V

    goto :goto_2

    :cond_5
    xor-int/lit8 v0, v1, 0x1

    .line 302
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->handleEspSwChanged(Z)V

    :cond_6
    :goto_2
    return-void
.end method

.method public setHdc(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const-string p1, "isSupportHdc"

    .line 379
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 380
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->getHdcFault()Z

    move-result p1

    .line 381
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getCarSpeed()F

    move-result v0

    .line 382
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->getHdc()Z

    move-result v1

    .line 384
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHdc hdcFault="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", carSpd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", currentHdc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ChassisViewModel"

    invoke-static {v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    const/high16 p1, 0x420c0000    # 35.0f

    cmpl-float p1, v0, p1

    if-lez p1, :cond_0

    if-nez v1, :cond_0

    goto :goto_0

    .line 388
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    xor-int/lit8 v0, v1, 0x1

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->setHdc(Z)V

    goto :goto_1

    .line 386
    :cond_1
    :goto_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->hdc_open_fail:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setSteeringEps(IZ)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eps",
            "storeEnable"
        }
    .end annotation

    .line 415
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->getSteeringEpsInfo()I

    move-result v0

    .line 416
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->steeringEpsErrorCodeToToastRes(I)I

    move-result v1

    if-nez v0, :cond_0

    .line 418
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mEpsController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEpsController;

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEpsController;->setSteeringEps(IZ)V

    goto :goto_0

    .line 420
    :cond_0
    invoke-direct {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->showErrorToast(I)V

    .line 421
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setSteeringEps failed, errorCode="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ChassisViewModel"

    invoke-static {p2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :goto_0
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->translateToInfoJsonString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setTrailerModeStatus(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1160
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setTrailerModeStatus(Z)V

    .line 1161
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->setEspTsmSwitchStatus(Z)V

    .line 1162
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setAsTrailerModeSwitchStatus(Z)V

    return-void
.end method

.method public setTtmSwitch(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1108
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setTrailerHitchSwitchStatus(Z)V

    return-void
.end method

.method public setTtmSwitchStatusForUI(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1118
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mInTtmRunning:Z

    .line 1119
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mTtmControlOpenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1120
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mTtmControlCloseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1121
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mTtmResetOpenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1122
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mTtmResetResultRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1123
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setTrailerHitchSwitchStatus(Z)V

    .line 1124
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/-$$Lambda$ChassisBaseViewModel$AfjKujImnLgmOzb8dWHncmJ6CRY;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/-$$Lambda$ChassisBaseViewModel$AfjKujImnLgmOzb8dWHncmJ6CRY;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;Z)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 1125
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mTtmControlOpenRunnable:Ljava/lang/Runnable;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mTtmControlCloseRunnable:Ljava/lang/Runnable;

    :goto_0
    const-wide/16 v1, 0x2710

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public varargs unregisterBusiness([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keys"
        }
    .end annotation

    .line 1240
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mTpmsController:Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController;->unregisterBusiness([Ljava/lang/String;)V

    return-void
.end method
