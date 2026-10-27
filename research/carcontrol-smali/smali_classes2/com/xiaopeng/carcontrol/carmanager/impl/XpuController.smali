.class public Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;
.super Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;
.source "XpuController.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController$XpuControllerFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/carcontrol/carmanager/BaseCarController<",
        "Landroid/car/hardware/xpu/CarXpuManager;",
        "Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController$Callback;",
        ">;",
        "Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;"
    }
.end annotation


# static fields
.field private static final KEY_NGP_INTELLIGENT_DRIVING_LIGHT:Ljava/lang/String; = "ngp_intelligent_driving_light"

.field private static final KEY_NGP_NEW_ALF_SW:Ljava/lang/String; = "keyNgpNewAlfSw"

.field private static final KEY_TURN_ASSISTANT_SW:Ljava/lang/String; = "turn_assistant_sw"

.field protected static final TAG:Ljava/lang/String; = "XpuController"

.field private static final TURN_ASSISTANT_OFF:I = 0x0

.field private static final TURN_ASSISTANT_ON:I = 0x1


# instance fields
.field private final MAP_PRIVACY_EXPERIENCE_SW:Ljava/lang/String;

.field private final XPILOT_PRIVACY_EXPERIENCE_SW:Ljava/lang/String;

.field private mCarIntelligentManager:Landroid/car/intelligent/CarIntelligentEngineManager;

.field private final mCarXpuEventCallback:Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;

.field private mCngpSafeExamResult:Ljava/lang/Boolean;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mOOBEContenOberver:Landroid/database/ContentObserver;

.field private mXngpSafeExamResult:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/car/Car;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "carClient"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;-><init>()V

    const-string p1, "XPILOT_PRIVACY_EXPERIENCE_SW"

    .line 56
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->XPILOT_PRIVACY_EXPERIENCE_SW:Ljava/lang/String;

    const-string v0, "MAP_PRIVACY_EXPERIENCE_SW"

    .line 57
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->MAP_PRIVACY_EXPERIENCE_SW:Ljava/lang/String;

    const/4 v1, 0x0

    .line 61
    iput-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCngpSafeExamResult:Ljava/lang/Boolean;

    .line 62
    iput-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mXngpSafeExamResult:Ljava/lang/Boolean;

    .line 68
    new-instance v1, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController$1;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;)V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCarXpuEventCallback:Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;

    .line 81
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mIsMainProcess:Z

    if-nez v1, :cond_0

    const/4 p1, 0x2

    .line 83
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$CcO25jkjOM_rr8DrYyOdTdJjSHw;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$CcO25jkjOM_rr8DrYyOdTdJjSHw;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;)V

    const-wide/16 v1, 0x7d0

    invoke-static {p1, v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    goto :goto_0

    .line 94
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 95
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v2, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController$2;

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->getHandler(I)Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController$2;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;Landroid/os/Handler;)V

    .line 94
    invoke-virtual {v1, p1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 109
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 110
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController$3;

    invoke-static {v3}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->getHandler(I)Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController$3;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;Landroid/os/Handler;)V

    .line 109
    invoke-virtual {p1, v0, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;Landroid/car/hardware/CarPropertyValue;)V
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->handleCarEventsUpdate(Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;)Ljava/lang/Boolean;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCngpSafeExamResult:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$302(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCngpSafeExamResult:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$400(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;)Ljava/lang/Boolean;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mXngpSafeExamResult:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$402(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mXngpSafeExamResult:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$500(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->handleNraUpdate(I)V

    return-void
.end method

.method private static convertCrossBarriersState(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static convertRaebState(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    if-eqz p0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    const/4 v1, 0x4

    if-eq p0, v1, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 p0, 0x9

    return p0

    :cond_1
    const/16 p0, 0x8

    return p0

    :cond_2
    return v0

    :cond_3
    return p0
.end method

.method private static convertTrafficLightState(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private handleNraUpdate(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 416
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 417
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController$Callback;

    .line 418
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController$Callback;->onNraStateChanged(I)V

    goto :goto_0

    .line 420
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

.method private registerContentObserver()V
    .locals 4

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController$4;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->getHandler(I)Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController$4;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mContentObserver:Landroid/database/ContentObserver;

    .line 150
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "cngp_safe_exam_notify"

    .line 151
    invoke-static {v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mContentObserver:Landroid/database/ContentObserver;

    .line 150
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 152
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "xngp_safe_exam_notify"

    .line 153
    invoke-static {v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mContentObserver:Landroid/database/ContentObserver;

    .line 152
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 154
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "set_nra_state"

    .line 155
    invoke-static {v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mContentObserver:Landroid/database/ContentObserver;

    .line 154
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private saveNraFunctionByState(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 408
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setNraSw(Z)V

    goto :goto_0

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setNraSw(Z)V

    .line 411
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setNraState(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected disconnect()V
    .locals 4

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCarManager:Landroid/car/CarManagerBase;

    if-eqz v0, :cond_0

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/xpu/CarXpuManager;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mPropertyIds:Ljava/util/List;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCarXpuEventCallback:Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;

    invoke-virtual {v0, v1, v2}, Landroid/car/hardware/xpu/CarXpuManager;->unregisterPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "XpuController"

    .line 247
    invoke-static {v3, v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getAsLockScenario()I
    .locals 4

    .line 806
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$aFFbD8eMvYH7EDby62jStz_XkjI;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$aFFbD8eMvYH7EDby62jStz_XkjI;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->getValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 807
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAsLockScenario: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "XpuController"

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getAsTargetMaxHeightRequest()I
    .locals 4

    .line 820
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$vl4dH2OL2gnCnswdR8Dx2NwU3EU;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$vl4dH2OL2gnCnswdR8Dx2NwU3EU;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->getValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 821
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAsTargetMaxHeightRequest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "XpuController"

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getAsTargetMinHeightRequest()I
    .locals 4

    .line 813
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$nHa7T3khctG23LJ4mC__HXehLNA;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$nHa7T3khctG23LJ4mC__HXehLNA;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->getValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 814
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAsTargetMinHeightRequest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "XpuController"

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getBodyFaultIndicationSw()Z
    .locals 1

    .line 895
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getBodyFaultIndicationSw()Z

    move-result v0

    return v0
.end method

.method public getCngpModeStatus()I
    .locals 4

    .line 827
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$6H6tmFJ7EQ2HFXxkTYP-Dx-S47I;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$6H6tmFJ7EQ2HFXxkTYP-Dx-S47I;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->getValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 828
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCngpModeStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "XpuController"

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getCngpSafeExamResult(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 639
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mIsMainProcess:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 641
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getCngpSafeExamResult()Z

    move-result p1

    return p1

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getCngpSafeExamResult(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 645
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCngpSafeExamResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCngpSafeExamResult:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XpuController"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_2

    .line 647
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "cngp_safe_exam"

    invoke-static {p1, v1, v0}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p1

    return p1

    .line 650
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCngpSafeExamResult:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getDrivingRiskWarningSw()Z
    .locals 1

    .line 910
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getDrivingRiskWarningSw()Z

    move-result v0

    return v0
.end method

.method public getGreenLightRemindStateSw()Z
    .locals 1

    .line 941
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getGreenLightRemindStateSw()Z

    move-result v0

    return v0
.end method

.method public getIntelligentOverspeedRemindStateSw()Z
    .locals 1

    .line 956
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getIntelligentOverspeedRemindStateSw()Z

    move-result v0

    return v0
.end method

.method public getLccCrossBarriersSw()I
    .locals 4

    .line 834
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$wXQz4_3tdNSYBE0QzLWMJE6bV3M;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$wXQz4_3tdNSYBE0QzLWMJE6bV3M;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->getValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 835
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLccCrossBarriersSw: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "XpuController"

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 836
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->convertCrossBarriersState(I)I

    move-result v0

    return v0
.end method

.method public getLccTrafficLightSw()I
    .locals 4

    .line 848
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$8UxIK2ZyQZS0vqc1jyt8f1GArcA;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$8UxIK2ZyQZS0vqc1jyt8f1GArcA;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->getValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 849
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLccTrafficLightSw: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "XpuController"

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 850
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->convertTrafficLightState(I)I

    move-result v0

    return v0
.end method

.method public getLssSensitivity()I
    .locals 4

    const-string v0, "isSupportLka"

    .line 338
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x21403843

    .line 339
    new-instance v2, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$7NXQkVGNjzV4pT4i0E5K2zJAJlY;

    invoke-direct {v2, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$7NXQkVGNjzV4pT4i0E5K2zJAJlY;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->getValue(ILcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 340
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLssSensitivity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "XpuController"

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    move v1, v0

    :cond_0
    return v1
.end method

.method public getMapUserExperiencePlanState()Z
    .locals 3

    const-string v0, "isSupportPrivacyCollection"

    .line 542
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getMapUserExperiencePlanState()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 544
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDataSync getMapUserExperiencePlanState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "XpuController"

    invoke-static {v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getNedcSwitchStatus()I
    .locals 4

    .line 482
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$DQ8rnYaOZiz8nidL7JVEdY-XJ5s;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$DQ8rnYaOZiz8nidL7JVEdY-XJ5s;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;)V

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x21403807

    invoke-virtual {p0, v2, v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->getValue(ILcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNedcSwitchStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "XpuController"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getNgpActivateModeState()Z
    .locals 4

    .line 632
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$lJ2x7NjYOg95110Mlkbnxl0fGgM;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$lJ2x7NjYOg95110Mlkbnxl0fGgM;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x2140387b

    invoke-virtual {p0, v3, v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->getValue(ILcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 633
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNgpActivateModeState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "XpuController"

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public getNgpAflFunctionVisibility()Z
    .locals 4

    .line 579
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ngp_intelligent_driving_light"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 581
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNgpAflFunctionVisibility: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "XpuController"

    invoke-static {v3, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v2
.end method

.method public getNgpAflState()I
    .locals 4

    .line 565
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$B2MnyHOH89Hgp99_Rnr9T1BTnFo;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$B2MnyHOH89Hgp99_Rnr9T1BTnFo;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x21403875

    invoke-virtual {p0, v3, v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->getValue(ILcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 566
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNgpAflState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "XpuController"

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getNgpCustomSpeedKph()I
    .locals 4

    .line 723
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$O4I5pmlnD1R2uBmmGzsP2Ru_uLo;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$O4I5pmlnD1R2uBmmGzsP2Ru_uLo;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;)V

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->getValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 724
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNgpCustomSpeedKph: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "XpuController"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getNgpCustomSpeedMode()I
    .locals 4

    .line 709
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$FYXX8Nlo9mFqarUBaDqxcG4h8fs;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$FYXX8Nlo9mFqarUBaDqxcG4h8fs;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;)V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->getValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 710
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNgpCustomSpeedMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "XpuController"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getNgpCustomSpeedPercent()I
    .locals 4

    .line 737
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$iISZ0O3FBwSzpKrOv0rrlKErYZw;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$iISZ0O3FBwSzpKrOv0rrlKErYZw;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;)V

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->getValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 738
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNgpCustomSpeedPercent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "XpuController"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getNgpFreeNgpState()Z
    .locals 4

    .line 618
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$FGCWb0ga-xSDdZ2G1K2ZNehZ9vI;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$FGCWb0ga-xSDdZ2G1K2ZNehZ9vI;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x21403863

    invoke-virtual {p0, v3, v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->getValue(ILcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 619
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNgpFreeNgpState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "XpuController"

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public getNgpNewAflState()Z
    .locals 4

    .line 601
    invoke-static {}, Landroid/car/XpCarFeatures;->hasAdasRemindLightFeature()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 602
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "keyNgpNewAlfSw"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 604
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNgpNewAflState: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "XpuController"

    invoke-static {v3, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    move v2, v1

    :cond_1
    return v2
.end method

.method public getNgpOvertakeMode()I
    .locals 4

    .line 751
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$yQ0_ixiCVB2CYQsZ0Q1_uGcmT_k;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$yQ0_ixiCVB2CYQsZ0Q1_uGcmT_k;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x2140382b

    invoke-virtual {p0, v3, v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->getValue(ILcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 752
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNgpOvertakeMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "XpuController"

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getNgpPreferLaneCfg()I
    .locals 4

    .line 765
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$KXOK8m6MkcY8P1pJOHZor0vYTV0;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$KXOK8m6MkcY8P1pJOHZor0vYTV0;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x2140382c

    invoke-virtual {p0, v3, v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->getValue(ILcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 766
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNgpPreferLaneCfg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "XpuController"

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getNraCacheState()I
    .locals 2

    .line 394
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getNraState()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x2

    :cond_1
    return v0
.end method

.method public getNraState()I
    .locals 5

    const-string v0, "XpuController"

    const/4 v1, 0x0

    .line 372
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCarIntelligentManager:Landroid/car/intelligent/CarIntelligentEngineManager;

    invoke-virtual {v2}, Landroid/car/intelligent/CarIntelligentEngineManager;->getCarDrivingSceneNRALevel()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    .line 374
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNraState failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    move v2, v1

    .line 377
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNraState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v2
.end method

.method public getNraSw()Z
    .locals 1

    .line 425
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->getNraState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRaebState()I
    .locals 4

    const-string v0, "isSupportRaeb"

    .line 319
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x214026ee

    .line 320
    new-instance v2, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$ZT5cPeF6u03BhxPHnP1jTo70a5g;

    invoke-direct {v2, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$ZT5cPeF6u03BhxPHnP1jTo70a5g;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;)V

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->getValue(ILcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRaebState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "XpuController"

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 322
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->convertRaebState(I)I

    move-result v0

    return v0

    :cond_0
    return v1
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

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "isSupportRaeb"

    .line 187
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x214026ee

    .line 188
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v1, "isSupportLka"

    .line 190
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x21403843

    .line 191
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v1, "isSupportSimpleSas"

    .line 193
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "isLssCertification"

    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const v1, 0x21403830

    .line 194
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v1, "isSupportNra"

    .line 196
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x21403821

    .line 197
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v1, "isSupportMemPark"

    .line 199
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "isSupportEnhancedParkFunc"

    .line 200
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x21403814

    .line 201
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string v1, "isSupportXpu"

    .line 204
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "isSupportXpuNedc"

    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const v1, 0x21403807

    .line 205
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    const-string v1, "isSupportNgp"

    .line 208
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mIsMainProcess:Z

    if-eqz v1, :cond_7

    const v1, 0x2140382b

    .line 209
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x2140382c

    .line 210
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x21403875

    .line 211
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    const-string v1, "isSupportCNgp"

    .line 213
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const v1, 0x21403805

    .line 214
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x21403863

    .line 216
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    const v1, 0x2140387b

    .line 219
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "isSupportNgpCustomSpeed"

    .line 221
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const v1, 0x21403853

    .line 222
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x21403854

    .line 223
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x21403855

    .line 224
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    const-string v1, "isSupportSpecialSas"

    .line 227
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const v1, 0x21403826

    .line 228
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x21403827

    .line 229
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    const-string v1, "isSupportCrossBarriers"

    .line 231
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const v1, 0x2140384a

    .line 232
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    const-string v1, "isSupportTrafficLight"

    .line 234
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const v1, 0x2140384d

    .line 235
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    const v1, 0x2140386b

    .line 237
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getSimpleSasSw()I
    .locals 4

    .line 356
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$wW-NpyqDhl40aN0ZmJtcMDI3hDQ;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$wW-NpyqDhl40aN0ZmJtcMDI3hDQ;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x21403830

    invoke-virtual {p0, v3, v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->getValue(ILcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 357
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimpleSasSw: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "XpuController"

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getSoundSw()Z
    .locals 4

    .line 779
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$15X3j6SyqdsvLNHJeI7aK67oyVU;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$15X3j6SyqdsvLNHJeI7aK67oyVU;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x21403826

    invoke-virtual {p0, v3, v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->getValue(ILcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 780
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSoundSw: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "XpuController"

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public getStartRemindStateSw()Z
    .locals 1

    .line 926
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getStartRemindStateSw()Z

    move-result v0

    return v0
.end method

.method public getTurnAssistantSw()Z
    .locals 4

    const-string v0, "isSupportTurnAssist"

    .line 451
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 452
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "turn_assistant_sw"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 455
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTurnAssistantSw: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "XpuController"

    invoke-static {v3, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v2
.end method

.method public getVoiceSw()Z
    .locals 4

    .line 793
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$NW9YKwP21X-snOjsPOffML1n0dE;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$NW9YKwP21X-snOjsPOffML1n0dE;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x21403827

    invoke-virtual {p0, v3, v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->getValue(ILcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 794
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVoiceSw: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "XpuController"

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public getXngpSafeExamResult(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 674
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mIsMainProcess:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 676
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getXngpSafeExamResult()Z

    move-result p1

    return p1

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getXngpSafeExamResult(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 680
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getXngpSafeExamResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mXngpSafeExamResult:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XpuController"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_2

    .line 682
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const-string/jumbo v1, "xngp_safe_exam"

    invoke-static {p1, v1, v0}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p1

    return p1

    .line 685
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mXngpSafeExamResult:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getXpilotUserExperiencePlanState()Z
    .locals 3

    const-string v0, "isSupportPrivacyCollection"

    .line 511
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getXpilotUserExperiencePlanState()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDataSync getXpilotUserExperiencePlanState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "XpuController"

    invoke-static {v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getXpilotUserExperienceTitle()Ljava/lang/String;
    .locals 5

    const-string v0, "XpuController"

    const/4 v1, 0x0

    .line 553
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0xd1

    invoke-static {v2, v3}, Lcom/xiaopeng/privacymanager/PrivacySettings;->getProtocolName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    :goto_0
    const-string v3, "getXpilotUserExperienceTitle error"

    .line 555
    invoke-static {v0, v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    const-string v2, ""

    .line 557
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getXpilotUserExperienceTitle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v2
.end method

.method public getXpuBrakeFunctionMode()I
    .locals 4

    .line 1015
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$BIJLA7SKvTZ94ai9rt-nKpzYx_0;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$BIJLA7SKvTZ94ai9rt-nKpzYx_0;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x2140386b

    invoke-virtual {p0, v3, v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->getValue(ILcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1016
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getXpuBrakeFunctionMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "XpuController"

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getXpuConnected()Z
    .locals 4

    .line 868
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$z8aYIXpR5Z6-iMvXYqFqhdLUYGs;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$z8aYIXpR5Z6-iMvXYqFqhdLUYGs;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->getValue(ILcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 869
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getXpuConnected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "XpuController"

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method protected handleEventsUpdate(Landroid/car/hardware/CarPropertyValue;)V
    .locals 3
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

    .line 254
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handle unknown event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "XpuController"

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 298
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ClyK4WMnUoan-ujrMj0hlQPaUkw;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ClyK4WMnUoan-ujrMj0hlQPaUkw;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto/16 :goto_0

    .line 283
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_1

    move v1, v2

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$z279TiJUEsJVmVIgHLe7e1KZGjM;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$z279TiJUEsJVmVIgHLe7e1KZGjM;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto/16 :goto_0

    .line 310
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$CNxnYyJGsHYOTnnlWIwbeoYrkBw;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$CNxnYyJGsHYOTnnlWIwbeoYrkBw;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto/16 :goto_0

    .line 256
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$K2NDUXUQmrv9yWumQR7c3alKLAQ;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$K2NDUXUQmrv9yWumQR7c3alKLAQ;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto/16 :goto_0

    .line 307
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$JBRFSRFusk7ZrTZa2YdRLf-KAU8;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$JBRFSRFusk7ZrTZa2YdRLf-KAU8;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto/16 :goto_0

    .line 304
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$As0SnZnSYEjStGqpccT_6q2he5Q;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$As0SnZnSYEjStGqpccT_6q2he5Q;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto/16 :goto_0

    .line 301
    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$gtYh3dbZbW5_5SK_lgxdf_hZU2w;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$gtYh3dbZbW5_5SK_lgxdf_hZU2w;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto/16 :goto_0

    .line 295
    :sswitch_7
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->convertTrafficLightState(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$vVEabZZvHGf5hx3FInsfwzOWQew;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$vVEabZZvHGf5hx3FInsfwzOWQew;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto/16 :goto_0

    .line 292
    :sswitch_8
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->convertCrossBarriersState(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$_DgEkLRqZsj0a3zBIHqtZIe-gVg;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$_DgEkLRqZsj0a3zBIHqtZIe-gVg;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto/16 :goto_0

    .line 262
    :sswitch_9
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$k6mJH4Uhsvu_PNKLUei54jqiZV0;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$k6mJH4Uhsvu_PNKLUei54jqiZV0;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto/16 :goto_0

    .line 265
    :sswitch_a
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$hQhNO6vdDvORUY62y2ptxZtRgWg;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$hQhNO6vdDvORUY62y2ptxZtRgWg;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto/16 :goto_0

    .line 280
    :sswitch_b
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$-B6VO4ruiMwcNXv-r9GY4BUZ5-8;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$-B6VO4ruiMwcNXv-r9GY4BUZ5-8;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto/16 :goto_0

    .line 277
    :sswitch_c
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$LMUFPPNJnCyoI0wuLRdTMNp8Wvc;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$LMUFPPNJnCyoI0wuLRdTMNp8Wvc;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto/16 :goto_0

    .line 289
    :sswitch_d
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_3

    move v1, v2

    :cond_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$MiJ30ESHw6PiTE3t8hHIZ-outHU;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$MiJ30ESHw6PiTE3t8hHIZ-outHU;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto :goto_0

    .line 286
    :sswitch_e
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_4

    move v1, v2

    :cond_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$1E9WysPd80jwDd4slQZgrWTALbw;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$1E9WysPd80jwDd4slQZgrWTALbw;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto :goto_0

    .line 268
    :sswitch_f
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_5

    move v1, v2

    :cond_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$TpaOKSgHYKAr5JHssp2b2E9QPFQ;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$TpaOKSgHYKAr5JHssp2b2E9QPFQ;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto :goto_0

    .line 271
    :sswitch_10
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$3SFBCZHHFE9oxbhw8rh5BRg-14E;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$3SFBCZHHFE9oxbhw8rh5BRg-14E;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto :goto_0

    .line 274
    :sswitch_11
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_6

    move v1, v2

    :cond_6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$d85psdyFkCZ7NyNWew1dqNLNST4;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$d85psdyFkCZ7NyNWew1dqNLNST4;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto :goto_0

    .line 259
    :sswitch_12
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->convertRaebState(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$dR9HxOa5D67YX9mF7OqFOgOOEog;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$dR9HxOa5D67YX9mF7OqFOgOOEog;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x214026ee -> :sswitch_12
        0x21403805 -> :sswitch_11
        0x21403807 -> :sswitch_10
        0x21403821 -> :sswitch_f
        0x21403826 -> :sswitch_e
        0x21403827 -> :sswitch_d
        0x2140382b -> :sswitch_c
        0x2140382c -> :sswitch_b
        0x21403830 -> :sswitch_a
        0x21403843 -> :sswitch_9
        0x2140384a -> :sswitch_8
        0x2140384d -> :sswitch_7
        0x21403853 -> :sswitch_6
        0x21403854 -> :sswitch_5
        0x21403855 -> :sswitch_4
        0x21403863 -> :sswitch_3
        0x2140386b -> :sswitch_2
        0x21403875 -> :sswitch_1
        0x2140387b -> :sswitch_0
    .end sparse-switch
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

    :try_start_0
    const-string/jumbo v0, "xp_xpu"

    .line 167
    invoke-virtual {p1, v0}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/CarXpuManager;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCarManager:Landroid/car/CarManagerBase;

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCarManager:Landroid/car/CarManagerBase;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mPropertyIds:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mPropertyIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/xpu/CarXpuManager;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mPropertyIds:Ljava/util/List;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCarXpuEventCallback:Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;

    invoke-virtual {v0, v1, v2}, Landroid/car/hardware/xpu/CarXpuManager;->registerPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    :cond_0
    const-string v0, "intelligent"

    .line 173
    invoke-virtual {p1, v0}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/intelligent/CarIntelligentEngineManager;

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCarIntelligentManager:Landroid/car/intelligent/CarIntelligentEngineManager;
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "XpuController"

    .line 175
    invoke-static {v2, v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_0
    return-void
.end method

.method protected initXuiManager()V
    .locals 0

    return-void
.end method

.method public isCameraOverTemp()Z
    .locals 5

    .line 875
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/xpu/CarXpuManager;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/CarXpuManager;->getBinocularCameraOverTempStatus()[I

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 876
    array-length v2, v0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 879
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCameraOverTemp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget v4, v0, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "XpuController"

    invoke-static {v4, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 880
    aget v2, v0, v1

    if-eq v2, v3, :cond_1

    aget v0, v0, v3

    if-ne v0, v3, :cond_2

    :cond_1
    move v1, v3

    :cond_2
    :goto_0
    return v1
.end method

.method public synthetic lambda$getAsLockScenario$33$XpuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 806
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/xpu/CarXpuManager;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/CarXpuManager;->getAsLockScenario()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getAsTargetMaxHeightRequest$35$XpuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 820
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/xpu/CarXpuManager;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/CarXpuManager;->getAsTargetMaximumHeightRequest()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getAsTargetMinHeightRequest$34$XpuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 813
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/xpu/CarXpuManager;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/CarXpuManager;->getAsTargetMinimumHeightRequest()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getCngpModeStatus$36$XpuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 827
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/xpu/CarXpuManager;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/CarXpuManager;->getNgpModeIndexMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getLccCrossBarriersSw$37$XpuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 834
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/xpu/CarXpuManager;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/CarXpuManager;->getLLCCDetourSw()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getLccTrafficLightSw$39$XpuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 848
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/xpu/CarXpuManager;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/CarXpuManager;->getLccLStraightSw()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getLssSensitivity$3$XpuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 339
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/xpu/CarXpuManager;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/CarXpuManager;->getLssSensitivitySwitchStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getNedcSwitchStatus$9$XpuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 482
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/xpu/CarXpuManager;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/CarXpuManager;->getNedcSwitchStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getNgpActivateModeState$18$XpuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 632
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/xpu/CarXpuManager;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/CarXpuManager;->getXpuAdasOneShotActiveSw()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getNgpAflState$12$XpuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 565
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/xpu/CarXpuManager;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/CarXpuManager;->getXpuAdasFunctionLampSw()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getNgpCustomSpeedKph$21$XpuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 723
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/xpu/CarXpuManager;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/CarXpuManager;->getNgpCustomSpeedCountLever()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getNgpCustomSpeedMode$19$XpuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 709
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/xpu/CarXpuManager;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/CarXpuManager;->getNgpCustomSpeedSwitchStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getNgpCustomSpeedPercent$23$XpuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 737
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/xpu/CarXpuManager;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/CarXpuManager;->getNgpCustomSpeedCountPercent()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getNgpFreeNgpState$16$XpuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 618
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/xpu/CarXpuManager;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/CarXpuManager;->getFNgpRoutePushSw()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getNgpOvertakeMode$25$XpuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 751
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/xpu/CarXpuManager;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/CarXpuManager;->getNgpULCSwMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getNgpPreferLaneCfg$27$XpuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 765
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/xpu/CarXpuManager;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/CarXpuManager;->getNgpOptimalLaneSw()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getRaebState$1$XpuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 320
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/xpu/CarXpuManager;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/CarXpuManager;->getRaebSwitchStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getSimpleSasSw$5$XpuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 356
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/xpu/CarXpuManager;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/CarXpuManager;->getISLCDriverSet()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getSoundSw$29$XpuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 779
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/xpu/CarXpuManager;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/CarXpuManager;->getSlifSoundStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getVoiceSw$31$XpuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 793
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/xpu/CarXpuManager;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/CarXpuManager;->getSlwfVoiceStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getXpuBrakeFunctionMode$43$XpuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1015
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/xpu/CarXpuManager;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/CarXpuManager;->getBrakeFunctionMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getXpuConnected$42$XpuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 868
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/xpu/CarXpuManager;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/CarXpuManager;->getXpuConnectionStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$new$0$XpuController()V
    .locals 4

    .line 84
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cngp_safe_exam"

    const/4 v2, 0x0

    .line 85
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCngpSafeExamResult:Ljava/lang/Boolean;

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCngpSafeExamResult: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCngpSafeExamResult:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "XpuController"

    invoke-static {v3, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "xngp_safe_exam"

    .line 88
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mXngpSafeExamResult:Ljava/lang/Boolean;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getXngpSafeExamResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mXngpSafeExamResult:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->registerContentObserver()V

    return-void
.end method

.method public synthetic lambda$setLccCrossBarriersSw$38$XpuController(ZLjava/lang/Void;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "enable",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 842
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p2, Landroid/car/hardware/xpu/CarXpuManager;

    invoke-virtual {p2, p1}, Landroid/car/hardware/xpu/CarXpuManager;->setLLCCDetourSw(I)V

    return-void
.end method

.method public synthetic lambda$setLccTrafficLightSw$40$XpuController(ZLjava/lang/Void;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "enable",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 856
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p2, Landroid/car/hardware/xpu/CarXpuManager;

    invoke-virtual {p2, p1}, Landroid/car/hardware/xpu/CarXpuManager;->setLccLStraightSw(I)V

    return-void
.end method

.method public synthetic lambda$setLssSensitivity$4$XpuController(ILjava/lang/Void;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "value",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 349
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p2, Landroid/car/hardware/xpu/CarXpuManager;

    invoke-virtual {p2, p1}, Landroid/car/hardware/xpu/CarXpuManager;->setLssSensitivitySwitchStatus(I)V

    return-void
.end method

.method public synthetic lambda$setMapUserExperiencePlanState$11$XpuController(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "state"
        }
    .end annotation

    .line 524
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$plSElbVpPlgY1uBAmnEg7_nKESU;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$plSElbVpPlgY1uBAmnEg7_nKESU;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public synthetic lambda$setMrrEnable$41$XpuController(ZLjava/lang/Void;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "enable",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 863
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p2, Landroid/car/hardware/xpu/CarXpuManager;

    invoke-virtual {p2, p1}, Landroid/car/hardware/xpu/CarXpuManager;->setRadarEmissionSwitchStatus(I)V

    return-void
.end method

.method public synthetic lambda$setNedcSwitch$8$XpuController(ZLjava/lang/Void;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "active",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 474
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p2, Landroid/car/hardware/xpu/CarXpuManager;

    invoke-virtual {p2, p1}, Landroid/car/hardware/xpu/CarXpuManager;->setNedcSwitch(I)V

    .line 475
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v0, "xp_carcontrol_nedc_sw"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public synthetic lambda$setNgpActivateModeEnable$17$XpuController(ZLjava/lang/Void;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "enable",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 626
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p2, Landroid/car/hardware/xpu/CarXpuManager;

    invoke-virtual {p2, p1}, Landroid/car/hardware/xpu/CarXpuManager;->setXpuAdasOneShotActiveSw(I)I

    return-void
.end method

.method public synthetic lambda$setNgpAflEnable$13$XpuController(ZLjava/lang/Void;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "enable",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 572
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p2, Landroid/car/hardware/xpu/CarXpuManager;

    invoke-virtual {p2, p1}, Landroid/car/hardware/xpu/CarXpuManager;->setXpuAdasFunctionLampSw(I)I

    return-void
.end method

.method public synthetic lambda$setNgpCustomSpeedKph$22$XpuController(ILjava/lang/Void;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "value",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 731
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p2, Landroid/car/hardware/xpu/CarXpuManager;

    invoke-virtual {p2, p1}, Landroid/car/hardware/xpu/CarXpuManager;->setNgpCustomSpeedCountLever(I)V

    return-void
.end method

.method public synthetic lambda$setNgpCustomSpeedMode$20$XpuController(ILjava/lang/Void;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "mode",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 717
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p2, Landroid/car/hardware/xpu/CarXpuManager;

    invoke-virtual {p2, p1}, Landroid/car/hardware/xpu/CarXpuManager;->setNgpCustomSpeedSwitchStatus(I)V

    return-void
.end method

.method public synthetic lambda$setNgpCustomSpeedPercent$24$XpuController(ILjava/lang/Void;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "value",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 745
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p2, Landroid/car/hardware/xpu/CarXpuManager;

    invoke-virtual {p2, p1}, Landroid/car/hardware/xpu/CarXpuManager;->setNgpCustomSpeedCountPercent(I)V

    return-void
.end method

.method public synthetic lambda$setNgpFreeNgpEnable$15$XpuController(ZLjava/lang/Void;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "enable",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 612
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p2, Landroid/car/hardware/xpu/CarXpuManager;

    invoke-virtual {p2, p1}, Landroid/car/hardware/xpu/CarXpuManager;->setFNgpRoutePushSw(I)I

    return-void
.end method

.method public synthetic lambda$setNgpNewAflEnable$14$XpuController(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "enable"
        }
    .end annotation

    .line 594
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$mDmquxY5chZocC-y8dfKXwoKkKg;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$mDmquxY5chZocC-y8dfKXwoKkKg;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public synthetic lambda$setNgpOvertakeMode$26$XpuController(ILjava/lang/Void;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "mode",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 759
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p2, Landroid/car/hardware/xpu/CarXpuManager;

    invoke-virtual {p2, p1}, Landroid/car/hardware/xpu/CarXpuManager;->setNgpULCSwMode(I)V

    return-void
.end method

.method public synthetic lambda$setNgpPreferLaneCfg$28$XpuController(ILjava/lang/Void;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "mode",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 773
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p2, Landroid/car/hardware/xpu/CarXpuManager;

    invoke-virtual {p2, p1}, Landroid/car/hardware/xpu/CarXpuManager;->setNgpOptimalLaneSw(I)V

    return-void
.end method

.method public synthetic lambda$setRaebState$2$XpuController(ZLjava/lang/Void;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "enable",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 331
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p2, Landroid/car/hardware/xpu/CarXpuManager;

    invoke-virtual {p2, p1}, Landroid/car/hardware/xpu/CarXpuManager;->setRaebSwitchStatus(I)V

    return-void
.end method

.method public synthetic lambda$setSimpleSasSw$6$XpuController(ILjava/lang/Void;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "mode",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 364
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p2, Landroid/car/hardware/xpu/CarXpuManager;

    invoke-virtual {p2, p1}, Landroid/car/hardware/xpu/CarXpuManager;->setISLCDriverSet(I)V

    return-void
.end method

.method public synthetic lambda$setSoundSw$30$XpuController(ZLjava/lang/Void;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "enable",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 787
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p2, Landroid/car/hardware/xpu/CarXpuManager;

    invoke-virtual {p2, p1}, Landroid/car/hardware/xpu/CarXpuManager;->setSlifSoundStatus(I)V

    return-void
.end method

.method public synthetic lambda$setTurnAssistantEnable$7$XpuController(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "enable"
        }
    .end annotation

    .line 466
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$tQIXwWEvB1Qd0A4wz5os0zOCxRQ;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$tQIXwWEvB1Qd0A4wz5os0zOCxRQ;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public synthetic lambda$setVoiceSw$32$XpuController(ZLjava/lang/Void;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "enable",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 801
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p2, Landroid/car/hardware/xpu/CarXpuManager;

    invoke-virtual {p2, p1}, Landroid/car/hardware/xpu/CarXpuManager;->setSlwfVoiceStatus(I)V

    return-void
.end method

.method public synthetic lambda$setXpilotUserExperiencePlanState$10$XpuController(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "state"
        }
    .end annotation

    .line 493
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ixRoaoQysZqi1Zek6DBRqi9XvGk;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ixRoaoQysZqi1Zek6DBRqi9XvGk;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public synthetic lambda$setXpuAdasOneShotActive$44$XpuController(ZLjava/lang/Void;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "enable",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1022
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p2, Landroid/car/hardware/xpu/CarXpuManager;

    invoke-virtual {p2, p1}, Landroid/car/hardware/xpu/CarXpuManager;->setXpuAdasOneShotActive(I)I

    return-void
.end method

.method public setBodyFaultIndicationSw(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 884
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mIsMainProcess:Z

    if-eqz v0, :cond_1

    .line 885
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setBodyFaultIndicationSw(Z)V

    .line 886
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 887
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController$Callback;

    .line 888
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController$Callback;->onBodyFaultIndicationChanged(Z)V

    goto :goto_0

    .line 890
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_1
    return-void
.end method

.method public setCngpSafeExamResult(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "result"
        }
    .end annotation

    .line 655
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mIsMainProcess:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 657
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setCngpSafeExamResult(Z)V

    goto :goto_0

    .line 659
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setCngpSafeExamResult(Ljava/lang/String;Z)V

    .line 662
    :goto_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "cngp_safe_exam_notify"

    invoke-static {p1, v0, p2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    goto :goto_1

    .line 665
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setCngpSafeExamResult: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "XpuController"

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCngpSafeExamResult:Ljava/lang/Boolean;

    .line 667
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "cngp_safe_exam"

    invoke-static {p1, v0, p2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :goto_1
    return-void
.end method

.method public setDrivingRiskWarningSw(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 899
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mIsMainProcess:Z

    if-eqz v0, :cond_1

    .line 900
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setDrivingRiskWarningSw(Z)V

    .line 901
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 902
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController$Callback;

    .line 903
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController$Callback;->onDrivingRiskWarningChanged(Z)V

    goto :goto_0

    .line 905
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_1
    return-void
.end method

.method public setGreenLightRemindStateSw(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 930
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mIsMainProcess:Z

    if-eqz v0, :cond_1

    .line 931
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setGreenLightRemindStateSw(Z)V

    .line 932
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 933
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController$Callback;

    .line 934
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController$Callback;->onGreenLightRemindStateChanged(Z)V

    goto :goto_0

    .line 936
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_1
    return-void
.end method

.method public setIntelligentOverspeedRemindStateSw(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 945
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mIsMainProcess:Z

    if-eqz v0, :cond_1

    .line 946
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setIntelligentOverspeedRemindStateSw(Z)V

    .line 947
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 948
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController$Callback;

    .line 949
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController$Callback;->onIntelligentOverspeedRemindStateChanged(Z)V

    goto :goto_0

    .line 951
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_1
    return-void
.end method

.method public setLccCrossBarriersSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLccCrossBarriersSw: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XpuController"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$80HpYUb4clKWzLKG3gmt02osR50;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$80HpYUb4clKWzLKG3gmt02osR50;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;Z)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->setValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingConsumer;)V

    .line 843
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setCrossBarrierSw(Z)V

    return-void
.end method

.method public setLccTrafficLightSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLccTrafficLightSw: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XpuController"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$4tm3Fppm-Yml8cbRE45a5cy1IzQ;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$4tm3Fppm-Yml8cbRE45a5cy1IzQ;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;Z)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->setValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingConsumer;)V

    .line 857
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setTrafficLightSw(Z)V

    return-void
.end method

.method public setLssSensitivity(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const-string v0, "isSupportLka"

    .line 347
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLssSensitivity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XpuController"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$y9N-G1MXdpLCyr8pfg2pZOPVLSk;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$y9N-G1MXdpLCyr8pfg2pZOPVLSk;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;I)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->setValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingConsumer;)V

    .line 350
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setLssSenState(I)V

    :cond_0
    return-void
.end method

.method public setMapUserExperiencePlanState(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    const-string v0, "isSupportPrivacyCollection"

    .line 520
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMapUserExperiencePlanState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XpuController"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "MAP_PRIVACY_EXPERIENCE_SW"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x0

    .line 524
    new-instance v1, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$wWbhnmDr-WYiLdUsmLALR6NwLlI;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$wWbhnmDr-WYiLdUsmLALR6NwLlI;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;Z)V

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setMrrEnable(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMrrEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XpuController"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$Q5eoLIPSfCB1prZ4G0j42Wa9Yfs;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$Q5eoLIPSfCB1prZ4G0j42Wa9Yfs;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;Z)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->setValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingConsumer;)V

    return-void
.end method

.method public setNedcSwitch(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "active"
        }
    .end annotation

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setNedcSwitch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XpuController"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$GxAqzzzKdFCdujEhTrb8mb4XK2s;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$GxAqzzzKdFCdujEhTrb8mb4XK2s;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;Z)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->setValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingConsumer;)V

    return-void
.end method

.method public setNgpActivateModeEnable(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setNgpActivateModeEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XpuController"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$bI0EWCjJB0qe6l-gA4G9Eu-wHis;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$bI0EWCjJB0qe6l-gA4G9Eu-wHis;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;Z)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->setValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingConsumer;)V

    .line 627
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setNgpActivateModeSw(Z)V

    return-void
.end method

.method public setNgpAflEnable(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setNgpAflEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XpuController"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 572
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$Rqruu2KM3pOaLF8XJUsnEBy2lDk;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$Rqruu2KM3pOaLF8XJUsnEBy2lDk;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;Z)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->setValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingConsumer;)V

    .line 573
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setNgpAflEnable(Z)V

    return-void
.end method

.method public setNgpCustomSpeedKph(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setNgpCustomSpeedKph: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XpuController"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$YxbUMPyEwar29PVJWMCyh8UxAEE;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$YxbUMPyEwar29PVJWMCyh8UxAEE;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;I)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->setValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingConsumer;)V

    .line 732
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setNgpSpeedKph(I)V

    return-void
.end method

.method public setNgpCustomSpeedMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setNgpCustomSpeedMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XpuController"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$5SBvuBHYFZg01tZQIlLzEdR8hZs;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$5SBvuBHYFZg01tZQIlLzEdR8hZs;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;I)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->setValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingConsumer;)V

    .line 718
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setNgpSpeedMode(I)V

    return-void
.end method

.method public setNgpCustomSpeedPercent(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setNgpCustomSpeedPercent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XpuController"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$fSQFrq-8Ywt4d6oOP1cXs-qWONs;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$fSQFrq-8Ywt4d6oOP1cXs-qWONs;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;I)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->setValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingConsumer;)V

    .line 746
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setNgpSpeedPercent(I)V

    return-void
.end method

.method public setNgpFreeNgpEnable(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setNgpFreeNgpEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XpuController"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$oEoNjR54cNpW6mZuZbG2OHJZaIo;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$oEoNjR54cNpW6mZuZbG2OHJZaIo;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;Z)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->setValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingConsumer;)V

    .line 613
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setNgpFngpSw(Z)V

    return-void
.end method

.method public setNgpNewAflEnable(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const-string v0, "isSupportNgpAfl"

    .line 588
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setNgpNewAflEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XpuController"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 591
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setNgpNewAflEnable(Z)V

    .line 592
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "keyNgpNewAlfSw"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 594
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$Z-ZByf--uqtCNssIvk5NSut531o;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$Z-ZByf--uqtCNssIvk5NSut531o;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;Z)V

    invoke-static {v2, v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setNgpOvertakeMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setNgpOvertakeMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XpuController"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$MrmAwdWYF025bPwc9d-nOKs8wL4;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$MrmAwdWYF025bPwc9d-nOKs8wL4;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;I)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->setValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingConsumer;)V

    .line 760
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setNgpOvertakeMode(I)V

    return-void
.end method

.method public setNgpPreferLaneCfg(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setNgpPreferLaneCfg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XpuController"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$mAcvNGS9S5p51bfeGMyBvl-H7CU;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$mAcvNGS9S5p51bfeGMyBvl-H7CU;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;I)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->setValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingConsumer;)V

    .line 774
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setNgpPreferLaneCfg(I)V

    return-void
.end method

.method public setNraState(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 384
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCarIntelligentManager:Landroid/car/intelligent/CarIntelligentEngineManager;

    invoke-virtual {v0, p1}, Landroid/car/intelligent/CarIntelligentEngineManager;->setCarDrivingSceneNRALevel(I)V

    .line 385
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->saveNraFunctionByState(I)V

    .line 386
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->handleNraUpdate(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 388
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setNraState failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "XpuController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method

.method public setNraSwEnable(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setNraSwEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XpuController"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-eqz p1, :cond_2

    .line 433
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mIsMainProcess:Z

    if-eqz p1, :cond_0

    .line 434
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getNraState()I

    move-result p1

    goto :goto_0

    .line 436
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v1, "set_nra_state"

    invoke-static {p1, v1, v0}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, p1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 445
    :goto_1
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->setNraState(I)V

    return-void
.end method

.method public setRaebState(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const-string v0, "isSupportRaeb"

    .line 329
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRaebState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XpuController"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$rlGKkGO0i9lAyWDXLcEFi7bIfCE;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$rlGKkGO0i9lAyWDXLcEFi7bIfCE;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;Z)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->setValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingConsumer;)V

    :cond_0
    return-void
.end method

.method public setSimpleSasSw(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSimpleSasSw: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XpuController"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$akOYH1m7VzksV8_wwCMjHeECrzM;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$akOYH1m7VzksV8_wwCMjHeECrzM;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;I)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->setValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingConsumer;)V

    .line 365
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setSasState(I)V

    return-void
.end method

.method public setSoundSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSoundSw: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XpuController"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$lUEoK0r5wzRCeDRVtj7TKIQttds;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$lUEoK0r5wzRCeDRVtj7TKIQttds;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;Z)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->setValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingConsumer;)V

    .line 788
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setSoundSw(Z)V

    return-void
.end method

.method public setStartRemindStateSw(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 915
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mIsMainProcess:Z

    if-eqz v0, :cond_1

    .line 916
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setStartRemindStateSw(Z)V

    .line 917
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 918
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController$Callback;

    .line 919
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController$Callback;->onStartRemindStateChanged(Z)V

    goto :goto_0

    .line 921
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_1
    return-void
.end method

.method public setTurnAssistantEnable(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const-string v0, "isSupportTurnAssist"

    .line 461
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTurnAssistantEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XpuController"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "turn_assistant_sw"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x0

    .line 466
    new-instance v1, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$Jieb478Nk9y6g5loksHWVsNJY88;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$Jieb478Nk9y6g5loksHWVsNJY88;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;Z)V

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setVoiceSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setVoiceSw: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XpuController"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$hVfz93ID6Fh2B4z6tvnKC6nkpB0;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$hVfz93ID6Fh2B4z6tvnKC6nkpB0;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;Z)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->setValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingConsumer;)V

    return-void
.end method

.method public setXngpSafeExamResult(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "result"
        }
    .end annotation

    .line 690
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mIsMainProcess:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 692
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setXngpSafeExamResult(Z)V

    goto :goto_0

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setXngpSafeExamResult(Ljava/lang/String;Z)V

    .line 697
    :goto_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "xngp_safe_exam_notify"

    invoke-static {p1, v0, p2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    goto :goto_1

    .line 700
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setXngpSafeExamResult: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "XpuController"

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mXngpSafeExamResult:Ljava/lang/Boolean;

    .line 702
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "xngp_safe_exam"

    invoke-static {p1, v0, p2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :goto_1
    return-void
.end method

.method public setXpilotUserExperiencePlanState(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    const-string v0, "isSupportPrivacyCollection"

    .line 489
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setXpilotUserExperiencePlanState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XpuController"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "XPILOT_PRIVACY_EXPERIENCE_SW"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x0

    .line 493
    new-instance v1, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$mCNTkOVDDyiCbdmYmnIM_fnKrRc;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$mCNTkOVDDyiCbdmYmnIM_fnKrRc;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;Z)V

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setXpuAdasOneShotActive(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1022
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$-2bMkYrGrvcaPqMbp4yHaHL4PmE;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$-2bMkYrGrvcaPqMbp4yHaHL4PmE;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;Z)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->setValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingConsumer;)V

    .line 1023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setXpuAdasOneShotActive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "XpuController"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public updateMapPrivacyStateToCarService(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    const-string v0, "isSupportPrivacyCollection"

    .line 529
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "XpuController"

    const-string/jumbo v1, "updateMapPrivacyStateToCarService"

    .line 530
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 532
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v2, Landroid/car/hardware/xpu/CarXpuManager;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-virtual {v2, p1}, Landroid/car/hardware/xpu/CarXpuManager;->setXpuMapDataAvailableSt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    const-string/jumbo v2, "updateMapPrivacyStateToCarService error"

    .line 534
    invoke-static {v0, v2, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_1
    :goto_2
    return-void
.end method

.method public updateXpilotPrivacyStateToCarService(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    const-string v0, "isSupportPrivacyCollection"

    .line 498
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "XpuController"

    const-string/jumbo v1, "updateXpilotPrivacyStateToCarService"

    .line 499
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 501
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v2, Landroid/car/hardware/xpu/CarXpuManager;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-virtual {v2, p1}, Landroid/car/hardware/xpu/CarXpuManager;->setXpuXminerAvailableSt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    const-string/jumbo v2, "updateXpilotPrivacyStateToCarService error"

    .line 503
    invoke-static {v0, v2, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_1
    :goto_2
    return-void
.end method
