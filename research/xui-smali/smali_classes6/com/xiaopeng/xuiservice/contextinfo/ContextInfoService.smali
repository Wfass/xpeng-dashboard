.class public Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;
.super Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo$Stub;
.source "ContextInfoService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/XUIServiceBase;
.implements Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService$IMiniNaviInfoListener;
    }
.end annotation


# static fields
.field private static final ChaoPaoAppName:Ljava/lang/String; = "com.car.chaopaoshenglangxp"

.field public static final DBG:Z = true

.field public static final TAG:Ljava/lang/String; = "CONTEXTINFO.SERVICE.ContextInfoService"

.field private static chaopaoBinder:Landroid/os/IBinder;

.field private static mContextInfoService:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;


# instance fields
.field private final listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<",
            "Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mContextInfoHal:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

.field private final mListenersLevelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mNaviInfoListenerSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService$IMiniNaviInfoListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->mContextInfoService:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 88
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo$Stub;-><init>()V

    .line 51
    new-instance v0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService$1;

    const-string v1, "CONTEXTINFO.SERVICE.ContextInfoService"

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService$1;-><init>(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    .line 64
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->mListenersLevelMap:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->mNaviInfoListenerSet:Ljava/util/Set;

    .line 89
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->mContext:Landroid/content/Context;

    .line 90
    new-instance v0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->mContextInfoHal:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    .line 91
    sput-object p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->mContextInfoService:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;

    .line 92
    const-string v0, "contextinfo"

    new-instance v1, Lcom/xiaopeng/xuiservice/contextinfo/-$$Lambda$ContextInfoService$k_35z1fgBilhDCQc9PhCYykbqzA;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/contextinfo/-$$Lambda$ContextInfoService$k_35z1fgBilhDCQc9PhCYykbqzA;-><init>(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->registerDump(Ljava/lang/String;Lcom/xiaopeng/xuiservice/debug/DumpDispatcher$DebugDumper;)V

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;)Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->mContextInfoHal:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    return-object v0
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;
    .locals 1

    .line 98
    sget-object v0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->mContextInfoService:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;

    return-object v0
.end method

.method public static synthetic lambda$new$0(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method private registerListenerWithLevel(Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;I)V
    .locals 5
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    .param p2, "level"    # I

    .line 154
    const-string v0, "CONTEXTINFO.SERVICE.ContextInfoService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerListenerWithLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/xiaopeng/xuiservice/utils/CommonUtils;->getAppPkg(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->registerListener(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 159
    .local v0, "listenerBinder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/xuiservice/utils/CommonUtils;->getAppPkg(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.car.chaopaoshenglangxp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    sput-object v0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->chaopaoBinder:Landroid/os/IBinder;

    .line 161
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->mContextInfoHal:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->addSpecialFeatureCallback(I)V

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->mListenersLevelMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .end local v0    # "listenerBinder":Landroid/os/IBinder;
    :cond_1
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 126
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 102
    const-string v0, "dump-CONTEXTINFO.SERVICE.ContextInfoService"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IContextInfoEventListenerMaps size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    .line 105
    .local v1, "listener":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 106
    .end local v1    # "listener":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    goto :goto_0

    .line 107
    :cond_0
    const-string v0, "dump-CONTEXTINFO.SERVICE.ContextInfoService,end"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public getIntelligentEffectEnable()Z
    .locals 1

    .line 687
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->mContextInfoHal:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->getIntelligentEffectEnable()Z

    move-result v0

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 130
    const-string v0, "ContextInfoService"

    return-object v0
.end method

.method public getWeather()Ljava/lang/String;
    .locals 1

    .line 731
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->mContextInfoHal:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->getWeather()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 2

    .line 112
    const-string v0, "CONTEXTINFO.SERVICE.ContextInfoService"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->mContextInfoHal:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->init()V

    .line 114
    return-void
.end method

.method public onATLSStatus(II)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "status"    # I

    .line 538
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    .line 540
    .local v1, "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onATLSStatus(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    goto :goto_1

    .line 541
    :catch_0
    move-exception v2

    .line 542
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "CONTEXTINFO.SERVICE.ContextInfoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onATLSStatus calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 545
    :cond_0
    return-void
.end method

.method public onAccelerationEvent(F)V
    .locals 6
    .param p1, "accelerationValue"    # F

    .line 233
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    .line 235
    .local v1, "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onAccelerationEvent(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    goto :goto_1

    .line 236
    :catch_0
    move-exception v2

    .line 237
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "CONTEXTINFO.SERVICE.ContextInfoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onAccelerationEvent calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 240
    :cond_0
    return-void
.end method

.method public onAngularVelocityEvent(F)V
    .locals 6
    .param p1, "angularVelocityValue"    # F

    .line 244
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    .line 246
    .local v1, "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onAngularVelocityEvent(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    goto :goto_1

    .line 247
    :catch_0
    move-exception v2

    .line 248
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "CONTEXTINFO.SERVICE.ContextInfoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onAngularVelocityEvent calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 251
    :cond_0
    return-void
.end method

.method public onAutoBrightness(II)V
    .locals 6
    .param p1, "lux"    # I
    .param p2, "autolight"    # I

    .line 483
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    .line 485
    .local v1, "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onAutoBrightness(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    goto :goto_1

    .line 486
    :catch_0
    move-exception v2

    .line 487
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "CONTEXTINFO.SERVICE.ContextInfoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onAutoBrightness calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 490
    :cond_0
    return-void
.end method

.method public onAvpWifi(I)V
    .locals 6
    .param p1, "status"    # I

    .line 505
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    .line 507
    .local v1, "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onAvpWifi(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    goto :goto_1

    .line 508
    :catch_0
    move-exception v2

    .line 509
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "CONTEXTINFO.SERVICE.ContextInfoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onAvpWifi calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 512
    :cond_0
    return-void
.end method

.method public onBcmLightMode(II)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "mode"    # I

    .line 604
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    .line 606
    .local v1, "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onBcmLightMode(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    goto :goto_1

    .line 607
    :catch_0
    move-exception v2

    .line 608
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "CONTEXTINFO.SERVICE.ContextInfoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onBcmLightMode calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 611
    :cond_0
    return-void
.end method

.method public onBeltStatus(I)V
    .locals 6
    .param p1, "status"    # I

    .line 549
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    .line 551
    .local v1, "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onBeltStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    goto :goto_1

    .line 552
    :catch_0
    move-exception v2

    .line 553
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "CONTEXTINFO.SERVICE.ContextInfoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onBeltStatus calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 556
    :cond_0
    return-void
.end method

.method public onCameraEvent(Lcom/xiaopeng/xuimanager/contextinfo/Camera;I)V
    .locals 6
    .param p1, "camera"    # Lcom/xiaopeng/xuimanager/contextinfo/Camera;
    .param p2, "msgType"    # I

    .line 333
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    .line 335
    .local v1, "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onCameraEvent(Lcom/xiaopeng/xuimanager/contextinfo/Camera;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    goto :goto_1

    .line 336
    :catch_0
    move-exception v2

    .line 337
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "CONTEXTINFO.SERVICE.ContextInfoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCameraEvent calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 340
    :cond_0
    return-void
.end method

.method public onCameraIntervalEvent(Lcom/xiaopeng/xuimanager/contextinfo/CameraInterval;I)V
    .locals 6
    .param p1, "cameraInterval"    # Lcom/xiaopeng/xuimanager/contextinfo/CameraInterval;
    .param p2, "msgType"    # I

    .line 344
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    .line 346
    .local v1, "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onCameraIntervalEvent(Lcom/xiaopeng/xuimanager/contextinfo/CameraInterval;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    goto :goto_1

    .line 347
    :catch_0
    move-exception v2

    .line 348
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "CONTEXTINFO.SERVICE.ContextInfoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCameraIntervalEvent calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 351
    :cond_0
    return-void
.end method

.method public onCarSpeed(F)V
    .locals 6
    .param p1, "speed"    # F

    .line 461
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    .line 463
    .local v1, "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onCarSpeed(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    goto :goto_1

    .line 464
    :catch_0
    move-exception v2

    .line 465
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "CONTEXTINFO.SERVICE.ContextInfoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCarSpeed calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 468
    :cond_0
    return-void
.end method

.method public onChargingGunStatus(I)V
    .locals 6
    .param p1, "status"    # I

    .line 571
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    .line 573
    .local v1, "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onChargingGunStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    goto :goto_1

    .line 574
    :catch_0
    move-exception v2

    .line 575
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "CONTEXTINFO.SERVICE.ContextInfoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onChargingGunStatus calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 578
    :cond_0
    return-void
.end method

.method public onCommonEvent(II)V
    .locals 6
    .param p1, "eventType"    # I
    .param p2, "eventValue"    # I

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->listeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    .line 222
    .local v1, "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    :try_start_0
    invoke-interface {v1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 223
    .local v2, "mbinder":Landroid/os/IBinder;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->mListenersLevelMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_0

    .line 224
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onCommonEvent(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .end local v2    # "mbinder":Landroid/os/IBinder;
    :cond_0
    goto :goto_1

    .line 225
    :catch_0
    move-exception v2

    .line 226
    .local v2, "ex":Ljava/lang/Exception;
    const-string v3, "CONTEXTINFO.SERVICE.ContextInfoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCommonEvent calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 229
    :cond_1
    return-void
.end method

.method public onCrossEvent(Lcom/xiaopeng/xuimanager/contextinfo/Cross;I)V
    .locals 6
    .param p1, "cross"    # Lcom/xiaopeng/xuimanager/contextinfo/Cross;
    .param p2, "msgType"    # I

    .line 366
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    .line 368
    .local v1, "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onCrossEvent(Lcom/xiaopeng/xuimanager/contextinfo/Cross;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    goto :goto_1

    .line 369
    :catch_0
    move-exception v2

    .line 370
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "CONTEXTINFO.SERVICE.ContextInfoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCrossEvent calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 373
    :cond_0
    return-void
.end method

.method public onDeviceChargeStatus(I)V
    .locals 6
    .param p1, "status"    # I

    .line 582
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    .line 584
    .local v1, "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onDeviceChargeStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    goto :goto_1

    .line 585
    :catch_0
    move-exception v2

    .line 586
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "CONTEXTINFO.SERVICE.ContextInfoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDeviceChargeStatus calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 589
    :cond_0
    return-void
.end method

.method public onDriverSeatStatus(I)V
    .locals 6
    .param p1, "status"    # I

    .line 593
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    .line 595
    .local v1, "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onDriverSeatStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    goto :goto_1

    .line 596
    :catch_0
    move-exception v2

    .line 597
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "CONTEXTINFO.SERVICE.ContextInfoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDriverSeatStatus calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 600
    :cond_0
    return-void
.end method

.method public onError(II)V
    .locals 6
    .param p1, "errorCode"    # I
    .param p2, "operation"    # I

    .line 670
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    .line 672
    .local v1, "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onError(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    goto :goto_1

    .line 673
    :catch_0
    move-exception v2

    .line 674
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "CONTEXTINFO.SERVICE.ContextInfoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onError calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 677
    :cond_0
    return-void
.end method

.method public onGearChanged(I)V
    .locals 6
    .param p1, "gear"    # I

    .line 450
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    .line 452
    .local v1, "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onGearChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    goto :goto_1

    .line 453
    :catch_0
    move-exception v2

    .line 454
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "CONTEXTINFO.SERVICE.ContextInfoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onGearChanged calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 457
    :cond_0
    return-void
.end method

.method public onHomeCompanyRouteInfo(Lcom/xiaopeng/xuimanager/contextinfo/HomeCompanyRouteInfo;I)V
    .locals 6
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/contextinfo/HomeCompanyRouteInfo;
    .param p2, "msgType"    # I

    .line 300
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    .line 302
    .local v1, "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onHomeCompanyRouteInfo(Lcom/xiaopeng/xuimanager/contextinfo/HomeCompanyRouteInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    goto :goto_1

    .line 303
    :catch_0
    move-exception v2

    .line 304
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "CONTEXTINFO.SERVICE.ContextInfoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNaviStatus calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 307
    :cond_0
    return-void
.end method

.method public onIGStatus(I)V
    .locals 6
    .param p1, "status"    # I

    .line 472
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    .line 474
    .local v1, "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onIGStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    goto :goto_1

    .line 475
    :catch_0
    move-exception v2

    .line 476
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "CONTEXTINFO.SERVICE.ContextInfoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onIGStatus calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 479
    :cond_0
    return-void
.end method

.method public onLLUStatus(II)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "status"    # I

    .line 527
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    .line 529
    .local v1, "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onLLUStatus(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    goto :goto_1

    .line 530
    :catch_0
    move-exception v2

    .line 531
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "CONTEXTINFO.SERVICE.ContextInfoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onLLUStatus calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 534
    :cond_0
    return-void
.end method

.method public onLaneEvent(Lcom/xiaopeng/xuimanager/contextinfo/Lane;I)V
    .locals 6
    .param p1, "lane"    # Lcom/xiaopeng/xuimanager/contextinfo/Lane;
    .param p2, "msgType"    # I

    .line 322
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    .line 324
    .local v1, "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onLaneEvent(Lcom/xiaopeng/xuimanager/contextinfo/Lane;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    goto :goto_1

    .line 325
    :catch_0
    move-exception v2

    .line 326
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "CONTEXTINFO.SERVICE.ContextInfoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onLaneEvent calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 329
    :cond_0
    return-void
.end method

.method public onLocationEvent(Lcom/xiaopeng/xuimanager/contextinfo/Location;I)V
    .locals 6
    .param p1, "location"    # Lcom/xiaopeng/xuimanager/contextinfo/Location;
    .param p2, "msgType"    # I

    .line 377
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    .line 379
    .local v1, "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onLocationEvent(Lcom/xiaopeng/xuimanager/contextinfo/Location;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    goto :goto_1

    .line 380
    :catch_0
    move-exception v2

    .line 381
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "CONTEXTINFO.SERVICE.ContextInfoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onLocationEvent calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 384
    :cond_0
    return-void
.end method

.method public onManeuverEvent(Lcom/xiaopeng/xuimanager/contextinfo/Maneuver;I)V
    .locals 6
    .param p1, "maneuver"    # Lcom/xiaopeng/xuimanager/contextinfo/Maneuver;
    .param p2, "msgType"    # I

    .line 255
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    .line 257
    .local v1, "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onManeuverEvent(Lcom/xiaopeng/xuimanager/contextinfo/Maneuver;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    goto :goto_1

    .line 258
    :catch_0
    move-exception v2

    .line 259
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "CONTEXTINFO.SERVICE.ContextInfoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onManeuverEvent calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 262
    :cond_0
    return-void
.end method

.method public onMsgEvent(I)V
    .locals 6
    .param p1, "msgType"    # I

    .line 428
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    .line 430
    .local v1, "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onMsgEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    goto :goto_1

    .line 431
    :catch_0
    move-exception v2

    .line 432
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "CONTEXTINFO.SERVICE.ContextInfoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMsgEvent calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 435
    :cond_0
    return-void
.end method

.method public onNaviEvent(Lcom/xiaopeng/xuimanager/contextinfo/Navi;I)V
    .locals 6
    .param p1, "navi"    # Lcom/xiaopeng/xuimanager/contextinfo/Navi;
    .param p2, "msgType"    # I

    .line 311
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    .line 313
    .local v1, "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onNaviEvent(Lcom/xiaopeng/xuimanager/contextinfo/Navi;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    goto :goto_1

    .line 314
    :catch_0
    move-exception v2

    .line 315
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "CONTEXTINFO.SERVICE.ContextInfoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNaviEvent calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 318
    :cond_0
    return-void
.end method

.method public onNaviStatus(Lcom/xiaopeng/xuimanager/contextinfo/NaviStatus;I)V
    .locals 6
    .param p1, "naviStatus"    # Lcom/xiaopeng/xuimanager/contextinfo/NaviStatus;
    .param p2, "msgType"    # I

    .line 283
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    .line 285
    .local v1, "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onNaviStatus(Lcom/xiaopeng/xuimanager/contextinfo/NaviStatus;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    goto :goto_1

    .line 286
    :catch_0
    move-exception v2

    .line 287
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "CONTEXTINFO.SERVICE.ContextInfoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNaviStatus calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 290
    :cond_0
    return-void
.end method

.method public onNavigationEnable(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .line 417
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    .line 419
    .local v1, "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onNavigationEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    goto :goto_1

    .line 420
    :catch_0
    move-exception v2

    .line 421
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "CONTEXTINFO.SERVICE.ContextInfoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNavigationEnable calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 424
    :cond_0
    return-void
.end method

.method public onNavigationInfo(Ljava/lang/String;)V
    .locals 6
    .param p1, "navInfo"    # Ljava/lang/String;

    .line 388
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->mNaviInfoListenerSet:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->mNaviInfoListenerSet:Ljava/util/Set;

    monitor-enter v0

    .line 390
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->mNaviInfoListenerSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService$IMiniNaviInfoListener;

    .line 391
    .local v2, "mIMiniNaviInfoListener":Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService$IMiniNaviInfoListener;
    invoke-interface {v2, p1}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService$IMiniNaviInfoListener;->onUpdateNaviInfo(Ljava/lang/String;)V

    .line 392
    .end local v2    # "mIMiniNaviInfoListener":Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService$IMiniNaviInfoListener;
    goto :goto_0

    .line 393
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 395
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->listeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    .line 397
    .local v1, "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    :try_start_1
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onNavigationInfo(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 400
    goto :goto_3

    .line 398
    :catch_0
    move-exception v2

    .line 399
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "CONTEXTINFO.SERVICE.ContextInfoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNavigationInfo calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_3
    goto :goto_2

    .line 402
    :cond_2
    return-void
.end method

.method public onPoiEvent(Ljava/lang/String;)V
    .locals 6
    .param p1, "poiInfo"    # Ljava/lang/String;

    .line 406
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    .line 408
    .local v1, "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onPoiEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    goto :goto_1

    .line 409
    :catch_0
    move-exception v2

    .line 410
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "CONTEXTINFO.SERVICE.ContextInfoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPoiEvent calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 413
    :cond_0
    return-void
.end method

.method public onPowerAction(I)V
    .locals 6
    .param p1, "powerAction"    # I

    .line 560
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    .line 562
    .local v1, "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onPowerAction(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    goto :goto_1

    .line 563
    :catch_0
    move-exception v2

    .line 564
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "CONTEXTINFO.SERVICE.ContextInfoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPowerAction calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 567
    :cond_0
    return-void
.end method

.method public onPowerOffCount(I)V
    .locals 6
    .param p1, "cnt"    # I

    .line 637
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    .line 639
    .local v1, "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onPowerOffCount(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 642
    goto :goto_1

    .line 640
    :catch_0
    move-exception v2

    .line 641
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "CONTEXTINFO.SERVICE.ContextInfoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPowerOffCount calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 644
    :cond_0
    return-void
.end method

.method public onPsdMoto(I)V
    .locals 6
    .param p1, "status"    # I

    .line 626
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    .line 628
    .local v1, "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onPsdMoto(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 631
    goto :goto_1

    .line 629
    :catch_0
    move-exception v2

    .line 630
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "CONTEXTINFO.SERVICE.ContextInfoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPsdMoto calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 633
    :cond_0
    return-void
.end method

.method public onRemainInfoEvent(Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;I)V
    .locals 6
    .param p1, "remainInfo"    # Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;
    .param p2, "msgType"    # I

    .line 266
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    .line 268
    .local v1, "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onRemainInfoEvent(Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    goto :goto_1

    .line 269
    :catch_0
    move-exception v2

    .line 270
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "CONTEXTINFO.SERVICE.ContextInfoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onRemainInfoEvent calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 273
    :cond_0
    return-void
.end method

.method public onRemoteCommand(I)V
    .locals 6
    .param p1, "remoteCmd"    # I

    .line 516
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    .line 518
    .local v1, "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onRemoteCommand(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    goto :goto_1

    .line 519
    :catch_0
    move-exception v2

    .line 520
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "CONTEXTINFO.SERVICE.ContextInfoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onRemoteCommand calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 523
    :cond_0
    return-void
.end method

.method public onSapaEvent(Lcom/xiaopeng/xuimanager/contextinfo/Sapa;I)V
    .locals 6
    .param p1, "sapa"    # Lcom/xiaopeng/xuimanager/contextinfo/Sapa;
    .param p2, "msgType"    # I

    .line 355
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    .line 357
    .local v1, "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onSapaEvent(Lcom/xiaopeng/xuimanager/contextinfo/Sapa;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    goto :goto_1

    .line 358
    :catch_0
    move-exception v2

    .line 359
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "CONTEXTINFO.SERVICE.ContextInfoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSapaEvent calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 362
    :cond_0
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    const-string v0, "ContextInfoService"

    .line 72
    .local v0, "module":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "info":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->getInstance()Lcom/xiaopeng/xuiservice/debug/WatchDog;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->binderEnter(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/4 v2, 0x1

    .line 77
    .local v2, "ret":Z
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 82
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->getInstance()Lcom/xiaopeng/xuiservice/debug/WatchDog;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->binderLeave(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    nop

    .line 85
    return v2

    .line 82
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 78
    :catch_0
    move-exception v3

    .line 79
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v4, "CONTEXTINFO.SERVICE.ContextInfoService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTransact e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ",code="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->getInstance()Lcom/xiaopeng/xuiservice/debug/WatchDog;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->binderLeave(Ljava/lang/String;Ljava/lang/String;)V

    throw v3
.end method

.method public onVpmEvent(II)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "mode"    # I

    .line 615
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    .line 617
    .local v1, "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onVpmEvent(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    goto :goto_1

    .line 618
    :catch_0
    move-exception v2

    .line 619
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "CONTEXTINFO.SERVICE.ContextInfoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onVpmEvent calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 622
    :cond_0
    return-void
.end method

.method public onWeatherInfo(Ljava/lang/String;)V
    .locals 6
    .param p1, "weatherInfo"    # Ljava/lang/String;

    .line 439
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    .line 441
    .local v1, "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onWeatherInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    goto :goto_1

    .line 442
    :catch_0
    move-exception v2

    .line 443
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "CONTEXTINFO.SERVICE.ContextInfoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onWeatherInfo calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 446
    :cond_0
    return-void
.end method

.method public onXPilotWarning(II)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "status"    # I

    .line 494
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    .line 496
    .local v1, "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onXPilotWarning(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    goto :goto_1

    .line 497
    :catch_0
    move-exception v2

    .line 498
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "CONTEXTINFO.SERVICE.ContextInfoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onXPilotWarning calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 501
    :cond_0
    return-void
.end method

.method public registerListener(Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    .line 136
    const-string v0, "CONTEXTINFO.SERVICE.ContextInfoService"

    const-string v1, "registerListener"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->registerListenerWithLevel(Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;I)V

    .line 140
    return-void
.end method

.method public registerListeners(Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;I)V
    .locals 3
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    .param p2, "level"    # I

    .line 145
    const-string v0, "CONTEXTINFO.SERVICE.ContextInfoService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->registerListenerWithLevel(Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;I)V

    .line 148
    return-void
.end method

.method public registerMiniNaviInfoListener(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService$IMiniNaviInfoListener;)V
    .locals 2
    .param p1, "miniNaviInfoListener"    # Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService$IMiniNaviInfoListener;

    .line 756
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->mNaviInfoListenerSet:Ljava/util/Set;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->mNaviInfoListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 761
    return-void

    .line 757
    :cond_1
    :goto_0
    const-string v0, "CONTEXTINFO.SERVICE.ContextInfoService"

    const-string v1, "registerMiniNaviInfoListener failure "

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    return-void
.end method

.method public release()V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->clear()V

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->mListenersLevelMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->mNaviInfoListenerSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 121
    return-void
.end method

.method public sendContextEvent(II)V
    .locals 1
    .param p1, "eventType"    # I
    .param p2, "eventValue"    # I

    .line 748
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->mContextInfoHal:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->sendContextEvent(II)V

    .line 749
    return-void
.end method

.method public setCarAngular(FI)V
    .locals 1
    .param p1, "angularValue"    # F
    .param p2, "deltaTime"    # I

    .line 203
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->mContextInfoHal:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->setCarAngular(FI)V

    .line 204
    return-void
.end method

.method public setCarAngularVelocity(F)V
    .locals 1
    .param p1, "angularVelocityValue"    # F

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->mContextInfoHal:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->setCarAngularVelocity(F)V

    .line 216
    return-void
.end method

.method public setCarSpeed(FI)V
    .locals 1
    .param p1, "speed"    # F
    .param p2, "deltaTime"    # I

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->mContextInfoHal:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->setCarSpeed(FI)V

    .line 193
    return-void
.end method

.method public setIntelligentEffectEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 698
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->mContextInfoHal:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->setIntelligentEffectEnable(Z)V

    .line 699
    return-void
.end method

.method public setNavigationEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 720
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->mContextInfoHal:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->setNavigationEnable(Z)V

    .line 721
    return-void
.end method

.method public setNavigationInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "navInfo"    # Ljava/lang/String;

    .line 709
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->mContextInfoHal:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->setNavigationInfo(Ljava/lang/String;)V

    .line 710
    return-void
.end method

.method public unRegisterMiniNaviInfoListener(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService$IMiniNaviInfoListener;)V
    .locals 1
    .param p1, "miniNaviInfoListener"    # Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService$IMiniNaviInfoListener;

    .line 764
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->mNaviInfoListenerSet:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->mNaviInfoListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->mNaviInfoListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 767
    :cond_0
    return-void
.end method

.method public unregisterListener(Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    .line 170
    const-string v0, "CONTEXTINFO.SERVICE.ContextInfoService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterListener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/xiaopeng/xuiservice/utils/CommonUtils;->getAppPkg(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 174
    .local v0, "listenerBinder":Landroid/os/IBinder;
    sget-object v1, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->chaopaoBinder:Landroid/os/IBinder;

    if-ne v0, v1, :cond_0

    sget-object v1, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->chaopaoBinder:Landroid/os/IBinder;

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->mContext:Landroid/content/Context;

    .line 175
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/xuiservice/utils/CommonUtils;->getAppPkg(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.car.chaopaoshenglangxp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 176
    :cond_1
    const-string v1, "CONTEXTINFO.SERVICE.ContextInfoService"

    const-string v2, "unregisterListenerLocked com.car.chaopaoshenglangxp"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->mContextInfoHal:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->removeSpecialFeatureCallback(I)V

    .line 179
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->mListenersLevelMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->unregisterListener(Landroid/os/IInterface;)Z

    .line 182
    return-void
.end method

.method public updateWeatherFromServer()V
    .locals 1

    .line 740
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->mContextInfoHal:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->updateWeatherFromServer()V

    .line 741
    return-void
.end method
