.class Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;
.super Ljava/lang/Object;
.source "MirrorMemoryStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy$IMirrorReverseStateListener;
    }
.end annotation


# static fields
.field private static final MIRROR_ADJUST_TIMEOUT:J = 0xfa0L

.field private static final MIRROR_SAVE_DELAY_TIME:J = 0x96L


# instance fields
.field private final TAG:Ljava/lang/String;

.field private isWaitingExitRGear:Z

.field private mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

.field private final mHandler:Landroid/os/Handler;

.field private volatile mIsUserAdjust:Z

.field private final mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

.field protected final mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

.field private mPreviousGear:I

.field private final mRecoveringTask:Ljava/lang/Runnable;

.field private volatile mReverseState:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;

.field private mReverseStateListener:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy$IMirrorReverseStateListener;

.field private final mReversingTask:Ljava/lang/Runnable;

.field private final mSaveCmsPosTask:Ljava/lang/Runnable;

.field private mSaveNormalPositionJob:Lcom/xiaopeng/carcontrol/lang/TriggerJob;

.field private mSaveReversePositionJob:Lcom/xiaopeng/carcontrol/lang/TriggerJob;

.field protected final mTargetReversePos:[I

.field private mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

.field private final mWaitingExitRGearTask:Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 6

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MirrorMemoryStrategy"

    .line 21
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->TAG:Ljava/lang/String;

    .line 32
    new-instance v0, Lcom/xiaopeng/carcontrol/bean/Mirror;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/bean/Mirror;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 34
    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mTargetReversePos:[I

    .line 36
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;->Normal:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mReverseState:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;

    const/4 v1, 0x0

    .line 38
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->getHandler(I)Landroid/os/Handler;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mHandler:Landroid/os/Handler;

    .line 40
    new-instance v2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$MirrorMemoryStrategy$Fi8fw1udhXGZjilCdaoBPsx9dGc;

    invoke-direct {v2, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$MirrorMemoryStrategy$Fi8fw1udhXGZjilCdaoBPsx9dGc;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;)V

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mReversingTask:Ljava/lang/Runnable;

    .line 41
    new-instance v2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$MirrorMemoryStrategy$obckVdOctpVBtX82ZVM0aqMp88s;

    invoke-direct {v2, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$MirrorMemoryStrategy$obckVdOctpVBtX82ZVM0aqMp88s;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;)V

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mRecoveringTask:Ljava/lang/Runnable;

    .line 43
    new-instance v2, Lcom/xiaopeng/carcontrol/lang/TriggerJob;

    new-instance v3, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$MirrorMemoryStrategy$dLS4rurNIgFe35N2QyHmCVM2JKI;

    invoke-direct {v3, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$MirrorMemoryStrategy$dLS4rurNIgFe35N2QyHmCVM2JKI;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;)V

    const-wide/16 v4, 0x96

    invoke-direct {v2, v4, v5, v3}, Lcom/xiaopeng/carcontrol/lang/TriggerJob;-><init>(JLjava/lang/Runnable;)V

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mSaveNormalPositionJob:Lcom/xiaopeng/carcontrol/lang/TriggerJob;

    .line 44
    new-instance v2, Lcom/xiaopeng/carcontrol/lang/TriggerJob;

    new-instance v3, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$MirrorMemoryStrategy$oxHtKUU9xGPrUAj793zsvaxqiS8;

    invoke-direct {v3, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$MirrorMemoryStrategy$oxHtKUU9xGPrUAj793zsvaxqiS8;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;)V

    invoke-direct {v2, v4, v5, v3}, Lcom/xiaopeng/carcontrol/lang/TriggerJob;-><init>(JLjava/lang/Runnable;)V

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mSaveReversePositionJob:Lcom/xiaopeng/carcontrol/lang/TriggerJob;

    .line 49
    iput v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mPreviousGear:I

    .line 50
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->isWaitingExitRGear:Z

    .line 51
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$MirrorMemoryStrategy$JaGU2nKOyet921xucni8FsaDdMo;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$MirrorMemoryStrategy$JaGU2nKOyet921xucni8FsaDdMo;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;)V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mWaitingExitRGearTask:Ljava/lang/Runnable;

    .line 241
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$MirrorMemoryStrategy$MXu2xbcgdhrRugyI3jcHRkfgE_8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$MirrorMemoryStrategy$MXu2xbcgdhrRugyI3jcHRkfgE_8;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;)V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mSaveCmsPosTask:Ljava/lang/Runnable;

    .line 66
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v1

    const-string/jumbo v2, "xp_bcm"

    .line 68
    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    const-string/jumbo v2, "xp_mcu"

    .line 70
    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    const-string/jumbo v2, "xp_vcu"

    .line 72
    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    .line 73
    new-instance v2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy$1;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;)V

    invoke-interface {v1, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->registerCallback(Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;)V

    .line 88
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getGearLevel()I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mPreviousGear:I

    .line 89
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getMirrorSavedPos()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/bean/Mirror;->updateAllPosition(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->isWaitingExitRGear:Z

    return p0
.end method

.method static synthetic access$002(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->isWaitingExitRGear:Z

    return p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mPreviousGear:I

    return p0
.end method

.method static synthetic access$102(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;I)I
    .locals 0

    .line 20
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mPreviousGear:I

    return p1
.end method

.method static synthetic access$200(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;)Ljava/lang/Runnable;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mWaitingExitRGearTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;)Landroid/os/Handler;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private checkUpdateMirrorMemoryPosition(IIII)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "leftHorPos",
            "leftVerPos",
            "rightHorPos",
            "rightVerPos"
        }
    .end annotation

    const-string v0, "isDelaySaveMirrorPos"

    .line 294
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mReverseState:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;->Reversing:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;

    const-string v2, "MirrorMemoryStrategy"

    const/4 v3, 0x0

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mReverseState:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;->Recovering:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;

    if-ne v0, v1, :cond_1

    goto/16 :goto_1

    .line 303
    :cond_1
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mIsUserAdjust:Z

    if-nez v0, :cond_2

    const-string p1, "startUpdateMirrorMemoryPosition failed for mIsUserAdjust false"

    .line 304
    invoke-static {v2, p1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 310
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getGearLevel()I

    move-result v0

    const/4 v1, 0x1

    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v3

    .line 311
    :goto_0
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mReverseState:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;

    sget-object v6, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;->Normal:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x5

    const-string v10, "startUpdateMirrorMemoryPosition: ReverseState=%1s, position=(%3s,%4s,%5s,%6s)"

    if-ne v5, v6, :cond_4

    if-nez v0, :cond_4

    new-array v5, v9, [Ljava/lang/Object;

    .line 312
    iget-object v6, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mReverseState:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;

    aput-object v6, v5, v3

    .line 313
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    .line 312
    invoke-static {v10, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mSaveNormalPositionJob:Lcom/xiaopeng/carcontrol/lang/TriggerJob;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/lang/TriggerJob;->trigger()V

    .line 322
    :cond_4
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mReverseState:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;

    sget-object v6, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;->Reversed:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;

    if-ne v5, v6, :cond_5

    if-eqz v0, :cond_5

    new-array v0, v9, [Ljava/lang/Object;

    .line 323
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mReverseState:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;

    aput-object v5, v0, v3

    .line 324
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v8

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v7

    .line 323
    invoke-static {v10, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mSaveReversePositionJob:Lcom/xiaopeng/carcontrol/lang/TriggerJob;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/lang/TriggerJob;->trigger()V

    :cond_5
    return-void

    .line 298
    :cond_6
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "startUpdateMirrorMemoryPosition failed for ReverseState="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mReverseState:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private getReverseMode()Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getReverseMirrorMode()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;->fromBcmMirrorState(I)Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;

    move-result-object v0

    return-object v0
.end method

.method private isPosChanged(II)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "prePos",
            "curPos"
        }
    .end annotation

    sub-int/2addr p1, p2

    .line 395
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/4 p2, 0x2

    if-le p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isPosValid([I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isPosValid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MirrorMemoryStrategy"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 400
    array-length v1, p1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_3

    const-string v1, "needCheckValidMirrorPos"

    .line 401
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 402
    aget v1, p1, v0

    if-nez v1, :cond_0

    aget v1, p1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x2

    aget v1, p1, v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    aget p1, p1, v1

    if-eqz p1, :cond_1

    :cond_0
    move v0, v2

    :cond_1
    return v0

    :cond_2
    return v2

    :cond_3
    return v0
.end method

.method public static synthetic lambda$MXu2xbcgdhrRugyI3jcHRkfgE_8(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->saveCmsPos()V

    return-void
.end method

.method public static synthetic lambda$dLS4rurNIgFe35N2QyHmCVM2JKI(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->saveNormalPos()V

    return-void
.end method

.method public static synthetic lambda$oxHtKUU9xGPrUAj793zsvaxqiS8(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->saveReversePos()V

    return-void
.end method

.method private saveCmsPos()V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getCmsLocation()[F

    move-result-object v0

    .line 245
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->saveCmsLocation([F)V

    return-void
.end method

.method private saveNormalPos()V
    .locals 3

    .line 343
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getGearLevel()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getMirrorPosition(Z)[I

    move-result-object v0

    .line 349
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->isPosValid([I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 350
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/bean/Mirror;->updateNormalPosition([I)V

    .line 351
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/bean/Mirror;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->saveMirrorPos(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private saveReversePos()V
    .locals 6

    .line 364
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getGearLevel()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getMirrorPosition(Z)[I

    move-result-object v0

    .line 370
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->isPosValid([I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 371
    sget-object v4, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$cabin$MirrorReverseMode:[I

    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->getReverseMode()Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x2

    if-eq v4, v3, :cond_4

    if-eq v4, v5, :cond_3

    if-eq v4, v2, :cond_2

    goto :goto_1

    .line 383
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    aget v3, v0, v5

    iput v3, v1, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightHPosR:I

    .line 384
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    aget v0, v0, v2

    iput v0, v1, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightVPosR:I

    goto :goto_1

    .line 379
    :cond_3
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    aget v1, v0, v1

    iput v1, v2, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftHPosR:I

    .line 380
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    aget v0, v0, v3

    iput v0, v1, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftVPosR:I

    goto :goto_1

    .line 373
    :cond_4
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    aget v1, v0, v1

    iput v1, v4, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftHPosR:I

    .line 374
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    aget v3, v0, v3

    iput v3, v1, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftVPosR:I

    .line 375
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    aget v3, v0, v5

    iput v3, v1, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightHPosR:I

    .line 376
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    aget v0, v0, v2

    iput v0, v1, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightVPosR:I

    .line 390
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/bean/Mirror;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->saveMirrorPos(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private updateReverseState(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reverseState"
        }
    .end annotation

    .line 249
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mReverseState:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;

    .line 250
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mReverseStateListener:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy$IMirrorReverseStateListener;

    if-eqz v0, :cond_0

    .line 252
    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy$IMirrorReverseStateListener;->updateReverseState(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;)V

    :cond_0
    return-void
.end method

.method private updateReverseStateByState([I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mReverseState:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;->Reversing:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;

    const/4 v2, 0x0

    const-string v3, "MirrorMemoryStrategy"

    if-ne v0, v1, :cond_0

    .line 258
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mTargetReversePos:[I

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/bean/Mirror;->isEquals([I[I)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "updateReverseState: Reversing->Reversed"

    .line 259
    invoke-static {v3, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 260
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;->Reversed:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->updateReverseState(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;)V

    goto :goto_0

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mReverseState:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;->Recovering:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;

    if-ne v0, v1, :cond_1

    .line 263
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/bean/Mirror;->isEqualsToPosition([I)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "updateReverseState: Recovering->Normal"

    .line 264
    invoke-static {v3, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 266
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;->Normal:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->updateReverseState(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;)V

    goto :goto_0

    .line 270
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getGearLevel()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    const/4 v2, 0x1

    .line 271
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mReverseState:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;->Reversed:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;

    if-ne p1, v0, :cond_3

    if-nez v2, :cond_3

    const-string p1, "updateReverseState: Reversed->Normal, current not in rear gear, should reset Reversed state to Normal"

    .line 272
    invoke-static {v3, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;->Normal:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->updateReverseState(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;)V

    goto :goto_0

    .line 274
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mReverseState:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;->Normal:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;

    if-ne p1, v0, :cond_4

    if-eqz v2, :cond_4

    const-string p1, "updateReverseState: Normal->Reversed, current in rear gear, should reset Reversed state to Reversed"

    .line 275
    invoke-static {v3, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;->Reversed:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->updateReverseState(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private updateTargetReversePos()V
    .locals 6

    .line 134
    invoke-static {}, Lcom/xiaopeng/carcontrol/util/ConfigUtil;->isSopStage()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    .line 135
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$cabin$MirrorReverseMode:[I

    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->getReverseMode()Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;->ordinal()I

    move-result v5

    aget v0, v0, v5

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mTargetReversePos:[I

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v5, v5, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftHPos:I

    aput v5, v0, v1

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mTargetReversePos:[I

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v1, v1, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftVPos:I

    aput v1, v0, v4

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mTargetReversePos:[I

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v1, v1, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightHPos:I

    aput v1, v0, v3

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mTargetReversePos:[I

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v1, v1, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightVPos:I

    aput v1, v0, v2

    goto/16 :goto_0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mTargetReversePos:[I

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v5, v5, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftHPos:I

    aput v5, v0, v1

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mTargetReversePos:[I

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v1, v1, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftVPos:I

    aput v1, v0, v4

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mTargetReversePos:[I

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v1, v1, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightHPosR:I

    aput v1, v0, v3

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mTargetReversePos:[I

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v1, v1, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightVPosR:I

    aput v1, v0, v2

    goto/16 :goto_0

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mTargetReversePos:[I

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v5, v5, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftHPosR:I

    aput v5, v0, v1

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mTargetReversePos:[I

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v1, v1, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftVPosR:I

    aput v1, v0, v4

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mTargetReversePos:[I

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v1, v1, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightHPos:I

    aput v1, v0, v3

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mTargetReversePos:[I

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v1, v1, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightVPos:I

    aput v1, v0, v2

    goto/16 :goto_0

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mTargetReversePos:[I

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v5, v5, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftHPosR:I

    aput v5, v0, v1

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mTargetReversePos:[I

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v1, v1, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftVPosR:I

    aput v1, v0, v4

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mTargetReversePos:[I

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v1, v1, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightHPosR:I

    aput v1, v0, v3

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mTargetReversePos:[I

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v1, v1, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightVPosR:I

    aput v1, v0, v2

    goto/16 :goto_0

    .line 163
    :cond_3
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$cabin$MirrorReverseMode:[I

    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->getReverseMode()Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;->ordinal()I

    move-result v5

    aget v0, v0, v5

    if-eq v0, v4, :cond_6

    if-eq v0, v3, :cond_5

    if-eq v0, v2, :cond_4

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mTargetReversePos:[I

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v5, v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getLeftMirrorLRPos(Z)I

    move-result v5

    aput v5, v0, v1

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mTargetReversePos:[I

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v1, v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getLeftMirrorUDPos(Z)I

    move-result v1

    aput v1, v0, v4

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mTargetReversePos:[I

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v1, v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getRightMirrorLRPos(Z)I

    move-result v1

    aput v1, v0, v3

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mTargetReversePos:[I

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v1, v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getRightMirrorUDPos(Z)I

    move-result v1

    aput v1, v0, v2

    goto :goto_0

    .line 177
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mTargetReversePos:[I

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v5, v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getLeftMirrorLRPos(Z)I

    move-result v5

    aput v5, v0, v1

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mTargetReversePos:[I

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v1, v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getLeftMirrorUDPos(Z)I

    move-result v1

    aput v1, v0, v4

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mTargetReversePos:[I

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v1, v1, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightHPosR:I

    aput v1, v0, v3

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mTargetReversePos:[I

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v1, v1, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightVPosR:I

    aput v1, v0, v2

    goto :goto_0

    .line 171
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mTargetReversePos:[I

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v5, v5, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftHPosR:I

    aput v5, v0, v1

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mTargetReversePos:[I

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v1, v1, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftVPosR:I

    aput v1, v0, v4

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mTargetReversePos:[I

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v1, v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getRightMirrorLRPos(Z)I

    move-result v1

    aput v1, v0, v3

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mTargetReversePos:[I

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v1, v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getRightMirrorUDPos(Z)I

    move-result v1

    aput v1, v0, v2

    goto :goto_0

    .line 165
    :cond_6
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mTargetReversePos:[I

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v5, v5, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftHPosR:I

    aput v5, v0, v1

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mTargetReversePos:[I

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v1, v1, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftVPosR:I

    aput v1, v0, v4

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mTargetReversePos:[I

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v1, v1, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightHPosR:I

    aput v1, v0, v3

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mTargetReversePos:[I

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v1, v1, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightVPosR:I

    aput v1, v0, v2

    :goto_0
    return-void
.end method


# virtual methods
.method public checkCurPos()Z
    .locals 7

    .line 448
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getMirrorPosition(Z)[I

    move-result-object v0

    .line 449
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getGearLevel()I

    move-result v2

    .line 450
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->getReverseMode()Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;

    move-result-object v3

    .line 451
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkCurPos: ReverseMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MirrorMemoryStrategy"

    invoke-static {v5, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkCurPos: curPos="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", mMirrorMemoryPos="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x3

    if-ne v2, v4, :cond_4

    .line 455
    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$cabin$MirrorReverseMode:[I

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x2

    if-eq v2, v1, :cond_3

    if-eq v2, v6, :cond_2

    if-eq v2, v4, :cond_1

    if-eq v2, v5, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    new-array v2, v5, [I

    .line 457
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v5, v5, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftHPos:I

    aput v5, v2, v3

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v3, v3, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftVPos:I

    aput v3, v2, v1

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v1, v1, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightHPos:I

    aput v1, v2, v6

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v1, v1, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightVPos:I

    aput v1, v2, v4

    goto :goto_0

    :cond_1
    new-array v2, v5, [I

    .line 463
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v5, v5, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftHPos:I

    aput v5, v2, v3

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v3, v3, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftVPos:I

    aput v3, v2, v1

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v1, v1, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightHPosR:I

    aput v1, v2, v6

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v1, v1, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightVPosR:I

    aput v1, v2, v4

    goto :goto_0

    :cond_2
    new-array v2, v5, [I

    .line 460
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v5, v5, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftHPosR:I

    aput v5, v2, v3

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v3, v3, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftVPosR:I

    aput v3, v2, v1

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v1, v1, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightHPos:I

    aput v1, v2, v6

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v1, v1, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightVPos:I

    aput v1, v2, v4

    goto :goto_0

    :cond_3
    new-array v2, v5, [I

    .line 466
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v5, v5, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftHPosR:I

    aput v5, v2, v3

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v3, v3, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftVPosR:I

    aput v3, v2, v1

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v1, v1, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightHPosR:I

    aput v1, v2, v6

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v1, v1, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightVPosR:I

    aput v1, v2, v4

    .line 472
    :goto_0
    invoke-static {v0, v2}, Lcom/xiaopeng/carcontrol/bean/Mirror;->isEquals([I[I)Z

    move-result v0

    return v0

    .line 474
    :cond_4
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/bean/Mirror;->isEqualsToPosition([I)Z

    move-result v0

    return v0
.end method

.method isMirrorAdjustingByHw([I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mirrorStates"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 410
    array-length v1, p1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_1

    .line 411
    aget v1, p1, v0

    const/4 v2, 0x1

    if-nez v1, :cond_0

    aget v1, p1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x2

    aget v1, p1, v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    aget p1, p1, v1

    if-eqz p1, :cond_1

    :cond_0
    move v0, v2

    :cond_1
    return v0
.end method

.method public isUserAdjusting()Z
    .locals 1

    .line 479
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mIsUserAdjust:Z

    return v0
.end method

.method public synthetic lambda$new$0$MirrorMemoryStrategy()V
    .locals 1

    .line 40
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;->Reversed:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->updateReverseState(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;)V

    return-void
.end method

.method public synthetic lambda$new$1$MirrorMemoryStrategy()V
    .locals 1

    .line 41
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;->Normal:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->updateReverseState(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;)V

    return-void
.end method

.method public synthetic lambda$new$2$MirrorMemoryStrategy()V
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getRearViewMirrorsAdjustStates()[I

    move-result-object v0

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute mWaitingExitRGearTask: isWaitingExitRGear="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->isWaitingExitRGear:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPreviousGear="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mPreviousGear:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", currentGear="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    .line 55
    invoke-interface {v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getGearLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mirrorAdjustState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 56
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MirrorMemoryStrategy"

    const/4 v3, 0x0

    .line 53
    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 57
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->isWaitingExitRGear:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mPreviousGear:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    .line 58
    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getGearLevel()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 59
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->isMirrorAdjustingByHw([I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->recoverMirror()V

    .line 61
    iput-boolean v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->isWaitingExitRGear:Z

    :cond_0
    return-void
.end method

.method onCmsPosChanged([F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 235
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mSaveCmsPosTask:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->removeRunnable(Ljava/lang/Runnable;)V

    .line 236
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mIsUserAdjust:Z

    if-eqz p1, :cond_0

    .line 237
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mSaveCmsPosTask:Ljava/lang/Runnable;

    const-wide/16 v0, 0x96

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method onMirrorAdjust([I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mirrorStates"
        }
    .end annotation

    .line 421
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->isMirrorAdjustingByHw([I)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "isSupportMirrorDown"

    .line 423
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 424
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->getIgStatusFromMcu()I

    move-result p1

    .line 425
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getGearLevel()I

    move-result v0

    .line 426
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMirrorAdjust: isWaitingExitRGear="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->isWaitingExitRGear:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", igState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", gear="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MirrorMemoryStrategy"

    invoke-static {v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->isWaitingExitRGear:Z

    if-eqz v1, :cond_0

    .line 430
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mWaitingExitRGearTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 431
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mWaitingExitRGearTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x190

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_3

    .line 435
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->saveNormalPos()V

    goto :goto_0

    .line 437
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mReverseState:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;->Normal:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;

    if-ne p1, v0, :cond_2

    .line 438
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->saveNormalPos()V

    goto :goto_0

    .line 439
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mReverseState:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;->Reversed:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;

    if-ne p1, v0, :cond_3

    .line 440
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->saveReversePos()V

    :cond_3
    :goto_0
    return-void
.end method

.method onMirrorPosChanged([I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->getIgStatusFromMcu()I

    move-result v0

    const-string v1, "MirrorMemoryStrategy"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const-string p1, "Current is not local ig on, do not save mirror position"

    .line 222
    invoke-static {v1, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 225
    array-length v0, p1

    const/4 v3, 0x4

    if-ge v0, v3, :cond_1

    goto :goto_0

    .line 229
    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->updateReverseStateByState([I)V

    const/4 v0, 0x0

    .line 230
    aget v0, p1, v0

    aget v1, p1, v2

    const/4 v2, 0x2

    aget v2, p1, v2

    const/4 v3, 0x3

    aget p1, p1, v3

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->checkUpdateMirrorMemoryPosition(IIII)V

    return-void

    .line 226
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error mirror position array:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method onMirrorReverseModeChanged(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMirrorReverseModeChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MirrorMemoryStrategy"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method recoverMirror()V
    .locals 5

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mReversingTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mRecoveringTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 196
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v1, v1, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftHPos:I

    .line 197
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v1, v1, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftVPos:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v1, v1, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightHPos:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v1, v1, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightVPos:I

    .line 198
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mReverseState:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v0, v3

    const-string v1, "recoverMirror with location: [%1s, %2s, %3s, %4s], current reverseState=%5s"

    .line 196
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MirrorMemoryStrategy"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v1, v1, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftHPos:I

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v2, v2, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftVPos:I

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v3, v3, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightHPos:I

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v4, v4, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightVPos:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setMirrorLocation(IIII)V

    .line 201
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;->Recovering:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->updateReverseState(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;)V

    .line 202
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mRecoveringTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method recoverMirrorIfNeeded()V
    .locals 5

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mReversingTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mRecoveringTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getMirrorPosition(Z)[I

    move-result-object v0

    .line 209
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/bean/Mirror;->isEqualsToPosition([I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 210
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v2, v2, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftHPos:I

    .line 211
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v2, v2, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftVPos:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v2, v2, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightHPos:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v2, v2, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightVPos:I

    .line 212
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mReverseState:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "recoverMirror with location: [%1s, %2s, %3s, %4s], current reverseState=%5s"

    .line 210
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MirrorMemoryStrategy"

    invoke-static {v1, v0, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 213
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v1, v1, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftHPos:I

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v2, v2, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftVPos:I

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v3, v3, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightHPos:I

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v4, v4, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightVPos:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setMirrorLocation(IIII)V

    .line 215
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;->Recovering:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->updateReverseState(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;)V

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mRecoveringTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method reverseMirror()V
    .locals 6

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mReversingTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mRecoveringTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 123
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->updateTargetReversePos()V

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 124
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mTargetReversePos:[I

    .line 125
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mReverseState:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "reverseMirror with location: %1s, current reverseState=%3s"

    .line 124
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MirrorMemoryStrategy"

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 127
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mTargetReversePos:[I

    aget v3, v2, v3

    aget v4, v2, v4

    aget v0, v2, v0

    const/4 v5, 0x3

    aget v2, v2, v5

    invoke-interface {v1, v3, v4, v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setMirrorLocation(IIII)V

    .line 129
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;->Reversing:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->updateReverseState(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;)V

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mReversingTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method setReverseStateListener(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy$IMirrorReverseStateListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 492
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mReverseStateListener:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy$IMirrorReverseStateListener;

    if-eqz v0, :cond_0

    return-void

    .line 495
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mReverseStateListener:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy$IMirrorReverseStateListener;

    .line 496
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mReverseState:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy$IMirrorReverseStateListener;->updateReverseState(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;)V

    return-void
.end method

.method syncAccountMirrorPos(Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mirrorPosition",
            "needMoveMirror"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mSaveNormalPositionJob:Lcom/xiaopeng/carcontrol/lang/TriggerJob;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/lang/TriggerJob;->untrigger()V

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mSaveReversePositionJob:Lcom/xiaopeng/carcontrol/lang/TriggerJob;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/lang/TriggerJob;->untrigger()V

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "syncAccountMirrorPos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "MirrorMemoryStrategy"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/bean/Mirror;->updateAllPosition(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 114
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget p2, p2, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftHPos:I

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v0, v0, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftVPos:I

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v1, v1, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightHPos:I

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mMirrorMemoryPos:Lcom/xiaopeng/carcontrol/bean/Mirror;

    iget v2, v2, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightVPos:I

    invoke-interface {p1, p2, v0, v1, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setMirrorLocation(IIII)V

    :cond_0
    return-void
.end method

.method updateUserAdjust(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isUserAdjust"
        }
    .end annotation

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateUserAdjust: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MirrorMemoryStrategy"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "isDelaySaveMirrorPos"

    .line 283
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mIsUserAdjust:Z

    goto :goto_1

    :cond_0
    if-nez p1, :cond_2

    .line 287
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getGearLevel()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    new-instance p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$MirrorMemoryStrategy$oxHtKUU9xGPrUAj793zsvaxqiS8;

    invoke-direct {p1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$MirrorMemoryStrategy$oxHtKUU9xGPrUAj793zsvaxqiS8;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$MirrorMemoryStrategy$dLS4rurNIgFe35N2QyHmCVM2JKI;

    invoke-direct {p1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$MirrorMemoryStrategy$dLS4rurNIgFe35N2QyHmCVM2JKI;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;)V

    :goto_0
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    :cond_2
    :goto_1
    return-void
.end method
