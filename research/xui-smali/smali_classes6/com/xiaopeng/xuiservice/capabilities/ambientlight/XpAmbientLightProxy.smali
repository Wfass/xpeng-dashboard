.class public Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;
.super Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;
.source "XpAmbientLightProxy.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/XUIServiceBase;
.implements Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientLightListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy$InstanceHolder;
    }
.end annotation


# static fields
.field private static final SYS_EFFECT_PATH:Ljava/lang/String; = "/system/etc/xuiservice/ambient/effects"

.field private static final SYS_FLOWING_EFFECT_PATH:Ljava/lang/String; = "/system/etc/xuiservice/ambient/flowing_effects"

.field private static final TAG:Ljava/lang/String; = "XpAmbientLightProxy"

.field private static final USER_EFFECT_PATH:Ljava/lang/String; = "/data/xuiservice/ambient/effects"

.field private static final USER_FLOWING_EFFECT_PATH:Ljava/lang/String; = "/data/xuiservice/ambient/flowing_effects"

.field private static mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

.field private static mService:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;


# instance fields
.field private final listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<",
            "Lcom/xiaopeng/xuimanager/ambient/IAmbientEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 447
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;-><init>()V

    .line 39
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy$1;

    const-string v1, "XpAmbientLightProxy"

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy$1;-><init>(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    .line 448
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 449
    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .locals 1

    .line 29
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    return-object v0
.end method

.method private addOperationListener()V
    .locals 0

    .line 445
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;
    .locals 1

    .line 456
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy$InstanceHolder;->access$100()Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;

    move-result-object v0

    return-object v0
.end method

.method private hasIgOn()Z
    .locals 5

    .line 58
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

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
    const-string v2, "XpAmbientLightProxy"

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

.method static synthetic lambda$getAmbientLightPartitionModes$0(Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 1
    .param p0, "e"    # Ljava/util/Map$Entry;

    .line 265
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loadAmbientLightEffect()V
    .locals 7

    .line 87
    const-string v0, "XpAmbientLightProxy"

    const-string v1, "loadAmbientLightEffect"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->clearAmbientLightEffect()V

    .line 91
    const-string v0, "/data/xuiservice/ambient/effects"

    const-string v1, "json"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->getAllFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 92
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

    .line 93
    .local v2, "file":Ljava/lang/String;
    sget-object v3, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-virtual {v3, v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->loadAmbientLightEffect(Ljava/lang/String;)V

    .line 94
    .end local v2    # "file":Ljava/lang/String;
    goto :goto_0

    .line 96
    :cond_0
    const-string v1, "/system/etc/xuiservice/ambient/effects"

    const-string v2, "json"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->getAllFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 97
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

    .line 98
    .local v3, "file":Ljava/lang/String;
    sget-object v4, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-virtual {v4, v3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->loadAmbientLightEffect(Ljava/lang/String;)V

    .line 99
    .end local v3    # "file":Ljava/lang/String;
    goto :goto_1

    .line 101
    :cond_1
    const-string v2, "/data/xuiservice/ambient/flowing_effects"

    const-string v3, "json"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->getAllFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 102
    .local v2, "userFlowingFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 103
    .local v4, "file":Ljava/lang/String;
    sget-object v5, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-virtual {v5, v4}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->loadFlowingAmbientLightEffect(Ljava/lang/String;)V

    .line 104
    .end local v4    # "file":Ljava/lang/String;
    goto :goto_2

    .line 106
    :cond_2
    const-string v3, "/system/etc/xuiservice/ambient/flowing_effects"

    const-string v4, "json"

    invoke-static {v3, v4}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->getAllFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 107
    .local v3, "sysFlowingFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 108
    .local v5, "file":Ljava/lang/String;
    sget-object v6, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-virtual {v6, v5}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->loadFlowingAmbientLightEffect(Ljava/lang/String;)V

    .line 109
    .end local v5    # "file":Ljava/lang/String;
    goto :goto_3

    .line 110
    :cond_3
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 436
    return-void
.end method

.method public getAmbientLightBright(Ljava/lang/String;)I
    .locals 3
    .param p1, "partition"    # Ljava/lang/String;

    .line 277
    const-string v0, "XpAmbientLightProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAmbientLightBright "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getAmbientLightBright(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAmbientLightColorType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "partition"    # Ljava/lang/String;

    .line 326
    const-string v0, "XpAmbientLightProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAmbientLightColorType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getAmbientLightColorType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAmbientLightDoubleColor(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "partition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 354
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getAmbientLightDoubleColor(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 356
    .local v0, "color":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const-string v1, "XpAmbientLightProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAmbientLightDoubleColor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 359
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 358
    return-object v1
.end method

.method public getAmbientLightEnable()Z
    .locals 2

    .line 158
    const-string v0, "XpAmbientLightProxy"

    const-string v1, "getAmbientLightEnable"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getAmbientLightEnable()Z

    move-result v0

    return v0
.end method

.method public getAmbientLightMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "partition"    # Ljava/lang/String;

    .line 253
    const-string v0, "XpAmbientLightProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAmbientLightMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getAmbientLightMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAmbientLightMonoColor(Ljava/lang/String;)I
    .locals 3
    .param p1, "partition"    # Ljava/lang/String;

    .line 340
    const-string v0, "XpAmbientLightProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAmbientLightMonoColor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getAmbientLightMonoColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAmbientLightPartitionModes()Ljava/lang/String;
    .locals 3

    .line 260
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getAmbientLightPartitionModes()Ljava/util/Map;

    move-result-object v0

    .line 262
    .local v0, "maps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "XpAmbientLightProxy"

    const-string v2, "getAmbientLightPartitionModes"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 265
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/-$$Lambda$XpAmbientLightProxy$SFveh_OxnsiCwH_yK-wr8A9GAFM;->INSTANCE:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/-$$Lambda$XpAmbientLightProxy$SFveh_OxnsiCwH_yK-wr8A9GAFM;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    const-string v2, ","

    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 264
    :goto_0
    return-object v1
.end method

.method public getAmbientLightPermission()Z
    .locals 2

    .line 144
    const-string v0, "XpAmbientLightProxy"

    const-string v1, "getAmbientLightPermission"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getAmbientLightPermission()Z

    move-result v0

    return v0
.end method

.method public getAmbientLightRegionBright(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "partition"    # Ljava/lang/String;
    .param p2, "region"    # Ljava/lang/String;

    .line 414
    const-string v0, "XpAmbientLightProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAmbientLightRegionBright "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getAmbientLightRegionBright(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAmbientLightRegionColor(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "partition"    # Ljava/lang/String;
    .param p2, "region"    # Ljava/lang/String;

    .line 400
    const-string v0, "XpAmbientLightProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAmbientLightRegionColor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getAmbientLightRegionColor(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAmbientLightThemeColor(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "partition"    # Ljava/lang/String;

    .line 379
    const-string v0, "XpAmbientLightProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAmbientLightThemeColor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getAmbientLightThemeColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFlowingAmbientLightBright()I
    .locals 2

    .line 291
    const-string v0, "XpAmbientLightProxy"

    const-string v1, "getFlowingAmbientLightBright"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getFlowingAmbientLightBright()I

    move-result v0

    return v0
.end method

.method public getFlowingAmbientLightColor()I
    .locals 2

    .line 305
    const-string v0, "XpAmbientLightProxy"

    const-string v1, "getFlowingAmbientLightColor"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getFlowingAmbientLightColor()I

    move-result v0

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 440
    const-string v0, "XpAmbientLightProxy"

    return-object v0
.end method

.method public init()V
    .locals 2

    .line 421
    const-string v0, "XpAmbientLightProxy"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->loadAmbientLightEffect()V

    .line 424
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->addOperationListener()V

    .line 425
    return-void
.end method

.method public onAmbientLightEvent(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "sdata"    # Ljava/lang/String;
    .param p3, "sdata2"    # Ljava/lang/String;
    .param p4, "data"    # I

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/ambient/IAmbientEventListener;

    .line 128
    .local v1, "listener":Lcom/xiaopeng/xuimanager/ambient/IAmbientEventListener;
    :try_start_0
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/ambient/IAmbientEventListener;->onAmbientLightEvent(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    goto :goto_1

    .line 129
    :catch_0
    move-exception v2

    .line 130
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "XpAmbientLightProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onAmbientLightEvent failed, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .end local v1    # "listener":Lcom/xiaopeng/xuimanager/ambient/IAmbientEventListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 133
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

    const-string v2, "XpAmbientLightProxy"

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->binderEnter(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const/4 v1, 0x1

    .line 75
    .local v1, "ret":Z
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    .line 80
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->getInstance()Lcom/xiaopeng/xuiservice/debug/WatchDog;

    move-result-object v2

    const-string v3, "XpAmbientLightProxy"

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
    const-string v3, "XpAmbientLightProxy"

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

    const-string v4, "XpAmbientLightProxy"

    invoke-virtual {v3, v4, v0}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->binderLeave(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method public playAmbientLightEffect(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 3
    .param p1, "partition"    # Ljava/lang/String;
    .param p2, "effect"    # Ljava/lang/String;
    .param p3, "hasJson"    # Z

    .line 186
    const-string v0, "XpAmbientLightProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playAmbientLightEffect, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->hasIgOn()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->playAmbientLightEffect(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public playFixedFlowingAmbientLightEffect(Ljava/lang/String;III)I
    .locals 3
    .param p1, "effect"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "color"    # I
    .param p4, "bright"    # I

    .line 193
    const-string v0, "XpAmbientLightProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playFixedFlowingAmbientLightEffect, effect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", color="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bright="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->hasIgOn()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->playFixedFlowingAmbientLightEffect(Ljava/lang/String;III)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public playFlowingAmbientLightEffect(Ljava/lang/String;IZ)I
    .locals 3
    .param p1, "effect"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "isCoupled"    # Z

    .line 202
    const-string v0, "XpAmbientLightProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playFlowingAmbientLightEffect, effect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isCoupled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->hasIgOn()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->playFlowingAmbientLightEffect(Ljava/lang/String;IZ)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public registerListener(Lcom/xiaopeng/xuimanager/ambient/IAmbientEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/ambient/IAmbientEventListener;

    .line 114
    const-string v0, "XpAmbientLightProxy"

    const-string v1, "registerListener"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->registerListener(Landroid/os/IInterface;)Z

    .line 116
    return-void
.end method

.method public release()V
    .locals 2

    .line 429
    const-string v0, "XpAmbientLightProxy"

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->clear()V

    .line 431
    return-void
.end method

.method public requestAmbientLightPermission(Z)I
    .locals 3
    .param p1, "apply"    # Z

    .line 137
    const-string v0, "XpAmbientLightProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestAmbientLightPermission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v2, "apply"

    goto :goto_0

    :cond_0
    const-string v2, "release"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->requestAmbientLightPermission(Z)I

    move-result v0

    return v0
.end method

.method public setAmbientLightBright(Ljava/lang/String;I)I
    .locals 3
    .param p1, "partition"    # Ljava/lang/String;
    .param p2, "bright"    # I

    .line 270
    const-string v0, "XpAmbientLightProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAmbientLightBright, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setAmbientLightBright(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setAmbientLightColorType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "partition"    # Ljava/lang/String;
    .param p2, "colorType"    # Ljava/lang/String;

    .line 319
    const-string v0, "XpAmbientLightProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAmbientLightColorType, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setAmbientLightColorType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setAmbientLightDoubleColor(Ljava/lang/String;II)I
    .locals 4
    .param p1, "partition"    # Ljava/lang/String;
    .param p2, "first"    # I
    .param p3, "second"    # I

    .line 347
    const-string v0, "XpAmbientLightProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAmbientLightDoubleColor, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setAmbientLightDoubleColor(Ljava/lang/String;Landroid/util/Pair;)I

    move-result v0

    return v0
.end method

.method public setAmbientLightEnable(Z)I
    .locals 3
    .param p1, "enable"    # Z

    .line 151
    const-string v0, "XpAmbientLightProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAmbientLightEnable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setAmbientLightEnable(Z)I

    move-result v0

    return v0
.end method

.method public setAmbientLightMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "partition"    # Ljava/lang/String;
    .param p2, "mode"    # Ljava/lang/String;

    .line 239
    const-string v0, "XpAmbientLightProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAmbientLightMode, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setAmbientLightMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setAmbientLightMonoColor(Ljava/lang/String;I)I
    .locals 3
    .param p1, "partition"    # Ljava/lang/String;
    .param p2, "color"    # I

    .line 333
    const-string v0, "XpAmbientLightProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAmbientLightMonoColor, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setAmbientLightMonoColor(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setAmbientLightRegionBright(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3
    .param p1, "partition"    # Ljava/lang/String;
    .param p2, "region"    # Ljava/lang/String;
    .param p3, "bright"    # I

    .line 407
    const-string v0, "XpAmbientLightProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAmbientLightRegionBright, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setAmbientLightRegionBright(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setAmbientLightRegionColor(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3
    .param p1, "partition"    # Ljava/lang/String;
    .param p2, "region"    # Ljava/lang/String;
    .param p3, "color"    # I

    .line 393
    const-string v0, "XpAmbientLightProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAmbientLightRegionColor, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setAmbientLightRegionColor(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setAmbientLightThemeColor(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "partition"    # Ljava/lang/String;
    .param p2, "themeColor"    # Ljava/lang/String;

    .line 372
    const-string v0, "XpAmbientLightProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAmbientLightThemeColor, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setAmbientLightThemeColor(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setFlowingAmbientLightBright(I)I
    .locals 3
    .param p1, "bright"    # I

    .line 284
    const-string v0, "XpAmbientLightProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFlowingAmbientLightBright "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setFlowingAmbientLightBright(I)I

    move-result v0

    return v0
.end method

.method public setFlowingAmbientLightColor(I)I
    .locals 3
    .param p1, "color"    # I

    .line 298
    const-string v0, "XpAmbientLightProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFlowingAmbientLightColor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setFlowingAmbientLightColor(I)I

    move-result v0

    return v0
.end method

.method public showAmbientLightColorTypes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 312
    const-string v0, "XpAmbientLightProxy"

    const-string v1, "showAmbientLightColorTypes"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->showAmbientLightColorTypes()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public showAmbientLightEffectPartitions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 165
    const-string v0, "XpAmbientLightProxy"

    const-string v1, "showAmbientLightEffectPartitions"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->showAmbientLightEffectPartitions()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public showAmbientLightEffects()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 172
    const-string v0, "XpAmbientLightProxy"

    const-string v1, "showAmbientLightEffects"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->showAmbientLightEffects()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public showAmbientLightModePartitions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 225
    const-string v0, "XpAmbientLightProxy"

    const-string v1, "showAmbientLightModePartitions"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->showAmbientLightModePartitions()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public showAmbientLightModes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 232
    const-string v0, "XpAmbientLightProxy"

    const-string v1, "showAmbientLightModes"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->showAmbientLightModes()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public showAmbientLightRegions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 386
    const-string v0, "XpAmbientLightProxy"

    const-string v1, "showAmbientLightRegions"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->showAmbientLightRegions()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public showAmbientLightThemesColor()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 365
    const-string v0, "XpAmbientLightProxy"

    const-string v1, "showAmbientLightThemesColor"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->showAmbientLightThemesColor()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public showFlowingAmbientLightEffects()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 179
    const-string v0, "XpAmbientLightProxy"

    const-string v1, "showFlowingAmbientLightEffects"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->showFlowingAmbientLightEffects()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public stopAmbientLightEffect()I
    .locals 2

    .line 211
    const-string v0, "XpAmbientLightProxy"

    const-string v1, "stopAmbientLightEffect"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->stopAmbientLightEffect()I

    move-result v0

    return v0
.end method

.method public stopFlowingAmbientLightEffect()I
    .locals 2

    .line 218
    const-string v0, "XpAmbientLightProxy"

    const-string v1, "stopFlowingAmbientLightEffect"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->stopFlowingAmbientLightEffect()I

    move-result v0

    return v0
.end method

.method public subAmbientLightMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "partition"    # Ljava/lang/String;
    .param p2, "mode"    # Ljava/lang/String;

    .line 246
    const-string v0, "XpAmbientLightProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subAmbientLightMode, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->subAmbientLightMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public unregisterListener(Lcom/xiaopeng/xuimanager/ambient/IAmbientEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/ambient/IAmbientEventListener;

    .line 120
    const-string v0, "XpAmbientLightProxy"

    const-string v1, "unregisterListener"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->unregisterListener(Landroid/os/IInterface;)Z

    .line 122
    return-void
.end method
