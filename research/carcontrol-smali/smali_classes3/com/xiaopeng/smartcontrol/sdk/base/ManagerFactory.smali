.class public Lcom/xiaopeng/smartcontrol/sdk/base/ManagerFactory;
.super Ljava/lang/Object;
.source "ManagerFactory.java"


# static fields
.field private static final mManagerCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/smartcontrol/sdk/base/AbsBaseManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/smartcontrol/sdk/base/ManagerFactory;->mManagerCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized clear()V
    .locals 2

    const-class v0, Lcom/xiaopeng/smartcontrol/sdk/base/ManagerFactory;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/xiaopeng/smartcontrol/sdk/base/ManagerFactory;->mManagerCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getClientClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "moduleName"
        }
    .end annotation

    .line 49
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "com.xiaopeng.smartcontrol.sdk.server.vehicle.SeatManagerServer"

    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const-class p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/SeatManager;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.smartcontrol.sdk.server.hvac.HvacManagerServer"

    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    const-class p0, Lcom/xiaopeng/smartcontrol/sdk/client/hvac/HvacManager;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "com.xiaopeng.smartcontrol.sdk.server.vehicle.CarBodyManagerServer"

    .line 56
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    const-class p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/CarBodyManager;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v0, "com.xiaopeng.smartcontrol.sdk.server.vehicle.LampManagerServer"

    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 60
    const-class p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/LampManager;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string v0, "com.xiaopeng.smartcontrol.sdk.server.powercenter.PowerCenterManagerServer"

    .line 62
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 63
    const-class p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const-string v0, "com.xiaopeng.smartcontrol.sdk.server.vehicle.WindowControlManagerServer"

    .line 65
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 66
    const-class p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/WindowControlManager;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const-string v0, "com.xiaopeng.smartcontrol.sdk.server.vehicle.AtlManagerServer"

    .line 68
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 69
    const-class p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const-string v0, "com.xiaopeng.smartcontrol.sdk.server.vehicle.CarControlShowManagerServer"

    .line 71
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 72
    const-class p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/CarControlShowManager;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    const-string v0, "com.xiaopeng.smartcontrol.sdk.server.vehicle.XpilotManagerServer"

    .line 74
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 75
    const-class p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/XpilotManager;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    const-string v0, "com.xiaopeng.smartcontrol.sdk.server.vehicle.DriveControlManagerServer"

    .line 77
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 78
    const-class p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/DriveControlManager;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const-string v0, "com.xiaopeng.smartcontrol.sdk.server.vehicle.AccountManagerServer"

    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 81
    const-class p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AccountManager;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    const-string v0, "com.xiaopeng.smartcontrol.sdk.server.vehicle.MirrorControlManagerServer"

    .line 83
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 84
    const-class p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/MirrorControlManager;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const-string v0, "com.xiaopeng.smartcontrol.sdk.server.settings.LaboratoryManagerServer"

    .line 86
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 87
    const-class p0, Lcom/xiaopeng/smartcontrol/sdk/client/settings/LaboratoryManager;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    const-string v0, "com.xiaopeng.smartcontrol.sdk.server.vehicle.CameraAuthManagerServer"

    .line 89
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 90
    const-class p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/CameraAuthManager;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static declared-synchronized getManager(Ljava/lang/String;)Lcom/xiaopeng/smartcontrol/sdk/base/AbsBaseManager;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clsName"
        }
    .end annotation

    const-class v0, Lcom/xiaopeng/smartcontrol/sdk/base/ManagerFactory;

    monitor-enter v0

    .line 27
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "_AutoClass"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 29
    :try_start_1
    sget-object v1, Lcom/xiaopeng/smartcontrol/sdk/base/ManagerFactory;->mManagerCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/smartcontrol/sdk/base/AbsBaseManager;

    if-nez v2, :cond_0

    .line 31
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 32
    const-class v4, Lcom/xiaopeng/smartcontrol/sdk/base/AbsBaseManager;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 33
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/smartcontrol/sdk/base/AbsBaseManager;

    .line 34
    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    .line 39
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 p0, 0x0

    .line 41
    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method
