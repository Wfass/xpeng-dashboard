.class public Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;
.super Ljava/lang/Object;
.source "CarControlSDKImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl$SingletonHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CarControlSDKImpl"


# instance fields
.field private volatile mHasInitialized:Z

.field private final mImplMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/smartcontrol/sdk/server/BaseManagerServer$IBaseImplementation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->mImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->mHasInitialized:Z

    const-string v0, "server-"

    .line 39
    invoke-static {v0}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->setLogTag(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl$1;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;
    .locals 1

    .line 43
    invoke-static {}, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl$SingletonHolder;->access$100()Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 316
    sget-object v0, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->TAG:Ljava/lang/String;

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-static {}, Lcom/xiaopeng/smartcontrol/sdk/base/ManagerFactory;->clear()V

    const/4 v0, 0x0

    .line 318
    iput-boolean v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->mHasInitialized:Z

    return-void
.end method

.method public getAccountManagerServer()Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AccountManagerServer;
    .locals 1

    .line 252
    const-class v0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AccountManagerServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/smartcontrol/sdk/base/ManagerFactory;->getManager(Ljava/lang/String;)Lcom/xiaopeng/smartcontrol/sdk/base/AbsBaseManager;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AccountManagerServer;

    return-object v0
.end method

.method public getAtlManagerServer()Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer;
    .locals 1

    .line 187
    const-class v0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/smartcontrol/sdk/base/ManagerFactory;->getManager(Ljava/lang/String;)Lcom/xiaopeng/smartcontrol/sdk/base/AbsBaseManager;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer;

    return-object v0
.end method

.method public getCameraAuthManagerServer()Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CameraAuthManagerServer;
    .locals 1

    .line 122
    const-class v0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CameraAuthManagerServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/smartcontrol/sdk/base/ManagerFactory;->getManager(Ljava/lang/String;)Lcom/xiaopeng/smartcontrol/sdk/base/AbsBaseManager;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CameraAuthManagerServer;

    return-object v0
.end method

.method public getCarBodyManagerServer()Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;
    .locals 1

    .line 100
    const-class v0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/smartcontrol/sdk/base/ManagerFactory;->getManager(Ljava/lang/String;)Lcom/xiaopeng/smartcontrol/sdk/base/AbsBaseManager;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    return-object v0
.end method

.method public getCarControlShowManagerServer()Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarControlShowManagerServer;
    .locals 1

    .line 205
    const-class v0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarControlShowManagerServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/smartcontrol/sdk/base/ManagerFactory;->getManager(Ljava/lang/String;)Lcom/xiaopeng/smartcontrol/sdk/base/AbsBaseManager;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarControlShowManagerServer;

    return-object v0
.end method

.method public getDriveControlManagerServer()Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/DriveControlManagerServer;
    .locals 1

    .line 238
    const-class v0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/DriveControlManagerServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/smartcontrol/sdk/base/ManagerFactory;->getManager(Ljava/lang/String;)Lcom/xiaopeng/smartcontrol/sdk/base/AbsBaseManager;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/DriveControlManagerServer;

    return-object v0
.end method

.method public getHvacManagerServer()Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer;
    .locals 1

    .line 82
    const-class v0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/smartcontrol/sdk/base/ManagerFactory;->getManager(Ljava/lang/String;)Lcom/xiaopeng/smartcontrol/sdk/base/AbsBaseManager;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer;

    return-object v0
.end method

.method public getLaboratoryManagerServer()Lcom/xiaopeng/smartcontrol/sdk/server/settings/LaboratoryManagerServer;
    .locals 1

    .line 47
    const-class v0, Lcom/xiaopeng/smartcontrol/sdk/server/settings/LaboratoryManagerServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/smartcontrol/sdk/base/ManagerFactory;->getManager(Ljava/lang/String;)Lcom/xiaopeng/smartcontrol/sdk/base/AbsBaseManager;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/server/settings/LaboratoryManagerServer;

    return-object v0
.end method

.method public getLampManagerServer()Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/LampManagerServer;
    .locals 1

    .line 133
    const-class v0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/LampManagerServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/smartcontrol/sdk/base/ManagerFactory;->getManager(Ljava/lang/String;)Lcom/xiaopeng/smartcontrol/sdk/base/AbsBaseManager;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/LampManagerServer;

    return-object v0
.end method

.method public getMirrorControlManagerServer()Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/MirrorControlManagerServer;
    .locals 1

    .line 270
    const-class v0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/MirrorControlManagerServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/smartcontrol/sdk/base/ManagerFactory;->getManager(Ljava/lang/String;)Lcom/xiaopeng/smartcontrol/sdk/base/AbsBaseManager;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/MirrorControlManagerServer;

    return-object v0
.end method

.method public getPowerCenterCallback()Lcom/xiaopeng/smartcontrol/sdk/server/powercenter/PowerCenterManagerServer;
    .locals 1

    .line 147
    const-class v0, Lcom/xiaopeng/smartcontrol/sdk/server/powercenter/PowerCenterManagerServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/smartcontrol/sdk/base/ManagerFactory;->getManager(Ljava/lang/String;)Lcom/xiaopeng/smartcontrol/sdk/base/AbsBaseManager;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/server/powercenter/PowerCenterManagerServer;

    return-object v0
.end method

.method public getSeatManagerServer()Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;
    .locals 1

    .line 62
    const-class v0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/smartcontrol/sdk/base/ManagerFactory;->getManager(Ljava/lang/String;)Lcom/xiaopeng/smartcontrol/sdk/base/AbsBaseManager;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    return-object v0
.end method

.method public getWindowControlManagerServer()Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/WindowControlManagerServer;
    .locals 1

    .line 169
    const-class v0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/WindowControlManagerServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/smartcontrol/sdk/base/ManagerFactory;->getManager(Ljava/lang/String;)Lcom/xiaopeng/smartcontrol/sdk/base/AbsBaseManager;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/WindowControlManagerServer;

    return-object v0
.end method

.method public getXpilotManagerServer()Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer;
    .locals 1

    .line 223
    const-class v0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/smartcontrol/sdk/base/ManagerFactory;->getManager(Ljava/lang/String;)Lcom/xiaopeng/smartcontrol/sdk/base/AbsBaseManager;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 281
    new-instance v0, Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig$Builder;

    invoke-direct {v0}, Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig$Builder;-><init>()V

    const/4 v1, 0x1

    .line 282
    invoke-virtual {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig$Builder;->setSendAsync(Z)Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig$Builder;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig$Builder;->build()Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig;

    move-result-object v0

    .line 284
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->init(Landroid/content/Context;Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig;)V

    return-void
.end method

.method public init(Landroid/content/Context;Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "config"
        }
    .end annotation

    .line 288
    iget-boolean v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->mHasInitialized:Z

    if-eqz v0, :cond_0

    .line 289
    sget-object p1, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->TAG:Ljava/lang/String;

    const-string p2, "sdk has been initialized!!!"

    invoke-static {p1, p2}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 292
    iput-boolean v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->mHasInitialized:Z

    .line 293
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/smartcontrol/utils/Apps;->getAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 295
    sget-object v0, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->TAG:Ljava/lang/String;

    const-string v1, "init appId is null !!!"

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 297
    :cond_1
    sget-object v1, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init appId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "2.4.5.2_HEAD_367045e_2024/09/10 10:57:32"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->setLogTag(Ljava/lang/String;)V

    .line 301
    :goto_0
    invoke-static {}, Lcom/xiaopeng/smartcontrol/ipc/server/ServerManager;->get()Lcom/xiaopeng/smartcontrol/ipc/server/ServerManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/smartcontrol/ipc/server/ServerManager;->init(Landroid/content/Context;Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig;)V

    .line 302
    invoke-static {}, Lcom/xiaopeng/smartcontrol/ipc/server/ServerManager;->get()Lcom/xiaopeng/smartcontrol/ipc/server/ServerManager;

    move-result-object p1

    new-instance p2, Lcom/xiaopeng/smartcontrol/sdk/server/-$$Lambda$CarControlSDKImpl$lG0AilScb2asqJY8GZECaPoqpW4;

    invoke-direct {p2, p0}, Lcom/xiaopeng/smartcontrol/sdk/server/-$$Lambda$CarControlSDKImpl$lG0AilScb2asqJY8GZECaPoqpW4;-><init>(Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;)V

    invoke-virtual {p1, p2}, Lcom/xiaopeng/smartcontrol/ipc/server/ServerManager;->setServerListener(Lcom/xiaopeng/smartcontrol/ipc/server/ServerListener;)V

    return-void
.end method

.method public initComplete()V
    .locals 3

    .line 322
    sget-object v0, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->TAG:Ljava/lang/String;

    const-string v1, "initComplete"

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-static {}, Lcom/xiaopeng/smartcontrol/ipc/server/ServerManager;->get()Lcom/xiaopeng/smartcontrol/ipc/server/ServerManager;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2, v1, v2}, Lcom/xiaopeng/smartcontrol/ipc/server/ServerManager;->send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$init$0$CarControlSDKImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "source",
            "module",
            "method",
            "param"
        }
    .end annotation

    .line 303
    sget-object v0, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const-string v2, "onCall--  module:%s, method:%s, param:%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-static {p2}, Lcom/xiaopeng/smartcontrol/sdk/base/ManagerFactory;->getManager(Ljava/lang/String;)Lcom/xiaopeng/smartcontrol/sdk/base/AbsBaseManager;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/smartcontrol/sdk/server/BaseManagerServer;

    if-eqz v1, :cond_0

    .line 306
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->mImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/BaseManagerServer;->setSignalImpl(Ljava/lang/Object;)V

    .line 307
    invoke-virtual {v1, p1, p3, p4}, Lcom/xiaopeng/smartcontrol/sdk/server/BaseManagerServer;->onIpcCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "no manager!!!"

    .line 309
    invoke-static {v0, p1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public registerAccountImpl(Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AccountManagerServer$Implementation;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->mImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AccountManagerServer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerAtlImpl(Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer$Implementation;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->mImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerCameraAuthImpl(Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CameraAuthManagerServer$Implementation;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->mImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CameraAuthManagerServer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerCarBodyImpl(Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->mImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerCarControlShowImpl(Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarControlShowManagerServer$Implementation;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->mImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarControlShowManagerServer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerDriveControlImpl(Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/DriveControlManagerServer$Implementation;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->mImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/DriveControlManagerServer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerHvacImpl(Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->mImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerLaboratoryImpl(Lcom/xiaopeng/smartcontrol/sdk/server/settings/LaboratoryManagerServer$Implementation;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->mImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Lcom/xiaopeng/smartcontrol/sdk/server/settings/LaboratoryManagerServer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerLampImpl(Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/LampManagerServer$Implementation;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->mImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/LampManagerServer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerMirrorControlImpl(Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/MirrorControlManagerServer$Implementation;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->mImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/MirrorControlManagerServer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerPowerCenterImpl(Lcom/xiaopeng/smartcontrol/sdk/server/powercenter/PowerCenterManagerServer$Implementation;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->mImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Lcom/xiaopeng/smartcontrol/sdk/server/powercenter/PowerCenterManagerServer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerSeatImpl(Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->mImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerWindowImpl(Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/WindowControlManagerServer$Implementation;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->mImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/WindowControlManagerServer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerXpilotImpl(Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer$Implementation;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->mImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setLogLevel(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 263
    invoke-static {p1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->setLogLevel(I)V

    return-void
.end method
