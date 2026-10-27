.class public Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;
.super Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;
.source "XpSeatMassagerProxy.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/XUIServiceBase;
.implements Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$SeatMassagerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy$InstanceHolder;
    }
.end annotation


# static fields
.field private static final SYS_SMM_EFFECT_PATH:Ljava/lang/String; = "/system/etc/xuiservice/smm"

.field private static final SYS_SVM_EFFECT_PATH:Ljava/lang/String; = "/system/etc/xuiservice/svm"

.field private static final TAG:Ljava/lang/String; = "XpSeatMassagerProxy"

.field private static final USER_SMM_EFFECT_PATH:Ljava/lang/String; = "/data/xuiservice/rsc/smm"

.field private static final USER_SVM_EFFECT_PATH:Ljava/lang/String; = "/data/xuiservice/rsc/svm"

.field private static final hasMassager:Z

.field private static final hasVibrate:Z

.field private static mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

.field private static mService:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;


# instance fields
.field private final listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<",
            "Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassagerEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->isSeatMassagerSupport()Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->hasMassager:Z

    .line 33
    const-string v0, "FSEAT_RHYTHM"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/XUIConfig;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->hasVibrate:Z

    .line 54
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 345
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;-><init>()V

    .line 39
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy$1;

    const-string v1, "XpSeatMassagerProxy"

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy$1;-><init>(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    .line 346
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    .line 347
    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
    .locals 1

    .line 27
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    return-object v0
.end method

.method private addOperationListener()V
    .locals 0

    .line 343
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;
    .locals 1

    .line 354
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy$InstanceHolder;->access$100()Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;

    move-result-object v0

    return-object v0
.end method

.method private hasIgOn()Z
    .locals 5

    .line 58
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v2, "xp_mcu"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/mcu/CarMcuManager;

    .line 59
    .local v1, "mcu":Landroid/car/hardware/mcu/CarMcuManager;
    invoke-virtual {v1}, Landroid/car/hardware/mcu/CarMcuManager;->getIgStatusFromMcu()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v0, v3

    nop

    :cond_0
    return v0

    .line 60
    .end local v1    # "mcu":Landroid/car/hardware/mcu/CarMcuManager;
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "XpSeatMassagerProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIgStatusFromMcu failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method public static synthetic lambda$JWLUSa4hQWAZf1TfuyVGazguidI(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$znfQj8LqOvyui6ncUHU4komPIHY(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public doVibrate(Ljava/util/List;Ljava/lang/String;II)I
    .locals 3
    .param p2, "effect"    # Ljava/lang/String;
    .param p3, "loop"    # I
    .param p4, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/seatmassager/Seat;",
            ">;",
            "Ljava/lang/String;",
            "II)I"
        }
    .end annotation

    .line 258
    .local p1, "seats":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/seatmassager/Seat;>;"
    const-string v0, "XpSeatMassagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doVibrate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", loop="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    sget-boolean v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->hasVibrate:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->hasIgOn()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->doVibrate(Ljava/util/List;Ljava/lang/String;II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 334
    return-void
.end method

.method public getMassagerEffect(I)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # I

    .line 181
    const-string v0, "XpSeatMassagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMassagerEffect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    sget-boolean v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->hasMassager:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getMassagerEffect(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    :goto_0
    return-object v0
.end method

.method public getMassagerIntensity(ILjava/lang/String;)I
    .locals 3
    .param p1, "id"    # I
    .param p2, "effect"    # Ljava/lang/String;

    .line 197
    const-string v0, "XpSeatMassagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMassagerIntensity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    sget-boolean v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->hasMassager:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getMassagerIntensity(ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getMassagerStatus(I)I
    .locals 3
    .param p1, "id"    # I

    .line 204
    const-string v0, "XpSeatMassagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMassagerStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    sget-boolean v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->hasMassager:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getMassagerStatus(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getRhythmEnable(I)I
    .locals 3
    .param p1, "id"    # I

    .line 251
    const-string v0, "XpSeatMassagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRhythmEnable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    sget-boolean v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->hasVibrate:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getRhythmEnable(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getRhythmIntensity(I)I
    .locals 3
    .param p1, "id"    # I

    .line 297
    const-string v0, "XpSeatMassagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRhythmIntensity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    sget-boolean v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->hasVibrate:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getRhythmIntensity(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getRhythmPattern()I
    .locals 2

    .line 311
    const-string v0, "XpSeatMassagerProxy"

    const-string v1, "getRhythmPattern"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    sget-boolean v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->hasVibrate:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getRhythmPattern()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getSeatMassagerNumbers()I
    .locals 1

    .line 87
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getSeatMassagerNumbers()I

    move-result v0

    return v0
.end method

.method public getSeatVibrateNumbers()I
    .locals 1

    .line 91
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getSeatVibrateNumbers()I

    move-result v0

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 338
    const-string v0, "XpSeatMassagerProxy"

    return-object v0
.end method

.method public getVibrateIntensity(I)I
    .locals 3
    .param p1, "id"    # I

    .line 281
    const-string v0, "XpSeatMassagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVibrateIntensity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    sget-boolean v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->hasVibrate:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getVibrateIntensity(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public init()V
    .locals 2

    .line 318
    const-string v0, "XpSeatMassagerProxy"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->loadMassagerEffect()V

    .line 321
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->loadVibrateEffect()V

    .line 322
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->addOperationListener()V

    .line 323
    return-void
.end method

.method public loadMassagerEffect()V
    .locals 5

    .line 132
    const-string v0, "XpSeatMassagerProxy"

    const-string v1, "loadMassagerEffect"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->clearMassagerEffect()V

    .line 136
    const-string v0, "/data/xuiservice/rsc/smm"

    const-string v1, "json"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->getAllFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 137
    .local v0, "userFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 138
    .local v2, "file":Ljava/lang/String;
    sget-object v3, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    invoke-virtual {v3, v2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->loadMassagerEffect(Ljava/lang/String;)V

    .line 139
    .end local v2    # "file":Ljava/lang/String;
    goto :goto_0

    .line 141
    :cond_0
    const-string v1, "/system/etc/xuiservice/smm"

    const-string v2, "json"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->getAllFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 142
    .local v1, "sysFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 143
    .local v3, "file":Ljava/lang/String;
    sget-object v4, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    invoke-virtual {v4, v3}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->loadMassagerEffect(Ljava/lang/String;)V

    .line 144
    .end local v3    # "file":Ljava/lang/String;
    goto :goto_1

    .line 145
    :cond_1
    return-void
.end method

.method public loadVibrate(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)I
    .locals 3
    .param p1, "fd"    # Landroid/content/res/AssetFileDescriptor;
    .param p2, "effect"    # Ljava/lang/String;

    .line 228
    const-string v0, "XpSeatMassagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadVibrate, effect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->loadVibrate(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public loadVibrateEffect()V
    .locals 5

    .line 211
    const-string v0, "XpSeatMassagerProxy"

    const-string v1, "loadVibrateEffect"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->clearVibrateEffect()V

    .line 215
    const-string v0, "/data/xuiservice/rsc/svm"

    const-string/jumbo v1, "wav"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->getAllFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 216
    .local v0, "userFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 217
    .local v2, "file":Ljava/lang/String;
    sget-object v3, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    invoke-virtual {v3, v2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->loadVibrateEffect(Ljava/lang/String;)V

    .line 218
    .end local v2    # "file":Ljava/lang/String;
    goto :goto_0

    .line 220
    :cond_0
    const-string v1, "/system/etc/xuiservice/svm"

    const-string/jumbo v2, "wav"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->getAllFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 221
    .local v1, "sysFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 222
    .local v3, "file":Ljava/lang/String;
    sget-object v4, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    invoke-virtual {v4, v3}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->loadVibrateEffect(Ljava/lang/String;)V

    .line 223
    .end local v3    # "file":Ljava/lang/String;
    goto :goto_1

    .line 224
    :cond_1
    return-void
.end method

.method public onMassagerEvent(IILjava/lang/String;I)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "type"    # I
    .param p3, "effect"    # Ljava/lang/String;
    .param p4, "data"    # I

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->listeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassagerEventListener;

    .line 110
    .local v1, "listener":Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassagerEventListener;
    :try_start_0
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassagerEventListener;->onMassagerEvent(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    goto :goto_1

    .line 111
    :catch_0
    move-exception v2

    .line 112
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "XpSeatMassagerProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMassagerEvent failed, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .end local v1    # "listener":Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassagerEventListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 115
    :cond_0
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "info":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->getInstance()Lcom/xiaopeng/xuiservice/debug/WatchDog;

    move-result-object v1

    const-string v2, "XpSeatMassagerProxy"

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->binderEnter(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const/4 v1, 0x1

    .line 75
    .local v1, "ret":Z
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    .line 80
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->getInstance()Lcom/xiaopeng/xuiservice/debug/WatchDog;

    move-result-object v2

    const-string v3, "XpSeatMassagerProxy"

    invoke-virtual {v2, v3, v0}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->binderLeave(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    nop

    .line 83
    return v1

    .line 80
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 76
    :catch_0
    move-exception v2

    .line 77
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "XpSeatMassagerProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTransact failed, e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->getInstance()Lcom/xiaopeng/xuiservice/debug/WatchDog;

    move-result-object v3

    const-string v4, "XpSeatMassagerProxy"

    invoke-virtual {v3, v4, v0}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->binderLeave(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method public onVibrateEvent(Ljava/util/List;ILjava/lang/String;I)V
    .locals 7
    .param p2, "type"    # I
    .param p3, "effect"    # Ljava/lang/String;
    .param p4, "data"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 119
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/smm/-$$Lambda$XpSeatMassagerProxy$znfQj8LqOvyui6ncUHU4komPIHY;->INSTANCE:Lcom/xiaopeng/xuiservice/capabilities/smm/-$$Lambda$XpSeatMassagerProxy$znfQj8LqOvyui6ncUHU4komPIHY;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 121
    .local v0, "strIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->listeners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassagerEventListener;

    .line 123
    .local v2, "listener":Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassagerEventListener;
    :try_start_0
    invoke-interface {v2, v0, p2, p3, p4}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassagerEventListener;->onVibrateEvent(Ljava/util/List;ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    goto :goto_1

    .line 124
    :catch_0
    move-exception v3

    .line 125
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "XpSeatMassagerProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onVibrateEvent failed, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .end local v2    # "listener":Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassagerEventListener;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 128
    :cond_0
    return-void
.end method

.method public registerListener(Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassagerEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassagerEventListener;

    .line 96
    const-string v0, "XpSeatMassagerProxy"

    const-string v1, "registerListener"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->registerListener(Landroid/os/IInterface;)Z

    .line 98
    return-void
.end method

.method public release()V
    .locals 2

    .line 327
    const-string v0, "XpSeatMassagerProxy"

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->clear()V

    .line 329
    return-void
.end method

.method public setMassagerEffect(Ljava/util/List;Ljava/lang/String;)I
    .locals 3
    .param p2, "effect"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 172
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "XpSeatMassagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMassagerEffect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    sget-boolean v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->hasMassager:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    .line 175
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/xuiservice/capabilities/smm/-$$Lambda$XpSeatMassagerProxy$JWLUSa4hQWAZf1TfuyVGazguidI;->INSTANCE:Lcom/xiaopeng/xuiservice/capabilities/smm/-$$Lambda$XpSeatMassagerProxy$JWLUSa4hQWAZf1TfuyVGazguidI;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 174
    invoke-virtual {v0, v1, p2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->setMassagerEffect(Ljava/util/List;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 176
    :cond_0
    const/4 v0, -0x1

    .line 174
    :goto_0
    return v0
.end method

.method public setMassagerIntensity(Ljava/util/List;I)I
    .locals 3
    .param p2, "intensity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    .line 188
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "XpSeatMassagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMassagerIntensity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    sget-boolean v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->hasMassager:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    .line 191
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/xuiservice/capabilities/smm/-$$Lambda$XpSeatMassagerProxy$JWLUSa4hQWAZf1TfuyVGazguidI;->INSTANCE:Lcom/xiaopeng/xuiservice/capabilities/smm/-$$Lambda$XpSeatMassagerProxy$JWLUSa4hQWAZf1TfuyVGazguidI;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 190
    invoke-virtual {v0, v1, p2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->setMassagerIntensity(Ljava/util/List;I)I

    move-result v0

    goto :goto_0

    .line 192
    :cond_0
    const/4 v0, -0x1

    .line 190
    :goto_0
    return v0
.end method

.method public setRhythmEnable(Ljava/util/List;Z)I
    .locals 3
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    .line 242
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "XpSeatMassagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRhythmEnable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string v2, "enable"

    goto :goto_0

    :cond_0
    const-string v2, "disable"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    sget-boolean v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->hasVibrate:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    .line 245
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/xuiservice/capabilities/smm/-$$Lambda$XpSeatMassagerProxy$JWLUSa4hQWAZf1TfuyVGazguidI;->INSTANCE:Lcom/xiaopeng/xuiservice/capabilities/smm/-$$Lambda$XpSeatMassagerProxy$JWLUSa4hQWAZf1TfuyVGazguidI;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 244
    invoke-virtual {v0, v1, p2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->setRhythmEnable(Ljava/util/List;Z)I

    move-result v0

    goto :goto_1

    .line 246
    :cond_1
    const/4 v0, -0x1

    .line 244
    :goto_1
    return v0
.end method

.method public setRhythmIntensity(Ljava/util/List;I)I
    .locals 3
    .param p2, "intensity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    .line 288
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "XpSeatMassagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRhythmIntensity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    sget-boolean v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->hasVibrate:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    .line 291
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/xuiservice/capabilities/smm/-$$Lambda$XpSeatMassagerProxy$JWLUSa4hQWAZf1TfuyVGazguidI;->INSTANCE:Lcom/xiaopeng/xuiservice/capabilities/smm/-$$Lambda$XpSeatMassagerProxy$JWLUSa4hQWAZf1TfuyVGazguidI;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 290
    invoke-virtual {v0, v1, p2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->setRhythmIntensity(Ljava/util/List;I)I

    move-result v0

    goto :goto_0

    .line 292
    :cond_0
    const/4 v0, -0x1

    .line 290
    :goto_0
    return v0
.end method

.method public setRhythmPattern(I)I
    .locals 3
    .param p1, "pattern"    # I

    .line 304
    const-string v0, "XpSeatMassagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRhythmPattern "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    sget-boolean v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->hasVibrate:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->setRhythmPattern(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public setVibrateIntensity(Ljava/util/List;I)I
    .locals 3
    .param p2, "intensity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    .line 272
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "XpSeatMassagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVibrateIntensity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    sget-boolean v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->hasVibrate:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    .line 275
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/xuiservice/capabilities/smm/-$$Lambda$XpSeatMassagerProxy$JWLUSa4hQWAZf1TfuyVGazguidI;->INSTANCE:Lcom/xiaopeng/xuiservice/capabilities/smm/-$$Lambda$XpSeatMassagerProxy$JWLUSa4hQWAZf1TfuyVGazguidI;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 274
    invoke-virtual {v0, v1, p2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->setVibrateIntensity(Ljava/util/List;I)I

    move-result v0

    goto :goto_0

    .line 276
    :cond_0
    const/4 v0, -0x1

    .line 274
    :goto_0
    return v0
.end method

.method public showMassagerEffect()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 149
    const-string v0, "XpSeatMassagerProxy"

    const-string v1, "showMassagerEffect"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->showMassagerEffect()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public showVibrateEffect()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 235
    const-string v0, "XpSeatMassagerProxy"

    const-string v1, "showVibrateEffect"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->showVibrateEffect()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public startMassager(Ljava/util/List;Ljava/lang/String;)I
    .locals 3
    .param p2, "effect"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/seatmassager/Seat;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 156
    .local p1, "seats":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/seatmassager/Seat;>;"
    const-string v0, "XpSeatMassagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMassager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    sget-boolean v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->hasMassager:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->hasIgOn()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->startMassager(Ljava/util/List;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public stopMassager(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 163
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "XpSeatMassagerProxy"

    const-string v1, "stopMassager"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    sget-boolean v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->hasMassager:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    .line 166
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/xuiservice/capabilities/smm/-$$Lambda$XpSeatMassagerProxy$JWLUSa4hQWAZf1TfuyVGazguidI;->INSTANCE:Lcom/xiaopeng/xuiservice/capabilities/smm/-$$Lambda$XpSeatMassagerProxy$JWLUSa4hQWAZf1TfuyVGazguidI;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 165
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->stopMassager(Ljava/util/List;)I

    move-result v0

    goto :goto_0

    .line 167
    :cond_0
    const/4 v0, -0x1

    .line 165
    :goto_0
    return v0
.end method

.method public stopVibrate()I
    .locals 2

    .line 265
    const-string v0, "XpSeatMassagerProxy"

    const-string v1, "stopVibrate"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    sget-boolean v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->hasVibrate:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->stopVibrate()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public unregisterListener(Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassagerEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassagerEventListener;

    .line 102
    const-string v0, "XpSeatMassagerProxy"

    const-string v1, "unregisterListener"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->unregisterListener(Landroid/os/IInterface;)Z

    .line 104
    return-void
.end method
