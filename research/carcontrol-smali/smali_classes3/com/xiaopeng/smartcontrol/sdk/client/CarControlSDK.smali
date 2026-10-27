.class public Lcom/xiaopeng/smartcontrol/sdk/client/CarControlSDK;
.super Ljava/lang/Object;
.source "CarControlSDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/smartcontrol/sdk/client/CarControlSDK$SingletonHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CarControlSDK"


# instance fields
.field private volatile mHasInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/CarControlSDK;->mHasInitialized:Z

    const-string v0, "client-"

    .line 34
    invoke-static {v0}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->setLogTag(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/smartcontrol/sdk/client/CarControlSDK$1;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/CarControlSDK;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/smartcontrol/sdk/client/CarControlSDK;
    .locals 1

    .line 42
    invoke-static {}, Lcom/xiaopeng/smartcontrol/sdk/client/CarControlSDK$SingletonHolder;->access$100()Lcom/xiaopeng/smartcontrol/sdk/client/CarControlSDK;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$init$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "appId",
            "module",
            "method",
            "data"
        }
    .end annotation

    .line 186
    sget-object v0, Lcom/xiaopeng/smartcontrol/sdk/client/CarControlSDK;->TAG:Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const-string p0, "onReceived-- appId:%s, module:%s, method:%s, data:%s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-static {p1}, Lcom/xiaopeng/smartcontrol/sdk/base/ManagerFactory;->getClientClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaopeng/smartcontrol/sdk/base/ManagerFactory;->getManager(Ljava/lang/String;)Lcom/xiaopeng/smartcontrol/sdk/base/AbsBaseManager;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/smartcontrol/sdk/client/BaseManager;

    if-eqz p0, :cond_0

    .line 189
    invoke-virtual {p0, p2, p3}, Lcom/xiaopeng/smartcontrol/sdk/client/BaseManager;->onIpcReceived(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "no manager!!!"

    .line 191
    invoke-static {v0, p0}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$init$1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "method",
            "data"
        }
    .end annotation

    .line 199
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 200
    invoke-static {}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->clear()V

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized destroy()V
    .locals 2

    monitor-enter p0

    .line 214
    :try_start_0
    sget-object v0, Lcom/xiaopeng/smartcontrol/sdk/client/CarControlSDK;->TAG:Ljava/lang/String;

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-static {}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;->get()Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;->destroy()V

    .line 216
    invoke-static {}, Lcom/xiaopeng/smartcontrol/sdk/base/ManagerFactory;->clear()V

    const/4 v0, 0x0

    .line 217
    iput-boolean v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/CarControlSDK;->mHasInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public geAtlManager()Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager;
    .locals 1

    .line 114
    const-class v0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/smartcontrol/sdk/base/ManagerFactory;->getManager(Ljava/lang/String;)Lcom/xiaopeng/smartcontrol/sdk/base/AbsBaseManager;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager;

    return-object v0
.end method

.method public getCameraAuthManager()Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/CameraAuthManager;
    .locals 1

    .line 82
    const-class v0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/CameraAuthManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/smartcontrol/sdk/base/ManagerFactory;->getManager(Ljava/lang/String;)Lcom/xiaopeng/smartcontrol/sdk/base/AbsBaseManager;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/CameraAuthManager;

    return-object v0
.end method

.method public getCarBodyManager()Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/CarBodyManager;
    .locals 1

    .line 66
    const-class v0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/CarBodyManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/smartcontrol/sdk/base/ManagerFactory;->getManager(Ljava/lang/String;)Lcom/xiaopeng/smartcontrol/sdk/base/AbsBaseManager;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/CarBodyManager;

    return-object v0
.end method

.method public getCarControlShowManager()Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/CarControlShowManager;
    .locals 1

    .line 122
    const-class v0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/CarControlShowManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/smartcontrol/sdk/base/ManagerFactory;->getManager(Ljava/lang/String;)Lcom/xiaopeng/smartcontrol/sdk/base/AbsBaseManager;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/CarControlShowManager;

    return-object v0
.end method

.method public getDriveControlManager()Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/DriveControlManager;
    .locals 1

    .line 138
    const-class v0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/DriveControlManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/smartcontrol/sdk/base/ManagerFactory;->getManager(Ljava/lang/String;)Lcom/xiaopeng/smartcontrol/sdk/base/AbsBaseManager;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/DriveControlManager;

    return-object v0
.end method

.method public getHvacManager()Lcom/xiaopeng/smartcontrol/sdk/client/hvac/HvacManager;
    .locals 1

    .line 58
    const-class v0, Lcom/xiaopeng/smartcontrol/sdk/client/hvac/HvacManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/smartcontrol/sdk/base/ManagerFactory;->getManager(Ljava/lang/String;)Lcom/xiaopeng/smartcontrol/sdk/base/AbsBaseManager;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/hvac/HvacManager;

    return-object v0
.end method

.method public getLaboratoryManager()Lcom/xiaopeng/smartcontrol/sdk/client/settings/LaboratoryManager;
    .locals 1

    .line 146
    const-class v0, Lcom/xiaopeng/smartcontrol/sdk/client/settings/LaboratoryManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/smartcontrol/sdk/base/ManagerFactory;->getManager(Ljava/lang/String;)Lcom/xiaopeng/smartcontrol/sdk/base/AbsBaseManager;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/settings/LaboratoryManager;

    return-object v0
.end method

.method public getLampManager()Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/LampManager;
    .locals 1

    .line 74
    const-class v0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/LampManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/smartcontrol/sdk/base/ManagerFactory;->getManager(Ljava/lang/String;)Lcom/xiaopeng/smartcontrol/sdk/base/AbsBaseManager;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/LampManager;

    return-object v0
.end method

.method public getMirrorControlManager()Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/MirrorControlManager;
    .locals 1

    .line 90
    const-class v0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/MirrorControlManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/smartcontrol/sdk/base/ManagerFactory;->getManager(Ljava/lang/String;)Lcom/xiaopeng/smartcontrol/sdk/base/AbsBaseManager;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/MirrorControlManager;

    return-object v0
.end method

.method public getPowerCenterManager()Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager;
    .locals 1

    .line 98
    const-class v0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/smartcontrol/sdk/base/ManagerFactory;->getManager(Ljava/lang/String;)Lcom/xiaopeng/smartcontrol/sdk/base/AbsBaseManager;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager;

    return-object v0
.end method

.method public getSeatManager()Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/SeatManager;
    .locals 1

    .line 50
    const-class v0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/SeatManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/smartcontrol/sdk/base/ManagerFactory;->getManager(Ljava/lang/String;)Lcom/xiaopeng/smartcontrol/sdk/base/AbsBaseManager;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/SeatManager;

    return-object v0
.end method

.method public getWindowControlManager()Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/WindowControlManager;
    .locals 1

    .line 106
    const-class v0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/WindowControlManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/smartcontrol/sdk/base/ManagerFactory;->getManager(Ljava/lang/String;)Lcom/xiaopeng/smartcontrol/sdk/base/AbsBaseManager;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/WindowControlManager;

    return-object v0
.end method

.method public getXpilotManager()Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/XpilotManager;
    .locals 1

    .line 130
    const-class v0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/XpilotManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/smartcontrol/sdk/base/ManagerFactory;->getManager(Ljava/lang/String;)Lcom/xiaopeng/smartcontrol/sdk/base/AbsBaseManager;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/XpilotManager;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    .line 168
    invoke-virtual {p0, p1, v0, v0}, Lcom/xiaopeng/smartcontrol/sdk/client/CarControlSDK;->init(Landroid/content/Context;Lcom/xiaopeng/smartcontrol/sdk/client/ClientConfig;Lcom/xiaopeng/smartcontrol/sdk/ServiceStatusListener;)V

    return-void
.end method

.method public declared-synchronized init(Landroid/content/Context;Lcom/xiaopeng/smartcontrol/sdk/client/ClientConfig;Lcom/xiaopeng/smartcontrol/sdk/ServiceStatusListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "config",
            "listener"
        }
    .end annotation

    monitor-enter p0

    .line 177
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/CarControlSDK;->mHasInitialized:Z

    if-eqz v0, :cond_0

    .line 178
    sget-object p1, Lcom/xiaopeng/smartcontrol/sdk/client/CarControlSDK;->TAG:Ljava/lang/String;

    const-string p2, "sdk has been initialized!!!"

    invoke-static {p1, p2}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 181
    :try_start_1
    iput-boolean v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/CarControlSDK;->mHasInitialized:Z

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 183
    sget-object v2, Lcom/xiaopeng/smartcontrol/sdk/client/CarControlSDK;->TAG:Ljava/lang/String;

    const-string v3, "init appId : %s, %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const-string v1, "2.4.5.2_HEAD_367045e_2024/09/10 10:57:32"

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-static {}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;->get()Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;->init(Landroid/content/Context;Lcom/xiaopeng/smartcontrol/sdk/client/ClientConfig;Lcom/xiaopeng/smartcontrol/sdk/ServiceStatusListener;)V

    .line 185
    invoke-static {}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;->get()Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;

    move-result-object p1

    sget-object p2, Lcom/xiaopeng/smartcontrol/sdk/client/-$$Lambda$CarControlSDK$bkwGN0sKyKdb1Q7UPt4R-QRYu68;->INSTANCE:Lcom/xiaopeng/smartcontrol/sdk/client/-$$Lambda$CarControlSDK$bkwGN0sKyKdb1Q7UPt4R-QRYu68;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;->setClientListener(Lcom/xiaopeng/smartcontrol/ipc/client/ClientListener;)V

    .line 196
    const-class p1, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AccountManager;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/smartcontrol/sdk/base/ManagerFactory;->getManager(Ljava/lang/String;)Lcom/xiaopeng/smartcontrol/sdk/base/AbsBaseManager;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AccountManager;

    if-eqz p1, :cond_1

    .line 198
    sget-object p2, Lcom/xiaopeng/smartcontrol/sdk/client/-$$Lambda$CarControlSDK$1jMRn6zk0fhngeYcJ5qTJ_gJk0Y;->INSTANCE:Lcom/xiaopeng/smartcontrol/sdk/client/-$$Lambda$CarControlSDK$1jMRn6zk0fhngeYcJ5qTJ_gJk0Y;

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AccountManager;->addRawSignalCallback(Lcom/xiaopeng/smartcontrol/sdk/client/BaseManager$IRawSignalReceiver;)V

    .line 206
    :cond_1
    const-class p1, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/smartcontrol/sdk/base/ManagerFactory;->getManager(Ljava/lang/String;)Lcom/xiaopeng/smartcontrol/sdk/base/AbsBaseManager;

    .line 207
    const-class p1, Lcom/xiaopeng/smartcontrol/sdk/client/hvac/HvacManager;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/smartcontrol/sdk/base/ManagerFactory;->getManager(Ljava/lang/String;)Lcom/xiaopeng/smartcontrol/sdk/base/AbsBaseManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
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

    .line 160
    invoke-static {p1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->setLogLevel(I)V

    return-void
.end method
