.class public Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;
.super Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;
.source "MsmController.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController$MsmControllerFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/carcontrol/carmanager/BaseCarController<",
        "Landroid/car/hardware/msm/CarMsmManager;",
        "Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;",
        ">;",
        "Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;"
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field protected static final TAG:Ljava/lang/String; = "MsmController"


# instance fields
.field private final SEAT_MESSAGE:Ljava/lang/String;

.field private debugDrvSeatCushionPos:I

.field private debugDrvSeatHorPos:I

.field private debugDrvSeatLegPos:I

.field private debugDrvSeatTiltPos:I

.field private debugDrvSeatVerPos:I

.field private debugPsnSeatHorPos:I

.field private debugPsnSeatSmallLegPos:I

.field private debugPsnSeatTiltPos:I

.field private debugPsnSeatVerPos:I

.field private debugRLSeatHeadHorPos:I

.field private debugRLSeatHeadVerPos:I

.field private debugRLSeatHorPos:I

.field private debugRLSeatLegHorPos:I

.field private debugRLSeatSmallLegPos:I

.field private debugRLSeatTiltPos:I

.field private debugRRSeatHeadHorPos:I

.field private debugRRSeatHeadVerPos:I

.field private debugRRSeatHorPos:I

.field private debugRRSeatLegHorPos:I

.field private debugRRSeatSmallLegPos:I

.field private debugRRSeatTiltPos:I

.field private debugTLSeatHeadVerPos:I

.field private debugTLSeatTiltPos:I

.field private debugTMidSeatHeadVerPos:I

.field private debugTRSeatHeadVerPos:I

.field private debugTRSeatTiltPos:I

.field private final mCarMsbEventCallback:Landroid/car/hardware/msb/CarMsbManager$CarMsbEventCallback;

.field private mCarMsbManager:Landroid/car/hardware/msb/CarMsbManager;

.field private final mCarMsmEventCallback:Landroid/car/hardware/msm/CarMsmManager$CarMsmEventCallback;

.field private final mCarSrsEventCallback:Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;

.field protected mCarSrsManager:Landroid/car/hardware/srs/CarSrsManager;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mEsbSw:Ljava/lang/Boolean;

.field private final mMsbPropIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPsnWelcomeSw:Ljava/lang/Boolean;

.field private mSeatMassagerManager:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

.field private final mSrsPropIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/car/Car;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "carClient"
        }
    .end annotation

    .line 146
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;-><init>()V

    const-string/jumbo p1, "seatMessageTag"

    .line 61
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->SEAT_MESSAGE:Ljava/lang/String;

    .line 64
    new-instance p1, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController$1;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;)V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarMsmEventCallback:Landroid/car/hardware/msm/CarMsmManager$CarMsmEventCallback;

    .line 100
    new-instance p1, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController$2;

    invoke-direct {p1, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController$2;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;)V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarMsbEventCallback:Landroid/car/hardware/msb/CarMsbManager$CarMsbEventCallback;

    .line 113
    new-instance p1, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController$3;

    invoke-direct {p1, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController$3;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;)V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarSrsEventCallback:Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;

    const/4 p1, 0x0

    .line 142
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mPsnWelcomeSw:Ljava/lang/Boolean;

    .line 143
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mEsbSw:Ljava/lang/Boolean;

    const/16 p1, 0x32

    .line 1277
    iput p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->debugDrvSeatHorPos:I

    .line 1278
    iput p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->debugDrvSeatVerPos:I

    .line 1279
    iput p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->debugDrvSeatTiltPos:I

    .line 1280
    iput p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->debugDrvSeatLegPos:I

    .line 1281
    iput p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->debugDrvSeatCushionPos:I

    .line 1282
    iput p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->debugPsnSeatHorPos:I

    .line 1283
    iput p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->debugPsnSeatVerPos:I

    .line 1284
    iput p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->debugPsnSeatTiltPos:I

    .line 1285
    iput p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->debugPsnSeatSmallLegPos:I

    .line 1287
    iput p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->debugRLSeatHorPos:I

    .line 1288
    iput p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->debugRLSeatTiltPos:I

    .line 1289
    iput p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->debugRLSeatSmallLegPos:I

    .line 1290
    iput p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->debugRLSeatLegHorPos:I

    .line 1291
    iput p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->debugRLSeatHeadVerPos:I

    .line 1292
    iput p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->debugRLSeatHeadHorPos:I

    .line 1294
    iput p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->debugRRSeatHorPos:I

    .line 1295
    iput p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->debugRRSeatTiltPos:I

    .line 1296
    iput p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->debugRRSeatSmallLegPos:I

    .line 1297
    iput p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->debugRRSeatLegHorPos:I

    .line 1298
    iput p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->debugRRSeatHeadVerPos:I

    .line 1299
    iput p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->debugRRSeatHeadHorPos:I

    .line 1301
    iput p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->debugTLSeatTiltPos:I

    .line 1302
    iput p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->debugTLSeatHeadVerPos:I

    .line 1303
    iput p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->debugTRSeatHeadVerPos:I

    .line 1304
    iput p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->debugTRSeatTiltPos:I

    .line 1305
    iput p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->debugTMidSeatHeadVerPos:I

    .line 159
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mMsbPropIds:Ljava/util/List;

    .line 160
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->isMsbSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x21401c23

    .line 161
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mSrsPropIds:Ljava/util/List;

    .line 165
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->isSrsSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v0, :cond_1

    const v0, 0x21401c4f

    .line 167
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21401c0c

    .line 168
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_1
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->addSrsExtPropertyIds(Ljava/util/List;)V

    const-string v0, "isSupportPsnSrsSwitch"

    .line 179
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x21401cdb

    .line 180
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_2
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-nez p1, :cond_3

    .line 186
    new-instance p1, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$MsmController$pKjr3urmW97m2HIrTRKifzHx2ok;

    invoke-direct {p1, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$MsmController$pKjr3urmW97m2HIrTRKifzHx2ok;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;)V

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;ILjava/lang/String;IZ)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleMassagerStatusChange(ILjava/lang/String;IZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;ILjava/lang/String;II)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleMassageFailed(ILjava/lang/String;II)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;ILjava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleMassagerEffectChange(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;II)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleMassagerIntensityChange(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;Ljava/util/Set;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleRhythmIntensityChange(Ljava/util/Set;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;Ljava/util/Set;Z)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleRhythmStatusChange(Ljava/util/Set;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleRhythmModeChange(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;)Ljava/lang/Boolean;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mEsbSw:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$702(Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mEsbSw:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$800(Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleEsbMode(I)V

    return-void
.end method

.method private getChangeValue(II)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "direction",
            "value"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    add-int/lit8 p2, p2, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    add-int/lit8 p2, p2, -0x2

    :cond_1
    :goto_0
    const/16 p1, 0x64

    if-le p2, p1, :cond_2

    move p2, p1

    :cond_2
    if-gez p2, :cond_3

    const/4 p2, 0x0

    :cond_3
    return p2
.end method

.method private getDrvWaistReliefMode()I
    .locals 4

    const v0, 0x2140501a

    const/4 v1, 0x0

    .line 3392
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3395
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0}, Landroid/car/hardware/msm/CarMsmManager;->getDriverLumbRelaxMode()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 3397
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDrvWaistReliefMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MsmController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return v1
.end method

.method private getPsnWaistReliefMode()I
    .locals 4

    const v0, 0x2140501b

    const/4 v1, 0x0

    .line 3406
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3409
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0}, Landroid/car/hardware/msm/CarMsmManager;->getPassengerLumbRelaxMode()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 3411
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPsnWaistReliefMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MsmController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return v1
.end method

.method private handleBackBeltStatus(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4936
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter p1

    .line 4937
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4938
    invoke-interface {v2, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onBackBeltWaringChanged(Z)V

    goto :goto_1

    .line 4940
    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleDSeatCushion(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 4397
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->isSeatPosValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MsmController"

    .line 4398
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDSeatCushion pos is invalid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 4401
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4402
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4403
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onDSeatCushionPosChanged(I)V

    goto :goto_0

    .line 4405
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleDSeatHorz(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 4349
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->isSeatPosValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MsmController"

    .line 4350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDSeatHorz pos is not valid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 4353
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4354
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4355
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onDSeatHorzPosChanged(I)V

    goto :goto_0

    .line 4357
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleDSeatLeg(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 4385
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->isSeatPosValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MsmController"

    .line 4386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDSeatLeg pos is not valid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 4389
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4390
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4391
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onDSeatLegPosChanged(I)V

    goto :goto_0

    .line 4393
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleDSeatTilt(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 4373
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->isSeatPosValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MsmController"

    .line 4374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDSeatTilt pos is not valid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 4377
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4378
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4379
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onDSeatTiltPosChanged(I)V

    goto :goto_0

    .line 4381
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleDSeatVer(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 4361
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->isSeatPosValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MsmController"

    .line 4362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDSeatVer pos is not valid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 4365
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4366
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4367
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onDSeatVerPosChanged(I)V

    goto :goto_0

    .line 4369
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleDriverBeltStatus(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 4944
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4945
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4946
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onDrvBeltWaringChanged(I)V

    goto :goto_0

    .line 4948
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleDriverSeatAntiFatigueSw(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 5112
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5113
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 5114
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onDrvSeatAntiFatigueSwChanged(Z)V

    goto :goto_0

    .line 5116
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleDrvHeadrestStatus(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 5016
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5017
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    if-nez p1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 5018
    :goto_1
    invoke-interface {v2, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onDrvHeadrestChanged(Z)V

    goto :goto_0

    .line 5020
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleDrvLumbControlEnableChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 5096
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5097
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 5098
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onDrvSeatLumberControlEnableChanged(Z)V

    goto :goto_0

    .line 5100
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleDrvSeatLumberCenterPressed(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 4578
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4579
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4580
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onDrvSeatLumberSwitchPressStateChanged(I)V

    goto :goto_0

    .line 4582
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleEsbMode(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4561
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter p1

    .line 4562
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4563
    invoke-interface {v2, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onEsbChanged(Z)V

    goto :goto_1

    .line 4565
    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleMassageFailed(ILjava/lang/String;II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "index",
            "effect",
            "opCode",
            "errCode"
        }
    .end annotation

    .line 5064
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5065
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 5066
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onMassageFailed(ILjava/lang/String;II)V

    goto :goto_0

    .line 5068
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleMassagerEffectChange(ILjava/lang/String;)V
    .locals 3
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

    .line 5056
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5057
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 5058
    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onMassagerEffectChange(ILjava/lang/String;)V

    goto :goto_0

    .line 5060
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleMassagerIntensityChange(II)V
    .locals 3
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

    .line 5040
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5041
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 5042
    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onMassagerIntensityChange(II)V

    goto :goto_0

    .line 5044
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleMassagerStatusChange(ILjava/lang/String;IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "index",
            "effectId",
            "intensity",
            "running"
        }
    .end annotation

    .line 5048
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5049
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 5050
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onMassagerStatusChange(ILjava/lang/String;IZ)V

    goto :goto_0

    .line 5052
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleMsmdSeatAntiFatigueStatusChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 4910
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4911
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4912
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onMsmdSeatAntiFatigueStatusChanged(I)V

    goto :goto_0

    .line 4914
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleMsmdSeatLumbRelaxModeChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 4918
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4919
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4920
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onMsmdSeatLumbRelaxModeChanged(I)V

    goto :goto_0

    .line 4922
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleMsmdSeatMoveStateChanged(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 4894
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4895
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    if-nez p1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 4896
    :goto_1
    invoke-interface {v2, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onDrvSeatMoveStateChanged(Z)V

    goto :goto_0

    .line 4898
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleMsmpSeatLumbRelaxModeChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 4926
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4927
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4928
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onMsmpSeatLumbRelaxModeChanged(I)V

    goto :goto_0

    .line 4930
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleMsmpSeatMoveStateChanged(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 4902
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4903
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    if-nez p1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 4904
    :goto_1
    invoke-interface {v2, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onPsnSeatMoveStateChanged(Z)V

    goto :goto_0

    .line 4906
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handlePSeatLeg(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 4499
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->isSeatPosValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MsmController"

    .line 4500
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePSeatLeg pos is invalid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 4503
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4504
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4505
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onPSeatLegPosChanged(I)V

    goto :goto_0

    .line 4507
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handlePSeatVer(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 4475
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->isSeatPosValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MsmController"

    .line 4476
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePSeatVer pos is invalid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 4479
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4480
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4481
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onPSeatVerPosChanged(I)V

    goto :goto_0

    .line 4483
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handlePsnBeltStatus(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 4952
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4953
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4954
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onPsnBeltWaringChanged(I)V

    goto :goto_0

    .line 4956
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handlePsnHeadrestStatus(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 5024
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5025
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    if-nez p1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 5026
    :goto_1
    invoke-interface {v2, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onPsnHeadrestChanged(Z)V

    goto :goto_0

    .line 5028
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handlePsnLumbControlEnableChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 5104
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5105
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 5106
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onPsnSeatLumberControlEnableChanged(Z)V

    goto :goto_0

    .line 5108
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handlePsnOnSeat(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4570
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter p1

    .line 4571
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4572
    invoke-interface {v2, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onPsnOnSeatChanged(Z)V

    goto :goto_1

    .line 4574
    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handlePsnSeatLumberCenterPressed(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 4586
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4587
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4588
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onPsnSeatLumberSwitchPressStateChanged(I)V

    goto :goto_0

    .line 4590
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handlePsnSrsEnableStatus(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 5032
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5033
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 5034
    :goto_1
    invoke-interface {v2, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onPsnSrsEnableChanged(Z)V

    goto :goto_0

    .line 5036
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleRLSeatLeg(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 4535
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->isSeatPosValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MsmController"

    .line 4536
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRLSeatLeg pos is invalid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 4539
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4540
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4541
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onRLSeatLegPosChanged(I)V

    goto :goto_0

    .line 4543
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleRLSeatTilt(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 4511
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->isSeatPosValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MsmController"

    .line 4512
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRLSeatTilt pos is invalid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 4515
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4516
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4517
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onRLSeatTiltPosChanged(I)V

    goto :goto_0

    .line 4519
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleRRSeatLeg(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 4547
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->isSeatPosValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MsmController"

    .line 4548
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRRSeatLeg pos is invalid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 4551
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4552
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4553
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onRRSeatLegPosChanged(I)V

    goto :goto_0

    .line 4555
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleRRSeatTilt(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 4523
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->isSeatPosValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MsmController"

    .line 4524
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRRSeatTilt pos is invalid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 4527
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4528
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4529
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onRRSeatTiltPosChanged(I)V

    goto :goto_0

    .line 4531
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleRhythmIntensityChange(Ljava/util/Set;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ids",
            "intensity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 5072
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5073
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 5074
    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onRhythmIntensityChange(Ljava/util/Set;I)V

    goto :goto_0

    .line 5076
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleRhythmModeChange(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 5088
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5089
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 5090
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onRhythmModeChange(I)V

    goto :goto_0

    .line 5092
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleRhythmStatusChange(Ljava/util/Set;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ids",
            "running"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .line 5080
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5081
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 5082
    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onRhythmStatusChange(Ljava/util/Set;Z)V

    goto :goto_0

    .line 5084
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleRlOnSeat(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4961
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter p1

    .line 4962
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4963
    invoke-interface {v2, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onRlOnSeatChanged(Z)V

    goto :goto_1

    .line 4965
    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleRmOnSeat(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4970
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter p1

    .line 4971
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4972
    invoke-interface {v2, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onRmOnSeatChanged(Z)V

    goto :goto_1

    .line 4974
    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleRrOnSeat(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4979
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter p1

    .line 4980
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4981
    invoke-interface {v2, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onRrOnSeatChanged(Z)V

    goto :goto_1

    .line 4983
    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleSeatHabitChanged(II)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seat",
            "habitId"
        }
    .end annotation

    const-string v0, "MsmController"

    .line 4424
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "com.xiaopeng.privatecustomservice.APIRouterObserver"

    .line 4425
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "onEvent"

    .line 4426
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "event"

    const-string/jumbo v4, "trigger.seat.memory.switch"

    .line 4427
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 4428
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getHabitConfigs(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, "data"

    invoke-virtual {v2, p2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 4430
    :try_start_0
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 4431
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "trigger.seat.memory.switch: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4433
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "change.seat.memory.configs error."

    .line 4434
    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private handleSeatMemoryConfigChanged()V
    .locals 5

    const-string v0, "MsmController"

    .line 4409
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "com.xiaopeng.privatecustomservice.APIRouterObserver"

    .line 4410
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "onEvent"

    .line 4411
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "event"

    const-string v4, "change.seat.memory.configs"

    .line 4412
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 4413
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getSeatMemoryConfigs()Ljava/lang/String;

    move-result-object v3

    const-string v4, "data"

    invoke-virtual {v2, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 4415
    :try_start_0
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4416
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "change.seat.memory.configs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4418
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "change.seat.memory.configs error."

    .line 4419
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private handleSecRowLTEasyErr(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 4854
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4855
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4856
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onSecRowLTEasyErr(I)V

    goto :goto_0

    .line 4858
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleSecRowLTZeroErr(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 4838
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4839
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4840
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onSecRowLTZeroErr(I)V

    goto :goto_0

    .line 4842
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleSecRowLtEzOrZeroGStatusChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 4719
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4720
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4721
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onSecRowLtEzOrZeroGStatusChanged(I)V

    goto :goto_0

    .line 4723
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleSecRowLtSeatHeReHeigPosChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 4633
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->isSeatPosValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MsmController"

    .line 4634
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRLSeatVer pos is invalid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 4637
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4638
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4639
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onSecRowLtSeatHeReHeigPosChanged(I)V

    goto :goto_0

    .line 4641
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleSecRowLtSeatHeReHorzPosChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 4645
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->isSeatPosValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MsmController"

    .line 4646
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRLSeatVer pos is invalid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 4649
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4650
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4651
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onSecRowLtSeatHeReHorzPosChanged(I)V

    goto :goto_0

    .line 4653
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleSecRowLtSeatHorzPosChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 4594
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->isSeatPosValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MsmController"

    .line 4595
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRLSeatVer pos is invalid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 4598
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4599
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4600
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onSecRowLtSeatHorzPosChanged(I)V

    goto :goto_0

    .line 4602
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleSecRowLtSeatLeSuHeigPosChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 4620
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->isSeatPosValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MsmController"

    .line 4621
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRLSeatVer pos is invalid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 4624
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4625
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4626
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onSecRowLtSeatLeSuHeigPosChanged(I)V

    goto :goto_0

    .line 4628
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleSecRowLtSeatMoveStatusChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 4823
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4824
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4825
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onSecRowLtSeatMoveStatusChanged(I)V

    goto :goto_0

    .line 4827
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleSecRowLtSeatZeroGravPosChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 4694
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->isSeatPosValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MsmController"

    .line 4695
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRLSeatVer pos is invalid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 4698
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4699
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4700
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onSecRowLtSeatZeroGravPosChanged(I)V

    goto :goto_0

    .line 4702
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleSecRowRTEasyErr(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 4862
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4863
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4864
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onSecRowRTEasyErr(I)V

    goto :goto_0

    .line 4866
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleSecRowRTZeroErr(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 4846
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4847
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4848
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onSecRowRTZeroErr(I)V

    goto :goto_0

    .line 4850
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleSecRowRtEzOrZeroGStatusChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 4727
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4728
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4729
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onSecRowRtEzOrZeroGStatusChanged(I)V

    goto :goto_0

    .line 4731
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleSecRowRtSeatHeReHeigPosChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 4670
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->isSeatPosValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MsmController"

    .line 4671
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRLSeatVer pos is invalid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 4674
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4675
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4676
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onSecRowRtSeatHeReHeigPosChanged(I)V

    goto :goto_0

    .line 4678
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleSecRowRtSeatHeReHorzPosChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 4682
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->isSeatPosValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MsmController"

    .line 4683
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRLSeatVer pos is invalid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 4686
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4687
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4688
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onSecRowRtSeatHeReHorzPosChanged(I)V

    goto :goto_0

    .line 4690
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleSecRowRtSeatHorzPosChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 4607
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->isSeatPosValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MsmController"

    .line 4608
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRLSeatVer pos is invalid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 4611
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4612
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4613
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onSecRowRtSeatHorzPosChanged(I)V

    goto :goto_0

    .line 4615
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleSecRowRtSeatLeSuHeigPosChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 4657
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->isSeatPosValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MsmController"

    .line 4658
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRLSeatVer pos is invalid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 4661
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4662
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4663
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onSecRowRtSeatLeSuHeigPosChanged(I)V

    goto :goto_0

    .line 4665
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleSecRowRtSeatMoveStatusChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 4830
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4831
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4832
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onSecRowRtSeatMoveStatusChanged(I)V

    goto :goto_0

    .line 4834
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleSecRowRtSeatZeroGravPosChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 4706
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->isSeatPosValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MsmController"

    .line 4707
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRLSeatVer pos is invalid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 4710
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4711
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4712
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onSecRowRtSeatZeroGravPosChanged(I)V

    goto :goto_0

    .line 4714
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleTlOnSeat(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4988
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter p1

    .line 4989
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4990
    invoke-interface {v2, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onRrOnSeatChanged(Z)V

    goto :goto_1

    .line 4992
    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleTmOnSeat(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4997
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter p1

    .line 4998
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4999
    invoke-interface {v2, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onRrOnSeatChanged(Z)V

    goto :goto_1

    .line 5001
    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleTrOnSeat(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5006
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter p1

    .line 5007
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 5008
    invoke-interface {v2, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onRrOnSeatChanged(Z)V

    goto :goto_1

    .line 5010
    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleTrdRowLTFoldErr(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 4870
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4871
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4872
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onTrdRowLTFoldErr(I)V

    goto :goto_0

    .line 4874
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleTrdRowLtFoldStatusChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 4735
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4736
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4737
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onTrdRowLtFoldStatusChanged(I)V

    goto :goto_0

    .line 4739
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleTrdRowLtSeatFoldSuccess(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 4759
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4760
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4761
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onTrdRowLtSeatFoldSuccess(I)V

    goto :goto_0

    .line 4763
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleTrdRowLtSeatHeadVerticalPosChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 4799
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4800
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4801
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onTrdRowLtSeatHeadVerticalPosChanged(I)V

    goto :goto_0

    .line 4803
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleTrdRowLtSeatTiltPosChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 4783
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4784
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4785
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onTrdRowLtSeatTiltPosChangedpos(I)V

    goto :goto_0

    .line 4787
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleTrdRowMidSeatHeadVerticalPosChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 4815
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4816
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4817
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onTrdRowMidSeatHeadVerticalPosChanged(I)V

    goto :goto_0

    .line 4819
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleTrdRowRTFoldErr(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 4878
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4879
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4880
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onTrdRowRTFoldErr(I)V

    goto :goto_0

    .line 4882
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleTrdRowRtFoldStatusChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 4743
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4744
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4745
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onTrdRowRtFoldStatusChanged(I)V

    goto :goto_0

    .line 4747
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleTrdRowRtSeatFoldSuccess(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 4767
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4768
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4769
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onTrdRowRtSeatFoldSuccess(I)V

    goto :goto_0

    .line 4771
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleTrdRowRtSeatHeadVerticalPosChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 4807
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4808
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4809
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onTrdRowRtSeatHeadVerticalPosChanged(I)V

    goto :goto_0

    .line 4811
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleTrdRowRtSeatTiltPosChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 4791
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4792
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4793
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onTrdRowRtSeatTiltPosChanged(I)V

    goto :goto_0

    .line 4795
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleTrdRowStowErr(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 4886
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4887
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4888
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onTrdRowStowErr(I)V

    goto :goto_0

    .line 4890
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleTrdRowStowStatusChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 4775
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4776
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4777
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onTrdRowStowStatusChanged(I)V

    goto :goto_0

    .line 4779
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleTrdRowStowSuccess(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 4751
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4752
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4753
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onTrdRowStowSuccess(I)V

    goto :goto_0

    .line 4755
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private isSeatPosValid(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private synthetic lambda$setMassagerEffect$8(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "effectId",
            "index"
        }
    .end annotation

    .line 1222
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleMassagerEffectChange(ILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setMassagerIntensity$2(ILjava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "strength",
            "index"
        }
    .end annotation

    .line 925
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleMassagerIntensityChange(II)V

    return-void
.end method

.method private synthetic lambda$startMassager$3(Ljava/util/Set;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "seats",
            "effectId",
            "index"
        }
    .end annotation

    .line 1090
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getMassagerIntensity(I)I

    move-result v0

    .line 1091
    new-instance v1, Lcom/xiaopeng/xuimanager/seatmassager/Seat;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, v2, v0}, Lcom/xiaopeng/xuimanager/seatmassager/Seat;-><init>(II)V

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1092
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleMassagerStatusChange(ILjava/lang/String;IZ)V

    return-void
.end method

.method private synthetic lambda$startMassager$5(Ljava/util/Set;ILjava/lang/String;Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "seats",
            "intensity",
            "effectId",
            "index"
        }
    .end annotation

    .line 1115
    new-instance v0, Lcom/xiaopeng/xuimanager/seatmassager/Seat;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1, p2}, Lcom/xiaopeng/xuimanager/seatmassager/Seat;-><init>(II)V

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1116
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p4, 0x1

    invoke-direct {p0, p1, p3, p2, p4}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleMassagerStatusChange(ILjava/lang/String;IZ)V

    return-void
.end method

.method static synthetic lambda$startMassager$6(Ljava/util/Set;ILjava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "seats",
            "intensity",
            "index"
        }
    .end annotation

    .line 1121
    new-instance v0, Lcom/xiaopeng/xuimanager/seatmassager/Seat;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {v0, p2, p1}, Lcom/xiaopeng/xuimanager/seatmassager/Seat;-><init>(II)V

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$stopMassager$7(Ljava/lang/Integer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "index"
        }
    .end annotation

    .line 1137
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getMassagerEffectId(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getMassagerIntensity(I)I

    move-result p1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleMassagerStatusChange(ILjava/lang/String;IZ)V

    return-void
.end method

.method private mockMsbProperty()V
    .locals 5

    .line 4328
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x21401c23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/car/hardware/CarPropertyValue;

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    .line 4329
    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getDrvSeatEsb()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Landroid/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 4328
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private mockMsmProperty()V
    .locals 8

    .line 4287
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x21401c56

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/car/hardware/CarPropertyValue;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "getMSMSeatDefaultPos"

    .line 4289
    invoke-static {v6, v5}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v5

    aget v5, v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v1, v5}, Landroid/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 4287
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4290
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x21401c57

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/car/hardware/CarPropertyValue;

    new-array v5, v4, [Ljava/lang/Object;

    .line 4292
    invoke-static {v6, v5}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v5

    const/4 v7, 0x1

    aget v5, v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v1, v5}, Landroid/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 4290
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4293
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x21401c58

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/car/hardware/CarPropertyValue;

    new-array v4, v4, [Ljava/lang/Object;

    .line 4295
    invoke-static {v6, v4}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v4

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Landroid/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 4293
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4297
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mockExtMsmProperty()V

    return-void
.end method

.method private mockSrsProperty()V
    .locals 5

    .line 4333
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x21401c4f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/car/hardware/CarPropertyValue;

    const/4 v4, 0x0

    .line 4334
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Landroid/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 4333
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4338
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x21401c0c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/car/hardware/CarPropertyValue;

    .line 4339
    invoke-direct {v3, v1, v4}, Landroid/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 4338
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4340
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x21401c0d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/car/hardware/CarPropertyValue;

    .line 4341
    invoke-direct {v3, v1, v4}, Landroid/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 4340
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public ConvertMassageModeToNumber(Ljava/lang/String;)I
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation

    .line 5120
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v0, "vitality"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v7, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string/jumbo v0, "serpentine"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/4 v7, 0x7

    goto :goto_0

    :sswitch_2
    const-string v0, "refresh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v7, 0x6

    goto :goto_0

    :sswitch_3
    const-string v0, "recover"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v7, v1

    goto :goto_0

    :sswitch_4
    const-string v0, "catwalk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move v7, v2

    goto :goto_0

    :sswitch_5
    const-string/jumbo v0, "waist"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    move v7, v3

    goto :goto_0

    :sswitch_6
    const-string v0, "relax"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    move v7, v4

    goto :goto_0

    :sswitch_7
    const-string v0, "pulse"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    move v7, v5

    goto :goto_0

    :sswitch_8
    const-string v0, "double"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    move v7, v6

    :goto_0
    packed-switch v7, :pswitch_data_0

    return v6

    :pswitch_0
    return v5

    :pswitch_1
    return v1

    :pswitch_2
    return v3

    :pswitch_3
    return v4

    :pswitch_4
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f08842f -> :sswitch_8
        0x6611b99 -> :sswitch_7
        0x6760290 -> :sswitch_6
        0x6ba9d80 -> :sswitch_5
        0x2129369f -> :sswitch_4
        0x40872d64 -> :sswitch_3
        0x40b292db -> :sswitch_2
        0x559b6725 -> :sswitch_1
        0x5fb4bd22 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected addExtPropertyIds(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "propertyIds"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 372
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    const v0, 0x21401c59

    .line 373
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v0, "isSupportPsnSeatVerControl"

    .line 375
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "isSupportMsmP"

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x21401cd3

    .line 376
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v0, "isSupportDrvCushion"

    .line 378
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x21401d67

    .line 379
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v0, "isSupportPsnLeg"

    .line 381
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x21401d68

    .line 382
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v0, "isSupportPsnWelcomeMode"

    .line 384
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x21401478

    .line 385
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v0, "isSupportRearSeatCtrl"

    .line 387
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x21401d22

    .line 388
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21401d23

    .line 389
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21401dd0

    .line 390
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21401dd1

    .line 391
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "isSupportRearSeatLeg"

    .line 392
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x21401d69

    .line 393
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21401d6a

    .line 394
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string v0, "IsSupportSeatAntiFatigue"

    .line 397
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x2140501e

    .line 398
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    const v0, 0x21401dd2

    .line 400
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21401dd3

    .line 401
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->addSecRowPropertyIds(Ljava/util/List;)V

    .line 404
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->addTrdRowPropertyIds(Ljava/util/List;)V

    return-void
.end method

.method protected addSecRowPropertyIds(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "propertyIds"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "isSupportSecRowLegVer"

    .line 416
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x21401db0

    .line 417
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21401db5

    .line 418
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v0, "isSupportSecRowHor"

    .line 420
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x21401dae

    .line 421
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21401db3

    .line 422
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v0, "isSupportSecRowZeroGravity"

    .line 425
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x21401daf

    .line 426
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21401db4

    .line 427
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21405006

    .line 429
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21405007

    .line 430
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21405014

    .line 432
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21405015

    .line 433
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v0, "isSupportSecRowMemory"

    .line 436
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x21401da5

    .line 437
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21401da6

    .line 438
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21405004

    .line 439
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21405005

    .line 440
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21401dcb

    .line 441
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21401dcc

    .line 442
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v0, "isSupportSecRowHeadRest"

    .line 445
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x21401db1

    .line 446
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21401db2

    .line 447
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21401db6

    .line 448
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21401db7

    .line 449
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method protected addSrsExtPropertyIds(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "propertyIds"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 495
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    const v0, 0x21401c0d

    .line 496
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21401cc8

    .line 498
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21401cc9

    .line 499
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21401cca

    .line 500
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "isSupportTrdRowSeat"

    .line 502
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x21401ddd

    .line 503
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21401dde

    .line 504
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21401ddf

    .line 505
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected addTrdRowPropertyIds(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "propertyIds"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "isSupportTrdRowSeatControl"

    .line 457
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x21401db8

    .line 458
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21401dba

    .line 459
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v0, "isSupportTrdRowHeadRest"

    .line 461
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x21401db9

    .line 462
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21401dbb

    .line 463
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21401dcd

    .line 464
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21401dcf

    .line 465
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v0, "isSupportTrdRowMidHeadRest"

    .line 467
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x21401dbc

    .line 468
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21401dce

    .line 469
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v0, "isSupportTrdRowFold"

    .line 471
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x21401da9

    .line 473
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21401daa

    .line 475
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21401dbe

    .line 476
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21401dbf

    .line 477
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21405001

    .line 479
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21405002

    .line 480
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21405003

    .line 481
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21405016

    .line 483
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21405017

    .line 484
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v0, "isSupportTrdRowStow"

    .line 486
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x21401dab

    .line 488
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21401dc0

    .line 489
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method protected dependOnXuiManager()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected disconnect()V
    .locals 6

    .line 512
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "MsmController"

    if-eqz v0, :cond_0

    .line 514
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mPropertyIds:Ljava/util/List;

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarMsmEventCallback:Landroid/car/hardware/msm/CarMsmManager$CarMsmEventCallback;

    invoke-virtual {v0, v4, v5}, Landroid/car/hardware/msm/CarMsmManager;->unregisterPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 516
    invoke-static {v3, v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 520
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->isMsbSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarMsbManager:Landroid/car/hardware/msb/CarMsbManager;

    if-eqz v0, :cond_1

    .line 522
    :try_start_1
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mMsbPropIds:Ljava/util/List;

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarMsbEventCallback:Landroid/car/hardware/msb/CarMsbManager$CarMsbEventCallback;

    invoke-virtual {v0, v4, v5}, Landroid/car/hardware/msb/CarMsbManager;->unregisterPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_1
    .catch Landroid/car/CarNotConnectedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 524
    invoke-static {v3, v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 528
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->isSrsSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarSrsManager:Landroid/car/hardware/srs/CarSrsManager;

    if-eqz v0, :cond_2

    .line 530
    :try_start_2
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mSrsPropIds:Ljava/util/List;

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarSrsEventCallback:Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;

    invoke-virtual {v0, v4, v5}, Landroid/car/hardware/srs/CarSrsManager;->unregisterPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_2
    .catch Landroid/car/CarNotConnectedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 532
    invoke-static {v3, v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_2
    :goto_2
    return-void
.end method

.method public doVibrate(ILjava/lang/String;II)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "effect",
            "loop",
            "position"
        }
    .end annotation

    const-string v0, ", "

    .line 1165
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mSeatMassagerManager:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    if-eqz v1, :cond_0

    .line 1167
    :try_start_0
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->doVibrate(ILjava/lang/String;II)I

    move-result v1

    const-string v2, "MsmController"

    .line 1168
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doVibrate="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {v2, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1171
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public getBackBeltWStatus()Z
    .locals 5

    const v0, 0x21401c24

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3027
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3030
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarSrsManager:Landroid/car/hardware/srs/CarSrsManager;

    invoke-virtual {v0}, Landroid/car/hardware/srs/CarSrsManager;->getBackBeltSwStatus()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1

    :catch_1
    move-exception v0

    .line 3032
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBackBeltWStatus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MsmController"

    invoke-static {v3, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    return v2
.end method

.method public getCurrentSelectedPsnHabit()I
    .locals 1

    .line 3091
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getCurrentSelectedPsnHabit()I

    move-result v0

    return v0
.end method

.method public getCurrentSelectedRLHabit()I
    .locals 1

    .line 3096
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getCurrentSelectedRLHabit()I

    move-result v0

    return v0
.end method

.method public getCurrentSelectedRRHabit()I
    .locals 1

    .line 3101
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getCurrentSelectedRRHabit()I

    move-result v0

    return v0
.end method

.method public getDSeatCushionPos()I
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "getMSMSeatDefaultPos"

    .line 1956
    invoke-static {v2, v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v1

    const/4 v3, 0x4

    aget v1, v1, v3

    const-string v4, "isSupportDrvCushion"

    .line 1957
    invoke-static {v4}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v1, 0x21401d67

    .line 1959
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1962
    :catch_0
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v1}, Landroid/car/hardware/msm/CarMsmManager;->getDriverSeatLegHorzPosition()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 1964
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDriverSeatLegHorzPosition:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "MsmController"

    invoke-static {v4, v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    new-array v0, v0, [Ljava/lang/Object;

    .line 1965
    invoke-static {v2, v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v0

    aget v1, v0, v3

    :cond_0
    :goto_0
    return v1
.end method

.method public getDSeatHorzPos()I
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "getMSMSeatDefaultPos"

    .line 1815
    invoke-static {v2, v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v1

    aget v1, v1, v0

    const-string v3, "isSupportMsmD"

    .line 1816
    invoke-static {v3}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v1, 0x21401c56

    .line 1818
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1821
    :catch_0
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v1}, Landroid/car/hardware/msm/CarMsmManager;->getDriverSeatHorizPosition()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 1823
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDSeatHorzPos: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MsmController"

    invoke-static {v3, v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    new-array v1, v0, [Ljava/lang/Object;

    .line 1824
    invoke-static {v2, v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v1

    aget v1, v1, v0

    .line 1827
    :goto_0
    invoke-direct {p0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->isSeatPosValid(I)Z

    move-result v3

    if-nez v3, :cond_0

    new-array v1, v0, [Ljava/lang/Object;

    .line 1828
    invoke-static {v2, v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v1

    aget v1, v1, v0

    :cond_0
    return v1
.end method

.method public getDSeatLegPos()I
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "getMSMSeatDefaultPos"

    .line 1935
    invoke-static {v2, v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v1

    const/4 v3, 0x3

    aget v1, v1, v3

    const-string v4, "isSupportDrvLeg"

    .line 1936
    invoke-static {v4}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v1, 0x21401c59

    .line 1938
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1941
    :catch_0
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v1}, Landroid/car/hardware/msm/CarMsmManager;->getDriverSeatLegPosition()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 1943
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDSeatLegPos: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "MsmController"

    invoke-static {v4, v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    new-array v1, v0, [Ljava/lang/Object;

    .line 1944
    invoke-static {v2, v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v1

    aget v1, v1, v3

    .line 1947
    :goto_0
    invoke-direct {p0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->isSeatPosValid(I)Z

    move-result v4

    if-nez v4, :cond_0

    new-array v0, v0, [Ljava/lang/Object;

    .line 1948
    invoke-static {v2, v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v0

    aget v1, v0, v3

    :cond_0
    return v1
.end method

.method public getDSeatTiltPos()I
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "getMSMSeatDefaultPos"

    .line 1895
    invoke-static {v2, v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v1

    const/4 v3, 0x2

    aget v1, v1, v3

    const-string v4, "isSupportMsmD"

    .line 1896
    invoke-static {v4}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v1, 0x21401c58

    .line 1898
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1901
    :catch_0
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v1}, Landroid/car/hardware/msm/CarMsmManager;->getDriverSeatBackPosition()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 1903
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDSeatTiltPos: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "MsmController"

    invoke-static {v4, v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    new-array v1, v0, [Ljava/lang/Object;

    .line 1904
    invoke-static {v2, v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v1

    aget v1, v1, v3

    .line 1907
    :goto_0
    invoke-direct {p0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->isSeatPosValid(I)Z

    move-result v4

    if-nez v4, :cond_0

    new-array v0, v0, [Ljava/lang/Object;

    .line 1908
    invoke-static {v2, v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v0

    aget v1, v0, v3

    :cond_0
    return v1
.end method

.method public getDSeatVerPos()I
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "getMSMSeatDefaultPos"

    .line 1855
    invoke-static {v2, v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v1

    const/4 v3, 0x1

    aget v1, v1, v3

    const-string v4, "isSupportMsmD"

    .line 1856
    invoke-static {v4}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v1, 0x21401c57

    .line 1858
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1861
    :catch_0
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v1}, Landroid/car/hardware/msm/CarMsmManager;->getDriverSeatVertiPosition()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 1863
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDSeatVerPos: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "MsmController"

    invoke-static {v4, v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    new-array v1, v0, [Ljava/lang/Object;

    .line 1864
    invoke-static {v2, v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v1

    aget v1, v1, v3

    .line 1867
    :goto_0
    invoke-direct {p0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->isSeatPosValid(I)Z

    move-result v4

    if-nez v4, :cond_0

    new-array v0, v0, [Ljava/lang/Object;

    .line 1868
    invoke-static {v2, v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v0

    aget v1, v0, v3

    :cond_0
    return v1
.end method

.method public getDriverAntiFatigueStatus()I
    .locals 4

    const-string v0, "IsSupportSeatAntiFatigue"

    .line 4272
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x2140501e

    .line 4274
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4277
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0}, Landroid/car/hardware/msm/CarMsmManager;->getDriverAntiFatigueStatus()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 4279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDriverAntiFatigueStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MsmController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return v1
.end method

.method public getDriverSeatAntiFatigueSw()Z
    .locals 1

    .line 4238
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getDriverSeatAntiFatigueSw()Z

    move-result v0

    return v0
.end method

.method public getDriverSeatLumbControlSwitchEnable()Z
    .locals 1

    const-string v0, "isSupportSeatMassage"

    .line 3679
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3680
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 3681
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getDrvLumbControlSw()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDriverSeatLumberSwitchMode()I
    .locals 4

    const/4 v0, 0x0

    .line 827
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v1}, Landroid/car/hardware/msm/CarMsmManager;->getDriverSeatLumberSwitchMode()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 829
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDriverSeatLumberSwitchMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MsmController"

    invoke-static {v2, v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return v0
.end method

.method public getDriverSeatMoveState()I
    .locals 4

    const v0, 0x21401dd2

    const/4 v1, 0x0

    .line 2978
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2981
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0}, Landroid/car/hardware/msm/CarMsmManager;->getDriverSeatMoveState()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 2983
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDriverSeatMoveState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MsmController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return v1
.end method

.method public getDrvBeltStatus()I
    .locals 4

    const/4 v0, 0x0

    .line 3046
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarSrsManager:Landroid/car/hardware/srs/CarSrsManager;

    invoke-virtual {v1}, Landroid/car/hardware/srs/CarSrsManager;->getDriverBeltStatus()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3048
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDrvBeltStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MsmController"

    invoke-static {v2, v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return v0
.end method

.method public getDrvSeatPos(I)[I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 3107
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 3108
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getDrvSeatSavedPos(I)[I

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    new-array p1, p1, [I

    :goto_0
    if-nez p1, :cond_1

    .line 3114
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getCurrentSeatPos()[I

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public getDrvSeatPosIdx()I
    .locals 1

    .line 3073
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 3074
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getDrvSeatPosIdx()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDrvTargetSeatPos()[I
    .locals 1

    .line 3480
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 3481
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getDrvTargetSeatPos()[I

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEsbEnable()Z
    .locals 5

    const v0, 0x21401c23

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2813
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2816
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarMsbManager:Landroid/car/hardware/msb/CarMsbManager;

    invoke-virtual {v0}, Landroid/car/hardware/msb/CarMsbManager;->getMsbStatus()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1

    :catch_1
    move-exception v0

    .line 2818
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEsbEnable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MsmController"

    invoke-static {v3, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2819
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getDrvSeatEsb()Z

    move-result v2

    :goto_1
    return v2
.end method

.method public getEsbModeSp()Z
    .locals 1

    .line 2827
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getDrvSeatEsb()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mEsbSw:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public getHabitConfigs(II)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seat",
            "habitId"
        }
    .end annotation

    .line 4225
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "position"

    .line 4226
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "id"

    .line 4227
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4228
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4230
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const-string p1, ""

    .line 4232
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getHabitConfigs: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MsmController"

    invoke-static {v0, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public getMassageMode(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seatId"
        }
    .end annotation

    .line 3339
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 3340
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getMassageMode(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getMassagerEffectIDs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1255
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mSeatMassagerManager:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    if-eqz v0, :cond_0

    .line 1257
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mSeatMassagerManager:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->showMassagerEffect()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 1259
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1262
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getMassagerEffectId(I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1241
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mSeatMassagerManager:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    if-eqz v0, :cond_0

    .line 1243
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->getMassagerEffect(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MsmController"

    .line 1244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMassagerEffectId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 1247
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;->printStackTrace()V

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public getMassagerIntensity(I)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    const-string v0, "MsmController"

    .line 941
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mSeatMassagerManager:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 943
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->getMassagerIntensity(I)I

    move-result v1

    .line 944
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMassagerIntensity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ", "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception p1

    .line 947
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMassagerIntensity failed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    const/4 p1, 0x2

    return p1
.end method

.method public getPSeatHorzPos()I
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "getMSMSeatDefaultPos"

    .line 2046
    invoke-static {v2, v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v1

    aget v1, v1, v0

    const-string v3, "isSupportMsmP"

    .line 2047
    invoke-static {v3}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v1, 0x21401cd2

    .line 2049
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2052
    :catch_0
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v1}, Landroid/car/hardware/msm/CarMsmManager;->getPassengerSeatHorizontalPosition()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    new-array v3, v0, [Ljava/lang/Object;

    .line 2054
    invoke-static {v2, v3}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v3

    aget v3, v3, v0

    .line 2055
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPSeatHorzPos: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "MsmController"

    invoke-static {v4, v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    move v1, v3

    .line 2059
    :cond_0
    :goto_0
    invoke-direct {p0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->isSeatPosValid(I)Z

    move-result v3

    if-nez v3, :cond_1

    new-array v1, v0, [Ljava/lang/Object;

    .line 2060
    invoke-static {v2, v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v1

    aget v1, v1, v0

    :cond_1
    return v1
.end method

.method public getPSeatLegPos()I
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "getMSMSeatDefaultPos"

    .line 2195
    invoke-static {v2, v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v1

    const/4 v3, 0x4

    aget v1, v1, v3

    const-string v4, "isSupportPsnLeg"

    .line 2196
    invoke-static {v4}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v1, 0x21401d68

    .line 2198
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2201
    :catch_0
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v1}, Landroid/car/hardware/msm/CarMsmManager;->getPassengerSeatLegHorzPosition()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 2203
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPassengerSeatLegHorzPosition:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "MsmController"

    invoke-static {v4, v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    new-array v1, v0, [Ljava/lang/Object;

    .line 2204
    invoke-static {v2, v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v1

    aget v1, v1, v3

    .line 2208
    :cond_0
    :goto_0
    invoke-direct {p0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->isSeatPosValid(I)Z

    move-result v3

    if-nez v3, :cond_1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2209
    invoke-static {v2, v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v0

    const/4 v1, 0x2

    aget v1, v0, v1

    :cond_1
    return v1
.end method

.method public getPSeatTiltPos()I
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "getMSMSeatDefaultPos"

    .line 2158
    invoke-static {v2, v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v1

    const/4 v3, 0x2

    aget v1, v1, v3

    const-string v4, "isSupportMsmP"

    .line 2159
    invoke-static {v4}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v1, 0x21401cd4

    .line 2161
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2164
    :catch_0
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v1}, Landroid/car/hardware/msm/CarMsmManager;->getPassengerSeatBackPosition()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 2166
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPSeatTiltPos: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "MsmController"

    invoke-static {v4, v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    new-array v1, v0, [Ljava/lang/Object;

    .line 2167
    invoke-static {v2, v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v1

    aget v1, v1, v3

    .line 2171
    :cond_0
    :goto_0
    invoke-direct {p0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->isSeatPosValid(I)Z

    move-result v4

    if-nez v4, :cond_1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2172
    invoke-static {v2, v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v0

    aget v1, v0, v3

    :cond_1
    return v1
.end method

.method public getPSeatVerPos()I
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "getMSMSeatDefaultPos"

    .line 2067
    invoke-static {v2, v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v1

    const/4 v3, 0x1

    aget v1, v1, v3

    const-string v4, "isSupportPsnSeatVerControl"

    .line 2068
    invoke-static {v4}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "isSupportMsmP"

    invoke-static {v4}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v1, 0x21401cd3

    .line 2070
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2073
    :try_start_1
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v4, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v4}, Landroid/car/hardware/msm/CarMsmManager;->getPassengerSeatVerticalPosition()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2075
    :catch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPSeatVerPos, e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "MsmController"

    invoke-static {v4, v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    new-array v1, v0, [Ljava/lang/Object;

    .line 2076
    invoke-static {v2, v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v1

    aget v1, v1, v3

    .line 2080
    :cond_0
    :goto_0
    invoke-direct {p0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->isSeatPosValid(I)Z

    move-result v4

    if-nez v4, :cond_1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2081
    invoke-static {v2, v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v0

    aget v1, v0, v3

    :cond_1
    return v1
.end method

.method public getPassengerSeatLumbControlSwitchEnable()Z
    .locals 1

    const-string v0, "isSupportSeatMassage"

    .line 3704
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3705
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 3706
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getPsnLumbControlSw()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPassengerSeatLumberSwitchMode()I
    .locals 4

    const/4 v0, 0x0

    .line 838
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v1}, Landroid/car/hardware/msm/CarMsmManager;->getPassengerSeatLumberSwitchMode()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 840
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPassengerSeatLumberSwitchMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MsmController"

    invoke-static {v2, v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return v0
.end method

.method public getPassengerSeatMoveState()I
    .locals 4

    const v0, 0x21401dd3

    const/4 v1, 0x0

    .line 2994
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2997
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0}, Landroid/car/hardware/msm/CarMsmManager;->getPassengerSeatMoveState()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 2999
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPassengerSeatMoveState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MsmController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return v1
.end method

.method public getPsnBeltStatus()I
    .locals 4

    const v0, 0x21401c0d

    const/4 v1, 0x0

    .line 3059
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3062
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarSrsManager:Landroid/car/hardware/srs/CarSrsManager;

    invoke-virtual {v0}, Landroid/car/hardware/srs/CarSrsManager;->getPsnBeltStatus()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 3064
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPsnBeltStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MsmController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return v1
.end method

.method public getPsnSeatDefaultPos()[I
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "getMSMSeatDefaultPos"

    .line 3293
    invoke-static {v2, v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v1

    const/4 v2, 0x4

    new-array v3, v2, [I

    .line 3294
    aget v4, v1, v0

    aput v4, v3, v0

    const/4 v0, 0x1

    aget v4, v1, v0

    aput v4, v3, v0

    const/4 v0, 0x2

    aget v4, v1, v0

    aput v4, v3, v0

    aget v0, v1, v2

    const/4 v1, 0x3

    aput v0, v3, v1

    return-object v3
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

    const-string v0, "isSupportMsmP"

    .line 3309
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3310
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 3311
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getPsnSeatName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 3314
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/bean/seat/SeatIdConvert;->seatConvert(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPsnSeatPos()[I
    .locals 1

    const-string v0, "isSupportMsmP"

    .line 3176
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3177
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 3178
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getPsnSeatPos()[I

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [I

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPsnSeatPosIdx(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectId"
        }
    .end annotation

    .line 3082
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 3083
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getPsnSeatPosIdx(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getPsnSeatWelcomeMode()Z
    .locals 5

    const-string v0, "isSupportPsnWelcomeMode"

    .line 860
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const v0, 0x21401478

    .line 862
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v2, :cond_0

    :goto_0
    goto :goto_2

    .line 865
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0}, Landroid/car/hardware/msm/CarMsmManager;->getPassengerWelcomeSwitch()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    .line 867
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPassengerWelcomeSwitch failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MsmController"

    invoke-static {v3, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_2
    move v1, v2

    :cond_0
    return v1
.end method

.method public getPsnSelectSeatPos(I)[I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectId"
        }
    .end annotation

    const-string v0, "isSupportMsmP"

    .line 3121
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3122
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 3123
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getPsnSelectSeatPos(I)[I

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x4

    new-array p1, p1, [I

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPsnSrsEnable()Z
    .locals 5

    const-string v0, "isSupportPsnSrsSwitch"

    .line 792
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const v0, 0x21401cdb

    const/4 v2, 0x0

    .line 794
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    .line 797
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarSrsManager:Landroid/car/hardware/srs/CarSrsManager;

    invoke-virtual {v0}, Landroid/car/hardware/srs/CarSrsManager;->getPassengerCrashOccurSwSt()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 799
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPassengerCrashOccurSwSt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MsmController"

    invoke-static {v3, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return v1
.end method

.method public getPsnTargetSeatPos()[I
    .locals 1

    .line 3495
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 3496
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getPsnTargetSeatPos()[I

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRLSeatHeadHorPos()I
    .locals 5

    const-string v0, "isSupportRearSeatCtrl"

    .line 2416
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x32

    if-eqz v0, :cond_0

    const v0, 0x21401db2

    const/4 v2, 0x0

    .line 2418
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move v1, v0

    goto :goto_1

    .line 2421
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0}, Landroid/car/hardware/msm/CarMsmManager;->getSecRowLtSeatHeadHorzPos()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 2423
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRLSeatHeadHorPos:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MsmController"

    invoke-static {v3, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2426
    :goto_1
    invoke-direct {p0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->isSeatPosValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "getSecRowMSMSeatDefaultPos"

    .line 2427
    invoke-static {v1, v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v0

    const/4 v1, 0x6

    aget v1, v0, v1

    :cond_0
    return v1
.end method

.method public getRLSeatHeadVerPos()I
    .locals 5

    const-string v0, "isSupportRearSeatCtrl"

    .line 2380
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x32

    if-eqz v0, :cond_0

    const v0, 0x21401db1

    const/4 v2, 0x0

    .line 2382
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move v1, v0

    goto :goto_1

    .line 2385
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0}, Landroid/car/hardware/msm/CarMsmManager;->getSecRowLtSeatHeadVerticalPos()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 2387
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRLSeatHeadVerPos:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MsmController"

    invoke-static {v3, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2390
    :goto_1
    invoke-direct {p0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->isSeatPosValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "getSecRowMSMSeatDefaultPos"

    .line 2391
    invoke-static {v1, v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v0

    const/4 v1, 0x5

    aget v1, v0, v1

    :cond_0
    return v1
.end method

.method public getRLSeatHorPos()I
    .locals 4

    const-string v0, "isSupportRearSeatCtrl"

    .line 2276
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x21401dae

    .line 2278
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2281
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0}, Landroid/car/hardware/msm/CarMsmManager;->getSecRowLtSeatHorzPos()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 2283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRLSeatHorPos:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MsmController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    const/16 v0, 0x32

    .line 2287
    :goto_0
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->isSeatPosValid(I)Z

    move-result v2

    if-nez v2, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "getMSMSeatDefaultPos"

    .line 2288
    invoke-static {v2, v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v0

    aget v0, v0, v1

    :cond_1
    return v0
.end method

.method public getRLSeatLegHorPos()I
    .locals 1

    .line 2311
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getRLSeatLegPos()I

    move-result v0

    return v0
.end method

.method public getRLSeatLegPos()I
    .locals 4

    const-string v0, "isSupportRearSeatCtrl"

    .line 2670
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x21401d69

    .line 2672
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2675
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0}, Landroid/car/hardware/msm/CarMsmManager;->getSecRowLeftSeatLegHorzPosition()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 2677
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSecRowLeftSeatCushExtPosition:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MsmController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    const/16 v0, 0x32

    .line 2681
    :goto_0
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->isSeatPosValid(I)Z

    move-result v2

    if-nez v2, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "getMSMSeatDefaultPos"

    .line 2682
    invoke-static {v1, v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v0

    const/4 v1, 0x3

    aget v0, v0, v1

    :cond_1
    return v0
.end method

.method public getRLSeatLegVerPos()I
    .locals 4

    const-string v0, "isSupportRearSeatCtrl"

    .line 2327
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x21401db0

    .line 2329
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2332
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0}, Landroid/car/hardware/msm/CarMsmManager;->getSecRowLtSeatLegVerticalPos()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 2334
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRLSeatLegVerPos:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MsmController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    const/16 v0, 0x32

    .line 2338
    :goto_0
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->isSeatPosValid(I)Z

    move-result v2

    if-nez v2, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "getMSMSeatDefaultPos"

    .line 2339
    invoke-static {v1, v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v0

    const/4 v1, 0x4

    aget v0, v0, v1

    :cond_1
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

    const-string v0, "isSupportSecRowMemory"

    .line 3319
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3320
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 3321
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getRLSeatName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 3324
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/bean/seat/SeatIdConvert;->seatConvert(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRLSeatNowPos()[I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 3299
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getRLSeatHorPos()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getRLSeatZeroAngle()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getRLSeatTiltPos()I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getRLSeatLegPos()I

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getRLSeatLegHorPos()I

    move-result v1

    const/4 v2, 0x4

    aput v1, v0, v2

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getRLSeatHeadVerPos()I

    move-result v1

    const/4 v2, 0x5

    aput v1, v0, v2

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getRLSeatHeadHorPos()I

    move-result v1

    const/4 v2, 0x6

    aput v1, v0, v2

    return-object v0
.end method

.method public getRLSeatPos()[I
    .locals 1

    const-string v0, "isSupportSecRowMemory"

    .line 3188
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3189
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 3190
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getRLSeatPos()[I

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x7

    new-array v0, v0, [I

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRLSeatTiltPos()I
    .locals 4

    const-string v0, "isSupportRearSeatCtrl"

    .line 2256
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x21401d22

    .line 2258
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2261
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0}, Landroid/car/hardware/msm/CarMsmManager;->getSecrowLtSeatTiltPosition()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 2263
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRLSeatTiltPos:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MsmController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    const/16 v0, 0x32

    .line 2267
    :goto_0
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->isSeatPosValid(I)Z

    move-result v2

    if-nez v2, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "getMSMSeatDefaultPos"

    .line 2268
    invoke-static {v1, v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v0

    const/4 v1, 0x3

    aget v0, v0, v1

    :cond_1
    return v0
.end method

.method public getRLSeatZeroAngle()I
    .locals 3

    const-string v0, "isSupportSecRowZeroGravity"

    .line 2436
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x21401daf

    .line 2438
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2441
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0}, Landroid/car/hardware/msm/CarMsmManager;->getSecRowLtSeatAnglePos()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 2443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRLSeatHeadHorPos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "MsmController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    const/16 v0, 0x32

    :goto_0
    return v0
.end method

.method public getRLSelectSeatPos(I)[I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectId"
        }
    .end annotation

    const-string v0, "isSupportSecRowMemory"

    .line 3133
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3134
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 3135
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getRLSelectSeatPos(I)[I

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x4

    new-array p1, p1, [I

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRRSeatHeadHorPos()I
    .locals 4

    const-string v0, "isSupportRearSeatCtrl"

    .line 2622
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x21401db7

    .line 2624
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2627
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0}, Landroid/car/hardware/msm/CarMsmManager;->getSecRowRtSeatHeadHorzPos()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 2629
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRRSeatHeadHorPos:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MsmController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    const/16 v0, 0x32

    .line 2633
    :goto_0
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->isSeatPosValid(I)Z

    move-result v2

    if-nez v2, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "getSecRowMSMSeatDefaultPos"

    .line 2634
    invoke-static {v1, v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v0

    const/4 v1, 0x6

    aget v0, v0, v1

    :cond_1
    return v0
.end method

.method public getRRSeatHeadVerPos()I
    .locals 4

    const-string v0, "isSupportRearSeatCtrl"

    .line 2586
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x21401db6

    .line 2588
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2591
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0}, Landroid/car/hardware/msm/CarMsmManager;->getSecRowRtSeatHeadVerticalPos()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 2593
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRRSeatHeadVerPos:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MsmController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    const/16 v0, 0x32

    .line 2597
    :goto_0
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->isSeatPosValid(I)Z

    move-result v2

    if-nez v2, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "getSecRowMSMSeatDefaultPos"

    .line 2598
    invoke-static {v1, v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v0

    const/4 v1, 0x5

    aget v0, v0, v1

    :cond_1
    return v0
.end method

.method public getRRSeatHorPos()I
    .locals 3

    const-string v0, "isSupportRearSeatCtrl"

    .line 2502
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x21401db3

    .line 2504
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2507
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0}, Landroid/car/hardware/msm/CarMsmManager;->getSecRowRtSeatHorzPos()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 2509
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRRSeatHorPos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "MsmController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    const/16 v0, 0x32

    :goto_0
    return v0
.end method

.method public getRRSeatLegHorPos()I
    .locals 1

    .line 2528
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getRRSeatLegPos()I

    move-result v0

    return v0
.end method

.method public getRRSeatLegPos()I
    .locals 4

    const-string v0, "isSupportRearSeatCtrl"

    .line 2701
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x21401d6a

    .line 2703
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2706
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0}, Landroid/car/hardware/msm/CarMsmManager;->getSecRowRightSeatLegHorzPosition()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 2708
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSecRowLeftSeatCushExtPosition:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MsmController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    const/16 v0, 0x32

    .line 2712
    :goto_0
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->isSeatPosValid(I)Z

    move-result v2

    if-nez v2, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "getMSMSeatDefaultPos"

    .line 2713
    invoke-static {v1, v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v0

    const/4 v1, 0x3

    aget v0, v0, v1

    :cond_1
    return v0
.end method

.method public getRRSeatLegVerPos()I
    .locals 4

    const-string v0, "isSupportRearSeatCtrl"

    .line 2550
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x21401db5

    .line 2552
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2555
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0}, Landroid/car/hardware/msm/CarMsmManager;->getSecRowRtSeatLegVerticalPos()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 2557
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRRSeatLegVerPos:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MsmController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    const/16 v0, 0x32

    .line 2561
    :goto_0
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->isSeatPosValid(I)Z

    move-result v2

    if-nez v2, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "getMSMSeatDefaultPos"

    .line 2562
    invoke-static {v1, v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v0

    const/4 v1, 0x4

    aget v0, v0, v1

    :cond_1
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

    const-string v0, "isSupportSecRowMemory"

    .line 3329
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3330
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 3331
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getRRSeatName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 3334
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/bean/seat/SeatIdConvert;->seatConvert(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRRSeatNowPos()[I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 3304
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getRRSeatHorPos()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getRRSeatZeroAngle()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getRRSeatTiltPos()I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getRRSeatLegPos()I

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getRRSeatLegHorPos()I

    move-result v1

    const/4 v2, 0x4

    aput v1, v0, v2

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getRRSeatHeadVerPos()I

    move-result v1

    const/4 v2, 0x5

    aput v1, v0, v2

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getRRSeatHeadHorPos()I

    move-result v1

    const/4 v2, 0x6

    aput v1, v0, v2

    return-object v0
.end method

.method public getRRSeatPos()[I
    .locals 1

    const-string v0, "isSupportSecRowMemory"

    .line 3200
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3201
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 3202
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getRRSeatPos()[I

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x7

    new-array v0, v0, [I

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRRSeatTiltPos()I
    .locals 3

    const-string v0, "isSupportRearSeatCtrl"

    .line 2469
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x21401d23

    .line 2471
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2474
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0}, Landroid/car/hardware/msm/CarMsmManager;->getSecrowRtSeatTiltPosition()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 2476
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRRSeatTiltPos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "MsmController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    const/16 v0, 0x32

    :goto_0
    return v0
.end method

.method public getRRSeatZeroAngle()I
    .locals 3

    const-string v0, "isSupportSecRowZeroGravity"

    .line 2642
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x21401db4

    .line 2644
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2647
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0}, Landroid/car/hardware/msm/CarMsmManager;->getSecRowRtSeatAnglePos()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 2649
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRLSeatHeadHorPos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "MsmController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    const/16 v0, 0x32

    :goto_0
    return v0
.end method

.method public getRRSelectSeatPos(I)[I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectId"
        }
    .end annotation

    const-string v0, "isSupportSecRowMemory"

    .line 3145
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3146
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 3147
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getRRSelectSeatPos(I)[I

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x4

    new-array p1, p1, [I

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getRegisterPropertyIds()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 347
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 348
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v1, :cond_0

    const v1, 0x21401c56

    .line 349
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x21401c57

    .line 350
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x21401c58

    .line 351
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v1, "isSupportMsmP"

    .line 353
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v1, :cond_1

    const v1, 0x21401cd2

    .line 354
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x21401cd4

    .line 355
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v1, "isSupportHeadrestStatus"

    .line 357
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v1, :cond_2

    const v1, 0x21401cd5

    .line 358
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x21401cd6

    .line 359
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v1, "isSupportDriverWaistRelax"

    .line 361
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x2140501a

    .line 362
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v1, "isSupportPassengerWaistRelax"

    .line 364
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x2140501b

    .line 365
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    :cond_4
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->addExtPropertyIds(Ljava/util/List;)V

    return-object v0
.end method

.method public getRhythmIntensity(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 997
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mSeatMassagerManager:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    if-eqz v0, :cond_0

    .line 999
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->getRhythmIntensity(I)I

    move-result p1

    const-string v0, "MsmController"

    .line 1000
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRhythmIntensity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 1003
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p1, 0x3

    return p1
.end method

.method public getRhythmMode()I
    .locals 4

    .line 1206
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mSeatMassagerManager:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    if-eqz v0, :cond_0

    .line 1208
    :try_start_0
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->getRhythmPattern()I

    move-result v0

    const-string v1, "MsmController"

    .line 1209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRhythmMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1212
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;->printStackTrace()V

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getRlFuncTrigSource()I
    .locals 5

    const-string v0, "getRlFuncTrigSource:"

    const-string v1, "MsmController"

    const/4 v2, 0x0

    .line 3434
    :try_start_0
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v3, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v3}, Landroid/car/hardware/msm/CarMsmManager;->getSecRowLeftSeatFunctionTrigSource()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 3436
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    move v3, v2

    .line 3438
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v3
.end method

.method public getRrFuncTrigSource()I
    .locals 5

    const-string v0, "getRrFuncTrigSource:"

    const-string v1, "MsmController"

    const/4 v2, 0x0

    .line 3446
    :try_start_0
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v3, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v3}, Landroid/car/hardware/msm/CarMsmManager;->getSecRowRightSeatFunctionTrigSource()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 3448
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    move v3, v2

    .line 3450
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v3
.end method

.method public getSeatMemoryConfigs()Ljava/lang/String;
    .locals 11

    .line 4185
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4186
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_5

    if-nez v3, :cond_0

    const-string v5, "isSupportMsmP"

    .line 4188
    invoke-static {v5}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_3

    :cond_0
    if-lez v3, :cond_1

    const-string v5, "isSupportSecRowMemory"

    .line 4191
    invoke-static {v5}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_3

    .line 4194
    :cond_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "position"

    add-int/lit8 v7, v3, 0x1

    .line 4195
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4196
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    move v7, v2

    :goto_1
    if-ge v7, v4, :cond_4

    .line 4198
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const-string v9, "id"

    .line 4199
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "name"

    if-nez v3, :cond_2

    .line 4201
    :try_start_1
    invoke-virtual {p0, v7}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getPsnSeatName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_2
    const/4 v10, 0x1

    if-ne v3, v10, :cond_3

    .line 4203
    invoke-virtual {p0, v7}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getRLSeatName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 4205
    :cond_3
    invoke-virtual {p0, v7}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getRRSeatName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4207
    :goto_2
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    const-string v4, "configs"

    .line 4209
    invoke-virtual {v5, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4210
    invoke-virtual {v1, v3, v5}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    const-string v2, "data"

    .line 4212
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4213
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 4215
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const-string v0, ""

    .line 4217
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSeatMemoryConfigs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MsmController"

    invoke-static {v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getSecRowLTFuctionStatus()I
    .locals 4

    const v0, 0x21401dcb

    const/4 v1, 0x0

    .line 3830
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3833
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0}, Landroid/car/hardware/msm/CarMsmManager;->getSecRowLtSeatState()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 3835
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSecRowLTFuctionStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MsmController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return v1
.end method

.method public getSecRowLTMoveStatus()I
    .locals 4

    const v0, 0x21401dd0

    const/4 v1, 0x0

    .line 3860
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3863
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0}, Landroid/car/hardware/msm/CarMsmManager;->getSecRowLtSeatMoveState()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 3865
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSecRowLTMoveStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MsmController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return v1
.end method

.method public getSecRowLtSeatZeroGrav()I
    .locals 4

    const v0, 0x21401da5

    const/4 v1, 0x0

    .line 3800
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3803
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0}, Landroid/car/hardware/msm/CarMsmManager;->getSecRowLeftSeatFuncSt()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 3805
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSecRowLtSeatZeroGrav:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MsmController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return v1
.end method

.method public getSecRowRTFuctionStatus()I
    .locals 4

    const v0, 0x21401dcc

    const/4 v1, 0x0

    .line 3845
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3848
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0}, Landroid/car/hardware/msm/CarMsmManager;->getSecRowRtSeatState()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 3850
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSecRowRTFuctionStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MsmController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return v1
.end method

.method public getSecRowRTMoveStatus()I
    .locals 4

    const v0, 0x21401dd1

    const/4 v1, 0x0

    .line 3875
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3878
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0}, Landroid/car/hardware/msm/CarMsmManager;->getSecRowRtSeatMoveState()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 3880
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSecRowRTMoveStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MsmController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return v1
.end method

.method public getSecRowRtSeatZeroGrav()I
    .locals 4

    const v0, 0x21401da6

    const/4 v1, 0x0

    .line 3815
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3818
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0}, Landroid/car/hardware/msm/CarMsmManager;->getSecRowRightSeatFuncSt()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 3820
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSecRowRtSeatZeroGrav:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MsmController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return v1
.end method

.method public getTlFuncTrigSource()I
    .locals 5

    const-string v0, "getTlFuncTrigSource:"

    const-string v1, "MsmController"

    const/4 v2, 0x0

    .line 3458
    :try_start_0
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v3, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v3}, Landroid/car/hardware/msm/CarMsmManager;->getTrdRowLeftSeatFunctionTrigSource()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 3460
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    move v3, v2

    .line 3462
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v3
.end method

.method public getTrFuncTrigSource()I
    .locals 5

    const-string v0, "getTrFuncTrigSource:"

    const-string v1, "MsmController"

    const/4 v2, 0x0

    .line 3470
    :try_start_0
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v3, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v3}, Landroid/car/hardware/msm/CarMsmManager;->getTrdRowRightSeatFunctionTrigSource()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 3472
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    move v3, v2

    .line 3474
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v3
.end method

.method public getTrdRowLTHeadStatus()I
    .locals 4

    const v0, 0x21401dcd

    const/4 v1, 0x0

    .line 3890
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3893
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0}, Landroid/car/hardware/msm/CarMsmManager;->getTrdRowLtSeatHeadMoveState()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 3895
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTrdRowLTHeadStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MsmController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return v1
.end method

.method public getTrdRowLeftSeatTiltState()I
    .locals 4

    const v0, 0x21401dbe

    const/4 v1, 0x0

    .line 3935
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3938
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0}, Landroid/car/hardware/msm/CarMsmManager;->getTrdRowLeftSeatTiltState()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 3940
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTrdRowLeftSeatTiltState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MsmController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return v1
.end method

.method public getTrdRowLtSeatFol()I
    .locals 4

    const v0, 0x21401da9

    const/4 v1, 0x0

    .line 3995
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3998
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0}, Landroid/car/hardware/msm/CarMsmManager;->getMsmtLeftSeatFoldFunSt()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 4000
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTrdRowLtSeatFol:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MsmController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return v1
.end method

.method public getTrdRowLtSeatHeadVerticalPos()I
    .locals 4

    const v0, 0x21401db9

    const/4 v1, 0x0

    .line 4055
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4058
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0}, Landroid/car/hardware/msm/CarMsmManager;->getTrdRowLtSeatHeadVerticalPos()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 4060
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTrdRowLtSeatHeadVerticalPos:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MsmController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return v1
.end method

.method public getTrdRowLtSeatTiltPos()I
    .locals 4

    const v0, 0x21401db8

    const/4 v1, 0x0

    .line 4025
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4028
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0}, Landroid/car/hardware/msm/CarMsmManager;->getTrdRowLtSeatTiltPos()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 4030
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTrdRowLtSeatTiltPos:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MsmController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return v1
.end method

.method public getTrdRowMidHeadStatus()I
    .locals 4

    const v0, 0x21401dce

    const/4 v1, 0x0

    .line 3920
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3923
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0}, Landroid/car/hardware/msm/CarMsmManager;->getTrdRowMidSeatHeadMoveState()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 3925
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTrdRowMidHeadStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MsmController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return v1
.end method

.method public getTrdRowMidSeatHeadVerticalPos()I
    .locals 4

    const v0, 0x21401dbc

    const/4 v1, 0x0

    .line 4085
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4088
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0}, Landroid/car/hardware/msm/CarMsmManager;->getTrdRowMidSeatHeadVerticalPos()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 4090
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTrdRowMidSeatHeadVerticalPos:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MsmController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return v1
.end method

.method public getTrdRowRTHeadStatus()I
    .locals 4

    const v0, 0x21401dcf

    const/4 v1, 0x0

    .line 3905
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3908
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0}, Landroid/car/hardware/msm/CarMsmManager;->getTrdRowRtSeatHeadMoveState()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 3910
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTrdRowRTHeadStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MsmController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return v1
.end method

.method public getTrdRowRightSeatTiltState()I
    .locals 4

    const v0, 0x21401dbf

    const/4 v1, 0x0

    .line 3950
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3953
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0}, Landroid/car/hardware/msm/CarMsmManager;->getTrdRowRightSeatTiltState()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 3955
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTrdRowRightSeatTiltState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MsmController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return v1
.end method

.method public getTrdRowRtSeatFol()I
    .locals 4

    const v0, 0x21401daa

    const/4 v1, 0x0

    .line 4010
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4013
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0}, Landroid/car/hardware/msm/CarMsmManager;->getMsmtRightSeatFoldFunSt()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 4015
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTrdRowRtSeatFol:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MsmController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return v1
.end method

.method public getTrdRowRtSeatHeadVerticalPos()I
    .locals 4

    const v0, 0x21401dbb

    const/4 v1, 0x0

    .line 4070
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4073
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0}, Landroid/car/hardware/msm/CarMsmManager;->getTrdRowRtSeatHeadVerticalPos()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 4075
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTrdRowRtSeatHeadVerticalPos:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MsmController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return v1
.end method

.method public getTrdRowRtSeatTiltPos()I
    .locals 4

    const v0, 0x21401dba

    const/4 v1, 0x0

    .line 4040
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4043
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0}, Landroid/car/hardware/msm/CarMsmManager;->getTrdRowRtSeatTiltPos()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 4045
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTrdRowRtSeatTiltPos:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MsmController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return v1
.end method

.method public getTrdRowSeatStow()I
    .locals 4

    const v0, 0x21401dab

    const/4 v1, 0x0

    .line 3980
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3983
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0}, Landroid/car/hardware/msm/CarMsmManager;->getMsmtSeatStowFunSt()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 3985
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTrdRowSeatStow:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MsmController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return v1
.end method

.method public getTrdRowSeatStowState()I
    .locals 4

    const v0, 0x21401dc0

    const/4 v1, 0x0

    .line 3965
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3968
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0}, Landroid/car/hardware/msm/CarMsmManager;->getTrdRowSeatStowState()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 3970
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTrdRowSeatStowState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MsmController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return v1
.end method

.method public getVibrateEffectIDs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1267
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mSeatMassagerManager:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    if-eqz v0, :cond_0

    .line 1269
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mSeatMassagerManager:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->showVibrateEffect()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 1271
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1274
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getVibrateIntensity(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 967
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mSeatMassagerManager:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    if-eqz v0, :cond_0

    .line 969
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->getVibrateIntensity(I)I

    move-result p1

    const-string v0, "MsmController"

    .line 970
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVibrateIntensity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 973
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/16 p1, 0xa

    return p1
.end method

.method public getWaistReliefMemoryMode(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seatId"
        }
    .end annotation

    .line 3353
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 3354
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getWaistReliefMemoryMode(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getWaistReliefMode(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seatId"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 3381
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getDrvWaistReliefMode()I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 3383
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getPsnWaistReliefMode()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected handleCarEventsUpdate(Landroid/car/hardware/CarPropertyValue;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/car/hardware/CarPropertyValue<",
            "*>;)V"
        }
    .end annotation

    .line 539
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$MsmController$ACijDHbKtQ1MYn2246AV5O6_psI;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$MsmController$ACijDHbKtQ1MYn2246AV5O6_psI;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;Landroid/car/hardware/CarPropertyValue;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected handleEventsUpdate(Landroid/car/hardware/CarPropertyValue;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/car/hardware/CarPropertyValue<",
            "*>;)V"
        }
    .end annotation

    .line 549
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handle unknown event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MsmController"

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 775
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleMsmdSeatAntiFatigueStatusChanged(I)V

    goto/16 :goto_0

    .line 781
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleMsmpSeatLumbRelaxModeChanged(I)V

    goto/16 :goto_0

    .line 778
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleMsmdSeatLumbRelaxModeChanged(I)V

    goto/16 :goto_0

    .line 749
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleSecRowRTZeroErr(I)V

    goto/16 :goto_0

    .line 746
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleSecRowLTZeroErr(I)V

    goto/16 :goto_0

    .line 755
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleSecRowRTEasyErr(I)V

    goto/16 :goto_0

    .line 752
    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleSecRowLTEasyErr(I)V

    goto/16 :goto_0

    .line 765
    :sswitch_7
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleTrdRowStowErr(I)V

    goto/16 :goto_0

    .line 762
    :sswitch_8
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleTrdRowRTFoldErr(I)V

    goto/16 :goto_0

    .line 759
    :sswitch_9
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleTrdRowLTFoldErr(I)V

    goto/16 :goto_0

    .line 646
    :sswitch_a
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleTrOnSeat(I)V

    goto/16 :goto_0

    .line 642
    :sswitch_b
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleTmOnSeat(I)V

    goto/16 :goto_0

    .line 638
    :sswitch_c
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleTlOnSeat(I)V

    goto/16 :goto_0

    .line 772
    :sswitch_d
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleMsmpSeatMoveStateChanged(I)V

    goto/16 :goto_0

    .line 769
    :sswitch_e
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleMsmdSeatMoveStateChanged(I)V

    goto/16 :goto_0

    .line 733
    :sswitch_f
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleSecRowRtSeatMoveStatusChanged(I)V

    goto/16 :goto_0

    .line 730
    :sswitch_10
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleSecRowLtSeatMoveStatusChanged(I)V

    goto/16 :goto_0

    .line 736
    :sswitch_11
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleTrdRowStowSuccess(I)V

    goto/16 :goto_0

    .line 742
    :sswitch_12
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleTrdRowRtSeatFoldSuccess(I)V

    goto/16 :goto_0

    .line 739
    :sswitch_13
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleTrdRowLtSeatFoldSuccess(I)V

    goto/16 :goto_0

    .line 727
    :sswitch_14
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleTrdRowMidSeatHeadVerticalPosChanged(I)V

    goto/16 :goto_0

    .line 724
    :sswitch_15
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleTrdRowRtSeatHeadVerticalPosChanged(I)V

    goto/16 :goto_0

    .line 718
    :sswitch_16
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleTrdRowRtSeatTiltPosChanged(I)V

    goto/16 :goto_0

    .line 721
    :sswitch_17
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleTrdRowLtSeatHeadVerticalPosChanged(I)V

    goto/16 :goto_0

    .line 715
    :sswitch_18
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleTrdRowLtSeatTiltPosChanged(I)V

    goto/16 :goto_0

    .line 690
    :sswitch_19
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleSecRowRtSeatHeReHorzPosChanged(I)V

    goto/16 :goto_0

    .line 687
    :sswitch_1a
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleSecRowRtSeatHeReHeigPosChanged(I)V

    goto/16 :goto_0

    .line 684
    :sswitch_1b
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleSecRowRtSeatLeSuHeigPosChanged(I)V

    goto/16 :goto_0

    .line 697
    :sswitch_1c
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleSecRowRtSeatZeroGravPosChanged(I)V

    goto/16 :goto_0

    .line 672
    :sswitch_1d
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleSecRowRtSeatHorzPosChanged(I)V

    goto/16 :goto_0

    .line 681
    :sswitch_1e
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleSecRowLtSeatHeReHorzPosChanged(I)V

    goto/16 :goto_0

    .line 678
    :sswitch_1f
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleSecRowLtSeatHeReHeigPosChanged(I)V

    goto/16 :goto_0

    .line 675
    :sswitch_20
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleSecRowLtSeatLeSuHeigPosChanged(I)V

    goto/16 :goto_0

    .line 694
    :sswitch_21
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleSecRowLtSeatZeroGravPosChanged(I)V

    goto/16 :goto_0

    .line 669
    :sswitch_22
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleSecRowLtSeatHorzPosChanged(I)V

    goto/16 :goto_0

    .line 712
    :sswitch_23
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleTrdRowStowStatusChanged(I)V

    goto/16 :goto_0

    .line 709
    :sswitch_24
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleTrdRowRtFoldStatusChanged(I)V

    goto/16 :goto_0

    .line 706
    :sswitch_25
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleTrdRowLtFoldStatusChanged(I)V

    goto/16 :goto_0

    .line 703
    :sswitch_26
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleSecRowRtEzOrZeroGStatusChanged(I)V

    goto/16 :goto_0

    .line 700
    :sswitch_27
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleSecRowLtEzOrZeroGStatusChanged(I)V

    goto/16 :goto_0

    .line 622
    :sswitch_28
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleRRSeatLeg(I)V

    goto/16 :goto_0

    .line 619
    :sswitch_29
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleRLSeatLeg(I)V

    goto/16 :goto_0

    .line 610
    :sswitch_2a
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handlePSeatLeg(I)V

    goto/16 :goto_0

    .line 564
    :sswitch_2b
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleDSeatCushion(I)V

    goto/16 :goto_0

    .line 665
    :sswitch_2c
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handlePsnSeatLumberCenterPressed(I)V

    goto/16 :goto_0

    .line 661
    :sswitch_2d
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleDrvSeatLumberCenterPressed(I)V

    goto/16 :goto_0

    .line 616
    :sswitch_2e
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleRRSeatTilt(I)V

    goto/16 :goto_0

    .line 613
    :sswitch_2f
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleRLSeatTilt(I)V

    goto/16 :goto_0

    .line 657
    :sswitch_30
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handlePsnSrsEnableStatus(I)V

    goto/16 :goto_0

    .line 653
    :sswitch_31
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handlePsnHeadrestStatus(I)V

    goto/16 :goto_0

    .line 650
    :sswitch_32
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleDrvHeadrestStatus(I)V

    goto/16 :goto_0

    .line 604
    :sswitch_33
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handlePSeatTilt(I)V

    goto/16 :goto_0

    .line 607
    :sswitch_34
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handlePSeatVer(I)V

    goto/16 :goto_0

    .line 601
    :sswitch_35
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handlePSeatHorz(I)V

    goto/16 :goto_0

    .line 634
    :sswitch_36
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleRrOnSeat(I)V

    goto/16 :goto_0

    .line 630
    :sswitch_37
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleRmOnSeat(I)V

    goto/16 :goto_0

    .line 626
    :sswitch_38
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleRlOnSeat(I)V

    goto/16 :goto_0

    .line 561
    :sswitch_39
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleDSeatLeg(I)V

    goto/16 :goto_0

    .line 557
    :sswitch_3a
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleDSeatTilt(I)V

    goto/16 :goto_0

    .line 554
    :sswitch_3b
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleDSeatVer(I)V

    goto :goto_0

    .line 551
    :sswitch_3c
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleDSeatHorz(I)V

    goto :goto_0

    .line 586
    :sswitch_3d
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handlePsnOnSeat(I)V

    goto :goto_0

    .line 589
    :sswitch_3e
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleBackBeltStatus(I)V

    goto :goto_0

    .line 583
    :sswitch_3f
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleEsbMode(I)V

    goto :goto_0

    .line 595
    :sswitch_40
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handlePsnBeltStatus(I)V

    goto :goto_0

    .line 592
    :sswitch_41
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleDriverBeltStatus(I)V

    goto :goto_0

    .line 598
    :sswitch_42
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handlePsnSeatWelcomeModeUpdate(I)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x21401478 -> :sswitch_42
        0x21401c0c -> :sswitch_41
        0x21401c0d -> :sswitch_40
        0x21401c23 -> :sswitch_3f
        0x21401c24 -> :sswitch_3e
        0x21401c4f -> :sswitch_3d
        0x21401c56 -> :sswitch_3c
        0x21401c57 -> :sswitch_3b
        0x21401c58 -> :sswitch_3a
        0x21401c59 -> :sswitch_39
        0x21401cc8 -> :sswitch_38
        0x21401cc9 -> :sswitch_37
        0x21401cca -> :sswitch_36
        0x21401cd2 -> :sswitch_35
        0x21401cd3 -> :sswitch_34
        0x21401cd4 -> :sswitch_33
        0x21401cd5 -> :sswitch_32
        0x21401cd6 -> :sswitch_31
        0x21401cdb -> :sswitch_30
        0x21401d22 -> :sswitch_2f
        0x21401d23 -> :sswitch_2e
        0x21401d4f -> :sswitch_2d
        0x21401d51 -> :sswitch_2c
        0x21401d67 -> :sswitch_2b
        0x21401d68 -> :sswitch_2a
        0x21401d69 -> :sswitch_29
        0x21401d6a -> :sswitch_28
        0x21401da5 -> :sswitch_27
        0x21401da6 -> :sswitch_26
        0x21401da9 -> :sswitch_25
        0x21401daa -> :sswitch_24
        0x21401dab -> :sswitch_23
        0x21401dae -> :sswitch_22
        0x21401daf -> :sswitch_21
        0x21401db0 -> :sswitch_20
        0x21401db1 -> :sswitch_1f
        0x21401db2 -> :sswitch_1e
        0x21401db3 -> :sswitch_1d
        0x21401db4 -> :sswitch_1c
        0x21401db5 -> :sswitch_1b
        0x21401db6 -> :sswitch_1a
        0x21401db7 -> :sswitch_19
        0x21401db8 -> :sswitch_18
        0x21401db9 -> :sswitch_17
        0x21401dba -> :sswitch_16
        0x21401dbb -> :sswitch_15
        0x21401dbc -> :sswitch_14
        0x21401dbe -> :sswitch_13
        0x21401dbf -> :sswitch_12
        0x21401dc0 -> :sswitch_11
        0x21401dd0 -> :sswitch_10
        0x21401dd1 -> :sswitch_f
        0x21401dd2 -> :sswitch_e
        0x21401dd3 -> :sswitch_d
        0x21401ddd -> :sswitch_c
        0x21401dde -> :sswitch_b
        0x21401ddf -> :sswitch_a
        0x21405001 -> :sswitch_9
        0x21405002 -> :sswitch_8
        0x21405003 -> :sswitch_7
        0x21405004 -> :sswitch_6
        0x21405005 -> :sswitch_5
        0x21405006 -> :sswitch_4
        0x21405007 -> :sswitch_3
        0x2140501a -> :sswitch_2
        0x2140501b -> :sswitch_1
        0x2140501e -> :sswitch_0
    .end sparse-switch
.end method

.method protected handlePSeatHorz(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 4455
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->isSeatPosValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MsmController"

    .line 4456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePSeatHorz pos is not valid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 4459
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4460
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4461
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onPSeatHorzPosChanged(I)V

    goto :goto_0

    .line 4463
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected handlePSeatTilt(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 4487
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->isSeatPosValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MsmController"

    .line 4488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePSeatTilt pos is not valid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 4491
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4492
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4493
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onPSeatTiltPosChanged(I)V

    goto :goto_0

    .line 4495
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected handlePsnSeatWelcomeModeUpdate(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4467
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter p1

    .line 4468
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;

    .line 4469
    invoke-interface {v2, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;->onPsnWelcomeModeChanged(Z)V

    goto :goto_1

    .line 4471
    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected initCarManager(Landroid/car/Car;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "carClient"
        }
    .end annotation

    const-string v0, "MsmController"

    const-string v1, "Init start"

    .line 214
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo v1, "xp_msm"

    .line 216
    invoke-virtual {p1, v1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/msm/CarMsmManager;

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    .line 217
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->isMsbSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "xp_msb"

    .line 218
    invoke-virtual {p1, v1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/msb/CarMsbManager;

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarMsbManager:Landroid/car/hardware/msb/CarMsbManager;

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->isSrsSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "xp_srs"

    .line 221
    invoke-virtual {p1, v1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/srs/CarSrsManager;

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarSrsManager:Landroid/car/hardware/srs/CarSrsManager;

    .line 224
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    if-eqz p1, :cond_2

    .line 228
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/msm/CarMsmManager;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mPropertyIds:Ljava/util/List;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarMsmEventCallback:Landroid/car/hardware/msm/CarMsmManager$CarMsmEventCallback;

    invoke-virtual {p1, v1, v2}, Landroid/car/hardware/msm/CarMsmManager;->registerPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 231
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->isMsbSupport()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarMsbManager:Landroid/car/hardware/msb/CarMsbManager;

    if-eqz p1, :cond_3

    .line 235
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mMsbPropIds:Ljava/util/List;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarMsbEventCallback:Landroid/car/hardware/msb/CarMsbManager$CarMsbEventCallback;

    invoke-virtual {p1, v1, v2}, Landroid/car/hardware/msb/CarMsbManager;->registerPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 238
    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->isSrsSupport()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarSrsManager:Landroid/car/hardware/srs/CarSrsManager;

    if-eqz p1, :cond_4

    .line 242
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mSrsPropIds:Ljava/util/List;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarSrsEventCallback:Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;

    invoke-virtual {p1, v1, v2}, Landroid/car/hardware/srs/CarSrsManager;->registerPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 245
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
    const-string p1, "Init end"

    .line 248
    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected initXuiManager()V
    .locals 3

    const-string v0, "isSupportSeatMassage"

    .line 258
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "isSupportSeatRhythm"

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 259
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->getSeatMassagerManager()Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mSeatMassagerManager:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const-string v1, "MsmController"

    const-string v2, "SeatMassagerManager Is Null"

    .line 261
    invoke-static {v1, v2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 265
    :cond_1
    :try_start_0
    new-instance v1, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController$4;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->registerListener(Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$EventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 340
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public isDrvHeadrestNormal()Z
    .locals 6

    const-string v0, "MsmController"

    const-string v1, "isSupportHeadrestStatus"

    .line 2102
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const v1, 0x21401cd5

    const/4 v3, 0x0

    .line 2105
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2108
    :catch_0
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v1}, Landroid/car/hardware/msm/CarMsmManager;->getDriverHeadrestStatus()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 2110
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDrvHeadrestNormal: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    move v1, v3

    .line 2114
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDriverHeadrestStatus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    move v2, v3

    :cond_1
    :goto_1
    return v2
.end method

.method public isDrvTiltMovingSafe()Z
    .locals 2

    const-string v0, "isSupportVipSeat"

    .line 847
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 848
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getDSeatTiltPos()I

    move-result v0

    const-string v1, "getSeatTiltMovingSafePos"

    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getInt(Ljava/lang/String;)I

    move-result v1

    if-lt v0, v1, :cond_0

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

.method public isInSeatMenuShowTime(Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drv"
        }
    .end annotation

    .line 2227
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2229
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mFunctionModel:Lcom/xiaopeng/carcontrol/model/FunctionModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->isDrvMenuInShowTime()Z

    move-result p1

    return p1

    .line 2231
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mFunctionModel:Lcom/xiaopeng/carcontrol/model/FunctionModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->isPsnMenuInShowTime()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isMassagerRunning(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1153
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mSeatMassagerManager:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1155
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->getMassagerStatus(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move v1, v0

    :cond_0
    return v1

    :catchall_0
    move-exception p1

    .line 1157
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return v1
.end method

.method protected isMsbSupport()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPsnHeadrestNormal()Z
    .locals 6

    const-string v0, "MsmController"

    const-string v1, "isSupportHeadrestStatus"

    .line 2122
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const v1, 0x21401cd6

    const/4 v3, 0x0

    .line 2125
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2128
    :catch_0
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v1}, Landroid/car/hardware/msm/CarMsmManager;->getPassengerHeadrestStatus()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 2130
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPsnHeadrestNormal: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    move v1, v3

    .line 2134
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPassengerHeadrestStatus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    move v2, v3

    :cond_1
    :goto_1
    return v2
.end method

.method public isPsnSeatOccupied()Z
    .locals 4

    const v0, 0x21401c4f

    const/4 v1, 0x0

    .line 2834
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2837
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarSrsManager:Landroid/car/hardware/srs/CarSrsManager;

    invoke-virtual {v0}, Landroid/car/hardware/srs/CarSrsManager;->getPsnOnSeat()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 2839
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPsnSeatOccupied: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MsmController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    move v0, v1

    :goto_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public isPsnTiltMovingSafe()Z
    .locals 2

    const-string v0, "isSupportVipSeat"

    .line 853
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 854
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getPSeatTiltPos()I

    move-result v0

    const-string v1, "getSeatTiltMovingSafePos"

    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getInt(Ljava/lang/String;)I

    move-result v1

    if-lt v0, v1, :cond_0

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

.method public isRhythmRunning(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1027
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mSeatMassagerManager:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1029
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->getRhythmEnable(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v0, "MsmController"

    .line 1030
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRhythmRunning="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ", "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception p1

    .line 1033
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return v1
.end method

.method public isRlSeatOccupied()Z
    .locals 4

    const v0, 0x21401cc8

    const/4 v1, 0x0

    .line 2850
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2853
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarSrsManager:Landroid/car/hardware/srs/CarSrsManager;

    invoke-virtual {v0}, Landroid/car/hardware/srs/CarSrsManager;->getRearLeftSeatOccupancyStatus()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 2855
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRlSeatOccupied: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MsmController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    move v0, v1

    :goto_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public isRmSeatOccupied()Z
    .locals 4

    const v0, 0x21401cc9

    const/4 v1, 0x0

    .line 2866
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2869
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarSrsManager:Landroid/car/hardware/srs/CarSrsManager;

    invoke-virtual {v0}, Landroid/car/hardware/srs/CarSrsManager;->getRearMiddleSeatOccupancyStatus()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 2871
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRmSeatOccupied: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MsmController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    move v0, v1

    :goto_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public isRrSeatOccupied()Z
    .locals 4

    const v0, 0x21401cca

    const/4 v1, 0x0

    .line 2882
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2885
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarSrsManager:Landroid/car/hardware/srs/CarSrsManager;

    invoke-virtual {v0}, Landroid/car/hardware/srs/CarSrsManager;->getRearRightSeatOccupancyStatus()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 2887
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRrSeatOccupied: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MsmController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    move v0, v1

    :goto_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method protected isSrsSupport()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTlSeatOccupied()Z
    .locals 4

    const-string v0, "isSupportTrdRowSeat"

    .line 2897
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x21401ddd

    .line 2900
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2903
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarSrsManager:Landroid/car/hardware/srs/CarSrsManager;

    invoke-virtual {v0}, Landroid/car/hardware/srs/CarSrsManager;->getTrdLeftSeatOccupancyStatus()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 2905
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isTlSeatOccupied: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MsmController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    move v0, v1

    :goto_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public isTmSeatOccupied()Z
    .locals 4

    const-string v0, "isSupportTrdRowSeat"

    .line 2916
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x21401dde

    .line 2919
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2922
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarSrsManager:Landroid/car/hardware/srs/CarSrsManager;

    invoke-virtual {v0}, Landroid/car/hardware/srs/CarSrsManager;->getTrdMiddleSeatOccupancyStatus()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 2924
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isTmSeatOccupied: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MsmController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    move v0, v1

    :goto_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public isTrSeatOccupied()Z
    .locals 4

    const-string v0, "isSupportTrdRowSeat"

    .line 2935
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x21401ddf

    .line 2938
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getIntProperty(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2941
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarSrsManager:Landroid/car/hardware/srs/CarSrsManager;

    invoke-virtual {v0}, Landroid/car/hardware/srs/CarSrsManager;->getTrdRightSeatOccupancyStatus()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 2943
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isTrSeatOccupied: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MsmController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    move v0, v1

    :goto_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public synthetic lambda$handleCarEventsUpdate$1$MsmController(Landroid/car/hardware/CarPropertyValue;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "value"
        }
    .end annotation

    .line 541
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleEventsUpdate(Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method

.method public synthetic lambda$new$0$MsmController()V
    .locals 5

    .line 187
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "psn_seat_welcome"

    const/4 v2, 0x1

    .line 188
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mPsnWelcomeSw:Ljava/lang/Boolean;

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PsnWelcomeMode init value: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mPsnWelcomeSw:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MsmController"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "esb"

    .line 191
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mEsbSw:Ljava/lang/Boolean;

    .line 193
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->registerContentObserver()V

    return-void
.end method

.method public synthetic lambda$savePsnCurrentHabitId$9$MsmController(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "selectId"
        }
    .end annotation

    const/4 v0, 0x1

    .line 3245
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleSeatHabitChanged(II)V

    return-void
.end method

.method public synthetic lambda$savePsnSeatName$12$MsmController()V
    .locals 0

    .line 3271
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleSeatMemoryConfigChanged()V

    return-void
.end method

.method public synthetic lambda$saveRLSeatName$13$MsmController()V
    .locals 0

    .line 3279
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleSeatMemoryConfigChanged()V

    return-void
.end method

.method public synthetic lambda$saveRLSeatPos$10$MsmController(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "selectId"
        }
    .end annotation

    const/4 v0, 0x2

    .line 3254
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleSeatHabitChanged(II)V

    return-void
.end method

.method public synthetic lambda$saveRRSeatName$14$MsmController()V
    .locals 0

    .line 3287
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleSeatMemoryConfigChanged()V

    return-void
.end method

.method public synthetic lambda$saveRRSeatPos$11$MsmController(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "selectId"
        }
    .end annotation

    const/4 v0, 0x3

    .line 3263
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleSeatHabitChanged(II)V

    return-void
.end method

.method public synthetic lambda$startMassager$4$MsmController(Ljava/util/Set;Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "seats",
            "index"
        }
    .end annotation

    .line 1097
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getMassagerIntensity(I)I

    move-result v0

    .line 1098
    new-instance v1, Lcom/xiaopeng/xuimanager/seatmassager/Seat;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {v1, p2, v0}, Lcom/xiaopeng/xuimanager/seatmassager/Seat;-><init>(II)V

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected mockExtMsmProperty()V
    .locals 6

    .line 4322
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x21401c59

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/car/hardware/CarPropertyValue;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "getMSMSeatDefaultPos"

    .line 4324
    invoke-static {v5, v4}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v4

    const/4 v5, 0x3

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Landroid/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 4322
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public readFollowedVehicleLostConfig()Ljava/lang/String;
    .locals 5

    const-string v0, "isFollowVehicleLostConfigUseNew"

    .line 3640
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "2"

    if-eqz v0, :cond_0

    return-object v1

    .line 3643
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "followed_vehicle_lost_config"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3645
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readFollowedVehicleLostConfig : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "null"

    goto :goto_0

    :cond_1
    move-object v3, v0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "MsmController"

    invoke-static {v4, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "1"

    .line 3646
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3647
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    return-object v1

    :cond_3
    :goto_1
    return-object v0
.end method

.method protected registerContentObserver()V
    .locals 4

    .line 4301
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4302
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController$5;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->getHandler(I)Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController$5;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mContentObserver:Landroid/database/ContentObserver;

    .line 4317
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "esb_notify"

    .line 4318
    invoke-static {v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mContentObserver:Landroid/database/ContentObserver;

    .line 4317
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public saveDrvSeatPos(I[I)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "position"
        }
    .end annotation

    .line 3157
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v0, :cond_1

    .line 3158
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setDrvSeatPosIdx(I)V

    .line 3159
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->saveDrvSeatPos([I)V

    if-eqz p2, :cond_1

    .line 3162
    array-length p1, p2

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    const-string p1, "isSupportDomainControllerSeatWelcome"

    .line 3163
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    const/4 v6, 0x1

    .line 3164
    aget v7, p2, v4

    aget v8, p2, v3

    aget v9, p2, v2

    aget v10, p2, v1

    aget v11, p2, v0

    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->setDriverAllPositions(IIIIII)V

    goto :goto_0

    .line 3167
    :cond_0
    aget p1, p2, v4

    aget v3, p2, v3

    aget v4, p2, v2

    aget v5, p2, v1

    aget p2, p2, v0

    move-object v0, p0

    move v1, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->setDriverAllPositionsToMcu(IIIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public saveDrvTargetSeatPos([I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 3488
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 3489
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->saveDrvTargetSeatPos([I)V

    :cond_0
    return-void
.end method

.method public savePsnCurrentHabitId(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectId"
        }
    .end annotation

    .line 3243
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    const-string v0, "isSupportMsmP"

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3244
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->saveCurrentSelectPsnHabit(I)V

    .line 3245
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$MsmController$Rk_PS_GqjzkfLYBEXL1nPY-o9bU;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$MsmController$Rk_PS_GqjzkfLYBEXL1nPY-o9bU;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;I)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public savePsnSeatName(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "posName",
            "selectId"
        }
    .end annotation

    .line 3269
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    const-string v0, "isSupportMsmP"

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3270
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->savePsnSeatName(Ljava/lang/String;I)V

    .line 3271
    new-instance p1, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$MsmController$UScjF3-ClrBrfCa7J33JCx_Xzcc;

    invoke-direct {p1, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$MsmController$UScjF3-ClrBrfCa7J33JCx_Xzcc;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;)V

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public savePsnSeatPos([I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 3212
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    const-string v0, "isSupportMsmP"

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3213
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->savePsnSeatPos([I)V

    :cond_0
    return-void
.end method

.method public savePsnSeatPos([II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "selectId"
        }
    .end annotation

    .line 3234
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    const-string v0, "isSupportMsmP"

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3235
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->saveCurrentSelectPsnHabit(I)V

    .line 3236
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getPsnSeatName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->savePsnSeatName(Ljava/lang/String;I)V

    .line 3237
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getCurrentSelectedPsnHabit()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->savePsnSelectSeatPos([II)V

    :cond_0
    return-void
.end method

.method public savePsnSeatPos([III)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "index",
            "selectId"
        }
    .end annotation

    .line 3219
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    const-string v0, "isSupportMsmP"

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3220
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p3}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->saveCurrentSelectPsnHabit(I)V

    .line 3221
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p2, p3}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setPsnSeatPosIdx(II)V

    .line 3222
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p0, p3}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->getPsnSeatName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->savePsnSeatName(Ljava/lang/String;I)V

    .line 3223
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p2, p1, p3}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->savePsnSelectSeatPos([II)V

    :cond_0
    return-void
.end method

.method public savePsnTargetSeatPos([I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    const-string v0, "MsmController"

    const-string v1, ""

    .line 3503
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3504
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 3505
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->savePsnTargetSeatPos([I)V

    :cond_0
    return-void
.end method

.method public saveRLSeatName(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "posName",
            "selectId"
        }
    .end annotation

    .line 3277
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    const-string v0, "isSupportSecRowMemory"

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3278
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->saveRLSeatName(Ljava/lang/String;I)V

    .line 3279
    new-instance p1, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$MsmController$AY7HM1dll1-xQJ2EN_2JCPjoj_I;

    invoke-direct {p1, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$MsmController$AY7HM1dll1-xQJ2EN_2JCPjoj_I;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;)V

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public saveRLSeatPos([II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "selectId"
        }
    .end annotation

    .line 3251
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    const-string v0, "isSupportSecRowMemory"

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3252
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->saveRLSelectSeatPos([II)V

    .line 3253
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->saveCurrentSelectRLHabit(I)V

    .line 3254
    new-instance p1, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$MsmController$-XlU8xUdQbFdPrjlJcDjvFbu75k;

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$MsmController$-XlU8xUdQbFdPrjlJcDjvFbu75k;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;I)V

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public saveRRSeatName(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "posName",
            "selectId"
        }
    .end annotation

    .line 3285
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    const-string v0, "isSupportSecRowMemory"

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3286
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->saveRRSeatName(Ljava/lang/String;I)V

    .line 3287
    new-instance p1, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$MsmController$LY492e3RzgNy0mlau3RP6QYhGaI;

    invoke-direct {p1, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$MsmController$LY492e3RzgNy0mlau3RP6QYhGaI;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;)V

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public saveRRSeatPos([II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "selectId"
        }
    .end annotation

    .line 3260
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    const-string v0, "isSupportSecRowMemory"

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3261
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->saveRRSelectSeatPos([II)V

    .line 3262
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->saveCurrentSelectRRHabit(I)V

    .line 3263
    new-instance p1, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$MsmController$oYa3wWud-uPAIgPImNkS-7MI1ag;

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$MsmController$oYa3wWud-uPAIgPImNkS-7MI1ag;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;I)V

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setBackBeltSw(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3009
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarSrsManager:Landroid/car/hardware/srs/CarSrsManager;

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/car/hardware/srs/CarSrsManager;->setBackBeltSw(I)V

    const-string v1, "isSupportRearBeltWarningSwitch"

    .line 3010
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3011
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v1, :cond_1

    .line 3012
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setRsbWarning(Z)V

    goto :goto_1

    .line 3014
    :cond_1
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "rsw"

    invoke-static {v1, v2, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 3019
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBackBeltSw: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MsmController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    :goto_1
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

    .line 1389
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/msm/CarMsmManager;->setDriverSeatCushTiltPos(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1391
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setDSeatCushionMove:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "MsmController"

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setDSeatCushionPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    const-string v0, "isSupportDrvCushion"

    .line 1979
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1981
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/msm/CarMsmManager;->setDriverSeatLegHorzPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1983
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDSeatCushionPos, e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "MsmController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
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

    .line 1313
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/msm/CarMsmManager;->setDriverSeatHorizMove(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1315
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setDSeatHorzMove: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "MsmController"

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setDSeatHorzPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1784
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/msm/CarMsmManager;->setDriverSeatHorizPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDSeatHorzPos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "MsmController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
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

    .line 1370
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/msm/CarMsmManager;->setDriverLegVertiMove(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1372
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setDSeatLegMove: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "MsmController"

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setDSeatLegPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1922
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/msm/CarMsmManager;->setDriverSeatLegPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1929
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDSeatLegPos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "MsmController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
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

    .line 1398
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/msm/CarMsmManager;->setDriverLumbHorzMove(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1400
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setDSeatLumbHorzMove: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "MsmController"

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
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

    .line 1413
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/msm/CarMsmManager;->setDriverLumbVertiMove(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1415
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setDSeatLumbVerMove: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "MsmController"

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
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

    .line 1351
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/msm/CarMsmManager;->setDriverSeatBackMove(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1353
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setDSeatTiltMove: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "MsmController"

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setDSeatTiltPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1882
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/msm/CarMsmManager;->setDriverSeatBackPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDSeatTiltPos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "MsmController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
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

    .line 1332
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/msm/CarMsmManager;->setDriverSeatVertiMove(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1334
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setDSeatVerMove: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "MsmController"

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setDSeatVerPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1842
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/msm/CarMsmManager;->setDriverSeatVertiPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDSeatVerPos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "MsmController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setDriverAllPositions(IIIII)V
    .locals 7
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

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 3514
    invoke-virtual/range {v0 .. v6}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->setDriverAllPositions(IIIIII)V

    return-void
.end method

.method public setDriverAllPositions(IIIIII)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "memoryReq",
            "horizonPos",
            "verticalPos",
            "tiltPos",
            "legPos",
            "cushionPos"
        }
    .end annotation

    .line 3520
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    move-object v1, v0

    check-cast v1, Landroid/car/hardware/msm/CarMsmManager;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/car/hardware/msm/CarMsmManager;->setDriverAllPositions(IIIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3522
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "setDriverAllPositions, e="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "MsmController"

    invoke-static {p3, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setDriverAllPositionsToMcu(IIIII)V
    .locals 7
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

    .line 3531
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 3533
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    move-object v1, v0

    check-cast v1, Landroid/car/hardware/msm/CarMsmManager;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/car/hardware/msm/CarMsmManager;->saveDriverAllPositionsToMcu(IIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3535
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "setDriverAllPositionsToMcu, e="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "MsmController"

    invoke-static {p3, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setDriverAntiFatigueMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    const-string v0, "IsSupportSeatAntiFatigue"

    .line 4260
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4262
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/msm/CarMsmManager;->setDriverAntiFatigueMode(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDriverAntiFatigueMode, e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "MsmController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setDriverAntiFatigueReq(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Req"
        }
    .end annotation

    const-string v0, "IsSupportSeatAntiFatigue"

    .line 4249
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4251
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/msm/CarMsmManager;->setDriverAntiFatigueReq(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDriverAntiFatigueReq, e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "MsmController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
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

    .line 4243
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setDriverSeatAntiFatigueSw(Z)V

    .line 4244
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleDriverSeatAntiFatigueSw(Z)V

    return-void
.end method

.method public setDriverSeatLumbControlSwitchEnable(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const-string v0, "isSupportSeatMassage"

    .line 3663
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 3665
    :try_start_0
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v1, :cond_0

    .line 3666
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setDrvLumbControlSw(Z)V

    .line 3668
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/msm/CarMsmManager;

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/car/hardware/msm/CarMsmManager;->setDriverSeatLumbControlSwitchEnable(I)V

    .line 3669
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handleDrvLumbControlEnableChanged(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 3671
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDriverSeatLumbControlSwitchEnable, e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MsmController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setDrvSeatLayFlat()V
    .locals 3

    .line 2757
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/car/hardware/msm/CarMsmManager;->setDriverSeatTiltLevelOff(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2759
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDrvSeatLayFlat, e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "MsmController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setDrvWelcomeModeActiveSt(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "active"
        }
    .end annotation

    const/4 v0, 0x0

    .line 904
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/msm/CarMsmManager;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-virtual {v1, p1}, Landroid/car/hardware/msm/CarMsmManager;->setDriverWelcomeActive(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 907
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDriverWelcomeActive failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MsmController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method

.method public setEsbEnable(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2775
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarMsbManager:Landroid/car/hardware/msb/CarMsbManager;

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/car/hardware/msb/CarMsbManager;->setMsbStatus(I)V

    .line 2777
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v1, :cond_1

    .line 2778
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setDrvSeatEsb(Z)V

    goto :goto_1

    .line 2780
    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mEsbSw:Ljava/lang/Boolean;

    .line 2781
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "esb"

    invoke-static {v1, v2, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2785
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEsbEnable1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MsmController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method

.method public setEsbEnable(ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "saveEnable"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2792
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarMsbManager:Landroid/car/hardware/msb/CarMsbManager;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-virtual {v1, p1}, Landroid/car/hardware/msb/CarMsbManager;->setMsbStatus(I)V

    .line 2794
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz p1, :cond_1

    .line 2795
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setDrvSeatEsb(Z)V

    .line 2797
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "esb_notify"

    invoke-static {p1, v1, p2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    goto :goto_1

    .line 2800
    :cond_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mEsbSw:Ljava/lang/Boolean;

    .line 2801
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "esb"

    invoke-static {p1, v1, p2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2805
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setEsbEnable2: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MsmController"

    invoke-static {p2, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method

.method public setFollowedVehicleLostConfig(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .line 3655
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "followed_vehicle_lost_config"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public setMassageMode(II)V
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

    .line 3346
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 3347
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setMassageMode(II)V

    :cond_0
    return-void
.end method

.method public setMassagerEffect(Ljava/util/Set;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ids",
            "effectId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, ", "

    .line 1226
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mSeatMassagerManager:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    if-eqz v1, :cond_1

    .line 1228
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    const-string v3, "MsmController"

    if-nez v1, :cond_0

    .line 1229
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mSeatMassagerManager:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    invoke-virtual {v1, p1, p2}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->setMassagerEffect(Ljava/util/Set;Ljava/lang/String;)I

    move-result v1

    .line 1230
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setMassagerEffect="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    const-string p1, "effectId = null"

    .line 1232
    invoke-static {v3, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1234
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setMassagerIntensity(Ljava/util/Set;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ids",
            "strength"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    const-string v0, ", "

    const-string v1, "MsmController"

    .line 929
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mSeatMassagerManager:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    .line 931
    :try_start_0
    invoke-virtual {v2, p1, p2}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->setMassagerIntensity(Ljava/util/Set;I)I

    move-result v2

    .line 932
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setMassagerIntensity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 934
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setMassagerIntensity failed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
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

    .line 1432
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/msm/CarMsmManager;->setPsnSeatHorizMove(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1434
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setPSeatHorzMove: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "MsmController"

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setPSeatHorzPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    const-string v0, "isSupportMsmP"

    .line 2035
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2037
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/msm/CarMsmManager;->setPassengerSeatHorizontalPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2039
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPSeatHorzPos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "MsmController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
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

    .line 1493
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/msm/CarMsmManager;->setPassengerSeatCushExt(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1495
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setPSeatLegMove, e="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "MsmController"

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setPSeatLegPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    const-string v0, "isSupportPsnLeg"

    .line 2184
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2186
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/msm/CarMsmManager;->setPassengerSeatLegHorzPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPSeatLegPos, e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "MsmController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
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

    .line 1502
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/msm/CarMsmManager;->setPassengerSeatLumbHorzPos(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1504
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setPassengerSeatLumbHorzPos, e="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "MsmController"

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
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

    .line 1511
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/msm/CarMsmManager;->setPassengerSeatLumbVerticalPos(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1513
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setPassengerSeatLumbVerticalPos, e="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "MsmController"

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
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

    .line 1474
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/msm/CarMsmManager;->setPsnSeatBackMove(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1476
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setPSeatTiltMove: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "MsmController"

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setPSeatTiltPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    const-string v0, "isSupportMsmP"

    .line 2147
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2149
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/msm/CarMsmManager;->setPassengerSeatBackPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPSeatTiltPos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "MsmController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setPSeatVerMove(II)V
    .locals 2
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

    const-string v0, "isSupportMsmPVerticalMove"

    .line 1450
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "MsmController"

    if-nez v0, :cond_0

    const-string p1, "Not support adjust PSN seat in vertical direction"

    .line 1451
    invoke-static {v1, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1454
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/msm/CarMsmManager;->setPsnSeatVertiMove(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1456
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setPsnSeatVertiMove: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {v1, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setPSeatVerPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 2094
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/msm/CarMsmManager;->setPassengerSeatVerticalPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2096
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPSeatVerPos, e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "MsmController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setPassengerSeatLumbControlSwitchEnable(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const-string v0, "isSupportSeatMassage"

    .line 3689
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 3691
    :try_start_0
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v1, :cond_0

    .line 3692
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setPsnLumbControlSw(Z)V

    .line 3694
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/msm/CarMsmManager;

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/car/hardware/msm/CarMsmManager;->setPassengerSeatLumbControlSwitchEnable(I)V

    .line 3695
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->handlePsnLumbControlEnableChanged(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 3697
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPassengerSeatLumbControlSwitchEnable, e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MsmController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setPsnAllPositions(IIII)V
    .locals 7
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

    const-string v0, "isSupportMsmP"

    .line 3542
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3544
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    move-object v1, v0

    check-cast v1, Landroid/car/hardware/msm/CarMsmManager;

    const/4 v2, 0x0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/car/hardware/msm/CarMsmManager;->setPassengerAllPositions(IIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3546
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "setPsnAllPositions: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "MsmController"

    invoke-static {p3, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setPsnAllPositions(IIIII)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "memoryReq",
            "horizonPos",
            "verticalPos",
            "tiltPos",
            "legPos"
        }
    .end annotation

    const-string v0, "isSupportMsmP"

    .line 3553
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3555
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    move-object v1, v0

    check-cast v1, Landroid/car/hardware/msm/CarMsmManager;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/car/hardware/msm/CarMsmManager;->setPassengerAllPositions(IIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3557
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "setPsnAllPositions: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "MsmController"

    invoke-static {p3, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setPsnAllPositionsToMcu(IIII)V
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

    const-string v0, "isSupportPsnWelcomeMode"

    .line 3564
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "isSupportDomainControllerSeatWelcome"

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3565
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 3567
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/car/hardware/msm/CarMsmManager;->savePassengerAllPositionsToMcu(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3569
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "setPsnAllPositionsToMcu, e="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "MsmController"

    invoke-static {p3, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setPsnSeatLayFlat()V
    .locals 3

    .line 2766
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/car/hardware/msm/CarMsmManager;->setPassengerSeatTitlLevelOff(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2768
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPsnSeatLayFlat, e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "MsmController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setPsnSeatWelcomeMode(Z)V
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

    .line 877
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->setPsnSeatWelcomeMode(ZZ)V

    return-void
.end method

.method public setPsnSeatWelcomeMode(ZZ)V
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

    const-string v0, "isSupportPsnWelcomeMode"

    .line 882
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 884
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/msm/CarMsmManager;

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/car/hardware/msm/CarMsmManager;->setPassengerWelcomeSwitch(I)V

    if-eqz p2, :cond_2

    .line 887
    iget-boolean p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz p2, :cond_1

    .line 888
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setPsnWelcomeMode(Z)V

    goto :goto_1

    .line 890
    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mPsnWelcomeSw:Ljava/lang/Boolean;

    .line 891
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v1, "psn_seat_welcome"

    invoke-static {p2, v1, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 896
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPsnSeatWelcomeMode failed: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MsmController"

    invoke-static {p2, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    :goto_1
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

    const-string v0, "isSupportPsnSrsSwitch"

    .line 808
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 810
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarSrsManager:Landroid/car/hardware/srs/CarSrsManager;

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/car/hardware/srs/CarSrsManager;->setPassengerCrashOccurSw(I)V

    .line 811
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v1, :cond_1

    .line 812
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setPsnSrsEnable(Z)V

    goto :goto_1

    .line 814
    :cond_1
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "psn_srs_enable"

    invoke-static {v1, v2, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 818
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPassengerCrashOccurSw: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MsmController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setPsnWelcomeModeActiveSt(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "active"
        }
    .end annotation

    const/4 v0, 0x0

    .line 914
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/msm/CarMsmManager;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-virtual {v1, p1}, Landroid/car/hardware/msm/CarMsmManager;->setPassengerWelcomeActive(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 917
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPassengerWelcomeActive failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MsmController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method

.method public setRLAllPositions(IIIIIII)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "horizonPos",
            "anglePos",
            "tiltPos",
            "cushionPos",
            "legPos",
            "headVer",
            "headHor"
        }
    .end annotation

    const-string v0, "isSupportSecRowMemory"

    .line 3577
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v1, p0

    .line 3579
    :try_start_0
    iget-object v0, v1, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    move-object v2, v0

    check-cast v2, Landroid/car/hardware/msm/CarMsmManager;

    const/4 v3, 0x0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v2 .. v10}, Landroid/car/hardware/msm/CarMsmManager;->setSecRowLeftSeatPos(IIIIIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3581
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRLAllPositions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "MsmController"

    invoke-static {v3, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    return-void
.end method

.method public setRLAllPositions(IIIIIIII)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "memoryReq",
            "horizonPos",
            "anglePos",
            "tiltPos",
            "cushionPos",
            "legPos",
            "headVer",
            "headHor"
        }
    .end annotation

    const-string v0, "isSupportSecRowMemory"

    .line 3588
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v1, p0

    .line 3590
    :try_start_0
    iget-object v0, v1, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    move-object v2, v0

    check-cast v2, Landroid/car/hardware/msm/CarMsmManager;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Landroid/car/hardware/msm/CarMsmManager;->setSecRowLeftSeatPos(IIIIIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3592
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRLAllPositions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "MsmController"

    invoke-static {v3, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
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

    .line 1538
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/msm/CarMsmManager;->setSecRowLeftHorizMove(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1540
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setRLSeatTiltMove, e="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "MsmController"

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setRLSeatFold(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fold"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2721
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/msm/CarMsmManager;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-virtual {v1, p1}, Landroid/car/hardware/msm/CarMsmManager;->setSecrowLeftSeatUnlockReq(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2723
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRLSeatFold, e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MsmController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method

.method public setRLSeatHeadHorPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    const-string v0, "isSupportRearSeatCtrl"

    .line 2404
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2406
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/msm/CarMsmManager;->setSecRowLtSeatHeadHorzPos(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRLSeatHeadHorPos failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "MsmController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
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

    .line 1595
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/msm/CarMsmManager;->setSecRowLeftHeadHorizMove(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1597
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setRLSeatHeadRestHorzMove, e="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "MsmController"

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
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

    .line 1608
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/msm/CarMsmManager;->setSecRowLeftHeadVertiMove(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1610
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setRLSeatHeadRestVerMove, e="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "MsmController"

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setRLSeatHeadVerPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    const-string v0, "isSupportRearSeatCtrl"

    .line 2368
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2370
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/msm/CarMsmManager;->setSecRowLtSeatHeadVerticalPos(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRLSeatHeadVerPos failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "MsmController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setRLSeatHorPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    const-string v0, "isSupportRearSeatCtrl"

    .line 2300
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2302
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/msm/CarMsmManager;->setSecRowLtSeatHorzPos(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRLSeatHorPos failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "MsmController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setRLSeatLegHorPos(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 2321
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->setRLSeatLegPos(I)V

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

    .line 1551
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/msm/CarMsmManager;->setSecRowLeftSeatLegHorzPosReq(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1553
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setSecRowLeftSeatCushExtReq, e="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "MsmController"

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setRLSeatLegPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    const-string v0, "isSupportRearSeatCtrl"

    .line 2658
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2660
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/msm/CarMsmManager;->setSecRowLeftSeatLegHorzPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSecRowLeftSeatCushExtPosition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "MsmController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
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

    .line 1564
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/msm/CarMsmManager;->setSecRowLeftLegVertiMove(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1566
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setRLSeatLegVerMove, e="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "MsmController"

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setRLSeatLegVerPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    const-string v0, "isSupportRearSeatCtrl"

    .line 2352
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2354
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/msm/CarMsmManager;->setSecRowLtSeatLegVerticalPos(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRLSeatLegVerPos failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "MsmController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
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

    .line 1573
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/msm/CarMsmManager;->setSecRowLeftSeatLumbHorzMove(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1575
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setRLSeatLumbHorzMove, e="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "MsmController"

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
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

    .line 1582
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/msm/CarMsmManager;->setSecRowLeftSeatLumbVertiMove(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1584
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setRLSeatLumbVerMove, e="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "MsmController"

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setRLSeatStopMove()V
    .locals 3

    .line 2730
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/car/hardware/msm/CarMsmManager;->setSecrowLtSeatSTopMoveReq(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2732
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRLSeatStopMove, e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MsmController"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
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

    .line 1524
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/msm/CarMsmManager;->setSecrowLtSeatTiltReq(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1526
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setRLSeatTiltMove, e="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "MsmController"

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setRLSeatTiltPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    const-string v0, "isSupportRearSeatCtrl"

    .line 2244
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2246
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/msm/CarMsmManager;->setSecrowLtSeatTiltPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSecrowLtSeatTiltPosition failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "MsmController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setRRAllPositions(IIIIIII)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "horizonPos",
            "anglePos",
            "tiltPos",
            "cushionPos",
            "legPos",
            "headVer",
            "headHor"
        }
    .end annotation

    const-string v0, "isSupportSecRowMemory"

    .line 3600
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v1, p0

    .line 3602
    :try_start_0
    iget-object v0, v1, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    move-object v2, v0

    check-cast v2, Landroid/car/hardware/msm/CarMsmManager;

    const/4 v3, 0x0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v2 .. v10}, Landroid/car/hardware/msm/CarMsmManager;->setSecRowRightSeatPos(IIIIIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3604
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRRAllPositions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "MsmController"

    invoke-static {v3, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    return-void
.end method

.method public setRRAllPositions(IIIIIIII)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "memoryReq",
            "horizonPos",
            "anglePos",
            "tiltPos",
            "cushionPos",
            "legPos",
            "headVer",
            "headHor"
        }
    .end annotation

    const-string v0, "isSupportSecRowMemory"

    .line 3611
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v1, p0

    .line 3613
    :try_start_0
    iget-object v0, v1, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    move-object v2, v0

    check-cast v2, Landroid/car/hardware/msm/CarMsmManager;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Landroid/car/hardware/msm/CarMsmManager;->setSecRowRightSeatPos(IIIIIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3615
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRRAllPositions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "MsmController"

    invoke-static {v3, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
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

    .line 1634
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/msm/CarMsmManager;->setSecRowRightHorizMove(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1636
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setRRSeaHorzMove, e="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "MsmController"

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setRRSeatFold(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fold"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2739
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/msm/CarMsmManager;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-virtual {v1, p1}, Landroid/car/hardware/msm/CarMsmManager;->setSecrowRightSeatUnlockReq(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2741
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRRSeatFold, e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MsmController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method

.method public setRRSeatHeadHorPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    const-string v0, "isSupportRearSeatCtrl"

    .line 2610
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2612
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/msm/CarMsmManager;->setSecRowRtSeatHeadHorzPos(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRRSeatHeadHorPos failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "MsmController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
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

    .line 1692
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/msm/CarMsmManager;->setSecRowRightHeadHorizMove(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1694
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setRRSeatHeadRestHorzMove, e="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "MsmController"

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
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

    .line 1705
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/msm/CarMsmManager;->setSecRowRightHeadVertiMove(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1707
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setRRSeatHeadRestVerMove, e="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "MsmController"

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setRRSeatHeadVerPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    const-string v0, "isSupportRearSeatCtrl"

    .line 2574
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2576
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/msm/CarMsmManager;->setSecRowRtSeatHeadVerticalPos(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRRSeatHeadVerPos failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "MsmController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setRRSeatHorPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    const-string v0, "isSupportRearSeatCtrl"

    .line 2490
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2492
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/msm/CarMsmManager;->setSecRowRtSeatHorzPos(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRRSeatHorPos failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "MsmController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setRRSeatLegHorPos(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 2523
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->setRRSeatLegPos(I)V

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

    .line 1648
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/msm/CarMsmManager;->setSecRowRightSeatLegHorzPosReq(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1650
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setSecRowRightSeatCushExtReq, e="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "MsmController"

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setRRSeatLegPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    const-string v0, "isSupportRearSeatCtrl"

    .line 2689
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2691
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/msm/CarMsmManager;->setSecRowRightSeatLegHorzPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSecRowRightSeatCushExtPosition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "MsmController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
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

    .line 1661
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/msm/CarMsmManager;->setSecRowRightLegVertiMove(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1663
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setRRSeatLegVerMove, e="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "MsmController"

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setRRSeatLegVerPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    const-string v0, "isSupportRearSeatCtrl"

    .line 2538
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2540
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/msm/CarMsmManager;->setSecRowRtSeatLegVerticalPos(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRRSeatLegVerPos failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "MsmController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
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

    .line 1670
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/msm/CarMsmManager;->setSecRowRightSeatLumbHorzMove(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1672
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setRRSeatLumbHorzMove, e="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "MsmController"

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
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

    .line 1679
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/msm/CarMsmManager;->setSecRowRightSeatLumbVertiMove(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1681
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setRRSeatLumbVerMove, e="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "MsmController"

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setRRSeatStopMove()V
    .locals 3

    .line 2748
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/car/hardware/msm/CarMsmManager;->setSecrowRtSeatSTopMoveReq(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2750
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRRSeatStopMove, e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "MsmController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
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

    .line 1621
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/msm/CarMsmManager;->setSecrowRtSeatTiltReq(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1623
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setRRSeatTiltMove, e="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "MsmController"

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setRRSeatTiltPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    const-string v0, "isSupportRearSeatCtrl"

    .line 2457
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2459
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/msm/CarMsmManager;->setSecrowRtSeatTiltPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSecrowRtSeatTiltPosition failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "MsmController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setRhythmEnable(Ljava/util/Set;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ids",
            "enable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, ", "

    .line 1015
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mSeatMassagerManager:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    if-eqz v1, :cond_0

    .line 1017
    :try_start_0
    invoke-virtual {v1, p1, p2}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->setRhythmEnable(Ljava/util/Set;Z)I

    move-result v1

    const-string v2, "MsmController"

    .line 1018
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRhythmEnable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {v2, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1020
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setRhythmIntensity(Ljava/util/Set;I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ids",
            "intensity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    const-string v0, ", "

    .line 985
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mSeatMassagerManager:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    if-eqz v1, :cond_0

    .line 987
    :try_start_0
    invoke-virtual {v1, p1, p2}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->setRhythmIntensity(Ljava/util/Set;I)I

    move-result v1

    const-string v2, "MsmController"

    .line 988
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRhythmIntensity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {v2, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 990
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setRhythmMode(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 1190
    sget-object v0, Lcom/xiaopeng/track/constant/BID;->seat_rhythm_mode:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {v0}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    .line 1194
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mSeatMassagerManager:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    if-eqz v0, :cond_0

    .line 1196
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->setRhythmPattern(I)I

    move-result v0

    const-string v1, "MsmController"

    .line 1197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRhythmMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1199
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;->printStackTrace()V

    :cond_0
    :goto_0
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

    .line 2216
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2218
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mFunctionModel:Lcom/xiaopeng/carcontrol/model/FunctionModel;

    invoke-virtual {p1, p2, p3}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->setDrvMenuNotShowTime(J)V

    goto :goto_0

    .line 2220
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mFunctionModel:Lcom/xiaopeng/carcontrol/model/FunctionModel;

    invoke-virtual {p1, p2, p3}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->setPsnMenuNotShowTime(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSecRowLtSeatEZ(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eZStatus"
        }
    .end annotation

    const-string v0, "MsmController"

    .line 3714
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v1, :cond_0

    .line 3716
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSecRowLtSeatEZ   eZStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3717
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v1, p1}, Landroid/car/hardware/msm/CarMsmManager;->setSecRowLeftSeatEasyEntryReq(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3719
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSecRowLtSeatEZ, e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setSecRowLtSeatZeroGrav(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zeroGravStatus"
        }
    .end annotation

    const-string v0, "MsmController"

    .line 3738
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v1, :cond_0

    .line 3740
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSecRowLtSeatZeroGrav   zeroGravStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3741
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v1, p1}, Landroid/car/hardware/msm/CarMsmManager;->setSecRowLeftSeatZeroGravReq(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3743
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSecRowLtSeatZeroGrav, e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setSecRowRtSeatEZ(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eZStatus"
        }
    .end annotation

    const-string v0, "MsmController"

    .line 3726
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v1, :cond_0

    .line 3728
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSecRowRtSeatEZ   eZStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3729
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v1, p1}, Landroid/car/hardware/msm/CarMsmManager;->setSecRowRightSeatEasyEntryReq(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3731
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSecRowRtSeatEZ, e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setSecRowRtSeatZeroGrav(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zeroGravStatus"
        }
    .end annotation

    const-string v0, "MsmController"

    .line 3750
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v1, :cond_0

    .line 3752
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSecRowRtSeatZeroGrav   zeroGravStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3753
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v1, p1}, Landroid/car/hardware/msm/CarMsmManager;->setSecRowRightSeatZeroGravReq(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3755
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSecRowRtSeatZeroGrav, e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
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

    .line 1744
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/msm/CarMsmManager;->setTrdRowLeftHeadVertiMove(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1746
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setTrdRowLeftSeatHeadVerMove, e="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "MsmController"

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
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

    .line 1718
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/msm/CarMsmManager;->setTrdRowLeftSeatTiltMove(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1720
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setTrdRowLeftSeatTiltMove, e="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "MsmController"

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setTrdRowLtSeatFol(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trdRowLtSeatFolStatus"
        }
    .end annotation

    const-string v0, "MsmController"

    .line 3774
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v1, :cond_0

    .line 3776
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTrdRowLtSeatFol   trdRowLtSeatFolStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3777
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v1, p1}, Landroid/car/hardware/msm/CarMsmManager;->setMsmtLeftSeatFoldReq(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3779
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTrdRowLtSeatFol, e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setTrdRowLtSeatHeadVerticalPos(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    const-string v0, "MsmController"

    .line 4137
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v1, :cond_0

    .line 4139
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTrdRowLtSeatHeadVerticalPos   pos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4140
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v1, p1}, Landroid/car/hardware/msm/CarMsmManager;->setTrdRowLtSeatHeadVerticalPos(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTrdRowLtSeatHeadVerticalPos, e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setTrdRowLtSeatTiltPos(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    const-string v0, "MsmController"

    .line 4103
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v1, :cond_0

    .line 4105
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTrdRowLtSeatTiltPos   pos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4106
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v1, p1}, Landroid/car/hardware/msm/CarMsmManager;->setTrdRowLtSeatTiltPos(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTrdRowLtSeatTiltPos, e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
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

    .line 1770
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/msm/CarMsmManager;->setTrdRowMidHeadVertiMove(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1772
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setTrdRowMidSeatHeadVerMove, e="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "MsmController"

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setTrdRowMidSeatHeadVerticalPos(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    const-string v0, "MsmController"

    .line 4171
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v1, :cond_0

    .line 4173
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTrdRowMidSeatHeadVerticalPos   pos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4174
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v1, p1}, Landroid/car/hardware/msm/CarMsmManager;->setTrdRowMidSeatHeadVerticalPos(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTrdRowMidSeatHeadVerticalPos, e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
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

    .line 1757
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/msm/CarMsmManager;->setTrdRowRightHeadVertiMove(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1759
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setTrdRowRightSeatHeadVerMove, e="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "MsmController"

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
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

    .line 1731
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/msm/CarMsmManager;->setTrdRowRightSeatTiltMove(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1733
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setTrdRowRightSeatTiltMove, e="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "MsmController"

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setTrdRowRtSeatFol(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trdRowRtSeatFolStatus"
        }
    .end annotation

    const-string v0, "MsmController"

    .line 3786
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v1, :cond_0

    .line 3788
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTrdRowRtSeatFol   trdRowRtSeatFolStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3789
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v1, p1}, Landroid/car/hardware/msm/CarMsmManager;->setMsmtRightSeatFoldReq(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3791
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTrdRowRtSeatFol, e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setTrdRowRtSeatHeadVerticalPos(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    const-string v0, "MsmController"

    .line 4154
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v1, :cond_0

    .line 4156
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTrdRowRtSeatHeadVerticalPos   pos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4157
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v1, p1}, Landroid/car/hardware/msm/CarMsmManager;->setTrdRowRtSeatHeadVerticalPos(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTrdRowRtSeatHeadVerticalPos, e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setTrdRowRtSeatTiltPos(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    const-string v0, "MsmController"

    .line 4120
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v1, :cond_0

    .line 4122
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTrdRowRtSeatTiltPos   pos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4123
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v1, p1}, Landroid/car/hardware/msm/CarMsmManager;->setTrdRowRtSeatTiltPos(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTrdRowRtSeatTiltPos, e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setTrdRowSeatStow(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stowStatus"
        }
    .end annotation

    const-string v0, "MsmController"

    .line 3762
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v1, :cond_0

    .line 3764
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTrdRowSeatStow   stowStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3765
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v1, p1}, Landroid/car/hardware/msm/CarMsmManager;->setMsmtSeatStowReq(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3767
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTrdRowSeatStow, e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setVibrateIntensity(II)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "intensity"
        }
    .end annotation

    const-string v0, ", "

    .line 955
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mSeatMassagerManager:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    if-eqz v1, :cond_0

    .line 957
    :try_start_0
    invoke-virtual {v1, p1, p2}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->setVibrateIntensity(II)I

    move-result v1

    const-string v2, "MsmController"

    .line 958
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setVibrateIntensity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {v2, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 960
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setWaistReliefMemoryMode(II)V
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

    .line 3360
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 3361
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setWaistReliefMemoryMode(II)V

    :cond_0
    return-void
.end method

.method public setWaistReliefMode(II)V
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

    if-nez p1, :cond_0

    .line 3369
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {p1, p2}, Landroid/car/hardware/msm/CarMsmManager;->setDriverLumbRelaxMode(I)I

    goto :goto_0

    .line 3371
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {p1, p2}, Landroid/car/hardware/msm/CarMsmManager;->setPassengerLumbRelaxMode(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3374
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "stopPsnSeatMove: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "MsmController"

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public startMassager(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 1064
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mSeatMassagerManager:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    if-eqz v0, :cond_0

    .line 1065
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->startMassager(I)I

    move-result v0

    const-string v1, "MsmController"

    .line 1066
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startMassager="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1069
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public startMassager(IILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "intensity",
            "effectId"
        }
    .end annotation

    const-string v0, ", "

    .line 1042
    new-instance v1, Lcom/xiaopeng/xuimanager/seatmassager/Seat;

    invoke-direct {v1, p1, p2}, Lcom/xiaopeng/xuimanager/seatmassager/Seat;-><init>(II)V

    .line 1048
    :try_start_0
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mSeatMassagerManager:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    if-eqz p2, :cond_1

    .line 1049
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1050
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mSeatMassagerManager:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->startMassager(I)I

    move-result p2

    goto :goto_0

    .line 1052
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mSeatMassagerManager:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    invoke-virtual {p2, p1, p3}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->startMassager(ILjava/lang/String;)I

    move-result p2

    :goto_0
    const-string v1, "MsmController"

    .line 1054
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startMassager="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {v1, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1057
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public startMassager(Lcom/xiaopeng/xuimanager/seatmassager/Seat;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seat",
            "effectId"
        }
    .end annotation

    .line 1076
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mSeatMassagerManager:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    if-eqz v0, :cond_0

    .line 1077
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->startMassager(Lcom/xiaopeng/xuimanager/seatmassager/Seat;Ljava/lang/String;)I

    move-result p2

    const-string v0, "MsmController"

    .line 1078
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startMassager= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/seatmassager/Seat;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1081
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public startMassager(Ljava/util/Set;ILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ids",
            "intensity",
            "effectId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, ", "

    .line 1112
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1120
    new-instance v2, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$MsmController$rqipTT6lFXIqsE26j-W4Mq2MsVE;

    invoke-direct {v2, v1, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$MsmController$rqipTT6lFXIqsE26j-W4Mq2MsVE;-><init>(Ljava/util/Set;I)V

    invoke-interface {p1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 1124
    :try_start_0
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mSeatMassagerManager:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    if-eqz p2, :cond_0

    .line 1125
    invoke-virtual {p2, v1, p3}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->startMassager(Ljava/util/Set;Ljava/lang/String;)I

    move-result p2

    const-string v1, "MsmController"

    .line 1126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startMassager="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {v1, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1129
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public startMassager(Ljava/util/Set;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ids",
            "effectId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, ", "

    .line 1087
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1096
    new-instance v2, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$MsmController$SrYOJyRgpSRbgDO0uH05C1mjeX0;

    invoke-direct {v2, p0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$MsmController$SrYOJyRgpSRbgDO0uH05C1mjeX0;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;Ljava/util/Set;)V

    invoke-interface {p1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 1101
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mSeatMassagerManager:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    if-eqz v2, :cond_0

    .line 1102
    invoke-virtual {v2, v1, p2}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->startMassager(Ljava/util/Set;Ljava/lang/String;)I

    move-result v1

    const-string v2, "MsmController"

    .line 1103
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startMassager="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {v2, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1106
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public stopDrvSeatMove()V
    .locals 3

    const-string v0, "isSupportDrvSeatStop"

    .line 2954
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2956
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/car/hardware/msm/CarMsmManager;->stopDriverSeatMoving(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2958
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopDrvSeatMove: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "MsmController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void
.end method

.method public stopMassager(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ids"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1141
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mSeatMassagerManager:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    if-eqz v0, :cond_0

    .line 1143
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->stopMassager(Ljava/util/Set;)I

    move-result v0

    const-string v1, "MsmController"

    .line 1144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopMassager="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1146
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public stopPsnSeatMove()V
    .locals 3

    const-string v0, "isSupportPsnSeatStop"

    .line 2965
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2967
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/car/hardware/msm/CarMsmManager;->stopPassengerSeatMoving(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2969
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopPsnSeatMove: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "MsmController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void
.end method

.method public stopSecRowLeftSeatMoving()V
    .locals 3

    .line 3623
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/car/hardware/msm/CarMsmManager;->stopSecRowLeftSeatMoving(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3625
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRRAllPositions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "MsmController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public stopSecRowRightSeatMoving()V
    .locals 3

    .line 3632
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/car/hardware/msm/CarMsmManager;->stopSecRowRightSeatMoving(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3634
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRRAllPositions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "MsmController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public stopVibrate()V
    .locals 4

    .line 1178
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mSeatMassagerManager:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    if-eqz v0, :cond_0

    .line 1180
    :try_start_0
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->stopVibrate()I

    move-result v0

    const-string v1, "MsmController"

    .line 1181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopVibrate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1183
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public stopWaistReliefMode(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seatId"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 3421
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {p1, v0}, Landroid/car/hardware/msm/CarMsmManager;->setDriverLumbRelaxMode(I)I

    goto :goto_0

    .line 3423
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {p1, v0}, Landroid/car/hardware/msm/CarMsmManager;->setPassengerLumbRelaxMode(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3426
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopPsnSeatMove: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MsmController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method
