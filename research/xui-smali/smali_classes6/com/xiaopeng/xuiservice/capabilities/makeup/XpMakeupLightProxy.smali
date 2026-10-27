.class public Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;
.super Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight$Stub;
.source "XpMakeupLightProxy.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/XUIServiceBase;
.implements Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$MakeupLightListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy$InstanceHolder;
    }
.end annotation


# static fields
.field private static final SYS_MAKEUP_EFFECT_PATH:Ljava/lang/String; = "/system/etc/xuiservice/makeup"

.field private static final TAG:Ljava/lang/String; = "XpMakeupLightProxy"

.field private static final USER_MAKEUP_EFFECT_PATH:Ljava/lang/String; = "/data/xuiservice/rsc/makeup"

.field private static mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

.field private static final mLock:Ljava/lang/Object;

.field private static mService:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;


# instance fields
.field private final listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<",
            "Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;->mLock:Ljava/lang/Object;

    .line 50
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 269
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight$Stub;-><init>()V

    .line 35
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy$1;

    const-string v1, "XpMakeupLightProxy"

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy$1;-><init>(Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    .line 270
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;

    .line 271
    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;
    .locals 1

    .line 26
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;

    return-object v0
.end method

.method private addOperationListener()V
    .locals 0

    .line 267
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;
    .locals 1

    .line 278
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy$InstanceHolder;->access$100()Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;

    move-result-object v0

    return-object v0
.end method

.method private hasIgOn()Z
    .locals 5

    .line 54
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v2, "xp_mcu"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/mcu/CarMcuManager;

    .line 56
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

    .line 57
    .end local v1    # "mcu":Landroid/car/hardware/mcu/CarMcuManager;
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "XpMakeupLightProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasIgOn failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 258
    return-void
.end method

.method public getColorTemperature()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 209
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->getColorTemperature()Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;

    move-result-object v0

    .line 211
    .local v0, "res":Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget v2, v0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;->rgb:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, v0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;->white:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getLuminance()I
    .locals 1

    .line 223
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->getLuminance()I

    move-result v0

    return v0
.end method

.method public getMakeupAvailable()I
    .locals 1

    .line 190
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->getMakeupAvailable()I

    move-result v0

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 262
    const-string v0, "XpMakeupLightProxy"

    return-object v0
.end method

.method public init()V
    .locals 2

    .line 243
    const-string v0, "XpMakeupLightProxy"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;->loadMakeupEffect()V

    .line 246
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;->addOperationListener()V

    .line 247
    return-void
.end method

.method public loadMakeupEffect()V
    .locals 6

    .line 157
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 158
    :try_start_0
    const-string v1, "XpMakeupLightProxy"

    const-string v2, "loadMakeupEffect"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->clearMakeupEffect()V

    .line 162
    const-string v1, "/data/xuiservice/rsc/makeup"

    const-string v2, "json"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->getAllFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 163
    .local v1, "userFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 164
    .local v3, "file":Ljava/lang/String;
    sget-object v4, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;

    invoke-virtual {v4, v3}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->loadMakeupEffect(Ljava/lang/String;)V

    .line 165
    .end local v3    # "file":Ljava/lang/String;
    goto :goto_0

    .line 167
    :cond_0
    const-string v2, "/system/etc/xuiservice/makeup"

    const-string v3, "json"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->getAllFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 168
    .local v2, "sysFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 169
    .local v4, "file":Ljava/lang/String;
    sget-object v5, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;

    invoke-virtual {v5, v4}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->loadMakeupEffect(Ljava/lang/String;)V

    .line 170
    .end local v4    # "file":Ljava/lang/String;
    goto :goto_1

    .line 171
    .end local v1    # "userFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "sysFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    monitor-exit v0

    .line 172
    return-void

    .line 171
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onAvailable(Z)V
    .locals 6
    .param p1, "status"    # Z

    .line 103
    const-string v0, "XpMakeupLightProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAvailable, status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener;

    .line 107
    .local v1, "listener":Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener;->onAvailableEvent(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    goto :goto_1

    .line 108
    :catch_0
    move-exception v2

    .line 109
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "XpMakeupLightProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onAvailableEvent failed, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .end local v1    # "listener":Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 112
    :cond_0
    return-void
.end method

.method public onColorTemperature(Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;)V
    .locals 6
    .param p1, "colorTemp"    # Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;

    .line 116
    const-string v0, "XpMakeupLightProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onColorTemperature, rgb="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;->rgb:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", white="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;->white:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener;

    .line 122
    .local v1, "listener":Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener;
    :try_start_0
    iget v2, p1, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;->rgb:I

    iget v3, p1, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;->white:I

    invoke-interface {v1, v2, v3}, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener;->onColorTemperatureEvent(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    goto :goto_1

    .line 123
    :catch_0
    move-exception v2

    .line 124
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "XpMakeupLightProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onColorTemperatureEvent failed, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .end local v1    # "listener":Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 127
    :cond_0
    return-void
.end method

.method public onEffect(Ljava/lang/String;I)V
    .locals 6
    .param p1, "effect"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 144
    const-string v0, "XpMakeupLightProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEffect, effect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener;

    .line 148
    .local v1, "listener":Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener;->onEffectEvent(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    goto :goto_1

    .line 149
    :catch_0
    move-exception v2

    .line 150
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "XpMakeupLightProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onEffectEvent failed, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .end local v1    # "listener":Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 153
    :cond_0
    return-void
.end method

.method public onLuminance(I)V
    .locals 6
    .param p1, "lux"    # I

    .line 131
    const-string v0, "XpMakeupLightProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLuminance, lux="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener;

    .line 135
    .local v1, "listener":Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener;->onLuminanceEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    goto :goto_1

    .line 136
    :catch_0
    move-exception v2

    .line 137
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "XpMakeupLightProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onLuminanceEvent failed, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .end local v1    # "listener":Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 140
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

    .line 66
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

    .line 67
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "info":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->getInstance()Lcom/xiaopeng/xuiservice/debug/WatchDog;

    move-result-object v1

    const-string v2, "XpMakeupLightProxy"

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->binderEnter(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const/4 v1, 0x1

    .line 72
    .local v1, "ret":Z
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    .line 77
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->getInstance()Lcom/xiaopeng/xuiservice/debug/WatchDog;

    move-result-object v2

    const-string v3, "XpMakeupLightProxy"

    invoke-virtual {v2, v3, v0}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->binderLeave(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    nop

    .line 80
    return v1

    .line 77
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 73
    :catch_0
    move-exception v2

    .line 74
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "XpMakeupLightProxy"

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

    .line 75
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->getInstance()Lcom/xiaopeng/xuiservice/debug/WatchDog;

    move-result-object v3

    const-string v4, "XpMakeupLightProxy"

    invoke-virtual {v3, v4, v0}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->binderLeave(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method public registerListener(Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener;

    .line 91
    const-string v0, "XpMakeupLightProxy"

    const-string v1, "registerListener"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->registerListener(Landroid/os/IInterface;)Z

    .line 93
    return-void
.end method

.method public release()V
    .locals 2

    .line 251
    const-string v0, "XpMakeupLightProxy"

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->clear()V

    .line 253
    return-void
.end method

.method public runEffect(Ljava/lang/String;I)I
    .locals 4
    .param p1, "effect"    # Ljava/lang/String;
    .param p2, "count"    # I

    .line 228
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 229
    :try_start_0
    const-string v1, "XpMakeupLightProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runEffect, effect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;

    invoke-virtual {v1, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->runEffect(Ljava/lang/String;I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 232
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAliasColorTemperature(Ljava/lang/String;)I
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    .line 202
    const-string v0, "XpMakeupLightProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAliasColorTemperature, alias="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->setAliasColorTemperature(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setColorTemperature(II)I
    .locals 3
    .param p1, "rgb"    # I
    .param p2, "white"    # I

    .line 195
    const-string v0, "XpMakeupLightProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setColorTemperature, rgb="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", white="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;

    new-instance v1, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;

    invoke-direct {v1, p1, p2}, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->setColorTemperature(Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;)I

    move-result v0

    return v0
.end method

.method public setLuminance(I)I
    .locals 3
    .param p1, "lux"    # I

    .line 216
    const-string v0, "XpMakeupLightProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLuminance, lux="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->setLuminance(I)I

    move-result v0

    return v0
.end method

.method public declared-synchronized setMakeupLightStatus(Z)I
    .locals 3
    .param p1, "status"    # Z

    monitor-enter p0

    .line 84
    :try_start_0
    const-string v0, "XpMakeupLightProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMakeupLightStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v2, "on"

    goto :goto_0

    :cond_0
    const-string v2, "off"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->setMakeupLightStatus(Z)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 83
    .end local p1    # "status":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;
    throw p1
.end method

.method public showAliasColorTemperature()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 183
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 184
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->showAliasColorTemperature()Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 185
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public showMakeupEffect()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 176
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 177
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->showMakeupEffect()Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 178
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopEffect()I
    .locals 2

    .line 237
    const-string v0, "XpMakeupLightProxy"

    const-string v1, "stopEffect"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;->mService:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->stopEffect()I

    move-result v0

    return v0
.end method

.method public unregisterListener(Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener;

    .line 97
    const-string v0, "XpMakeupLightProxy"

    const-string v1, "unregisterListener"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->unregisterListener(Landroid/os/IInterface;)Z

    .line 99
    return-void
.end method
