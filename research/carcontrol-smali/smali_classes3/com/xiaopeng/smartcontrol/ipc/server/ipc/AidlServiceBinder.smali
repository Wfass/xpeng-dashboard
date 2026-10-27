.class public Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AidlServiceBinder;
.super Lcom/xiaopeng/ipc/aidl/IPipeBus$Stub;
.source "AidlServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AidlServiceBinder$SingletonHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AidlServiceBinder"


# instance fields
.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/xiaopeng/ipc/aidl/IPipeBus$Stub;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AidlServiceBinder;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static get()Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AidlServiceBinder;
    .locals 1

    .line 20
    invoke-static {}, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AidlServiceBinder$SingletonHolder;->access$000()Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AidlServiceBinder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "module",
            "method",
            "params",
            "results"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 27
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AidlServiceBinder;->callWithSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public callWithSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "module",
            "method",
            "params",
            "results"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    sget-object v0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AidlServiceBinder;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v3, 0x1

    aput-object p3, v1, v3

    const/4 v3, 0x2

    aput-object p4, v1, v3

    const-string v3, "onCall = %s %s %s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;->get()Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;->onCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p5, :cond_0

    .line 34
    array-length p2, p5

    if-lez p2, :cond_0

    .line 35
    aput-object p1, p5, v2

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_0
    return v2
.end method

.method public checkVersion(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clientPkg",
            "clientVersion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    sget-object v0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AidlServiceBinder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkVersion client = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "checkVersion server = 2.4.5.2_HEAD_367045e_2024/09/10 10:57:32"

    .line 84
    invoke-static {v0, p1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "2.4.5.2_HEAD_367045e_2024/09/10 10:57:32"

    .line 85
    invoke-virtual {p2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_0

    const-string p1, "checkVersion tips: client version is too low!!!"

    .line 87
    invoke-static {v0, p1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    const-string p1, "checkVersion tips: server version is too low!!!"

    .line 89
    invoke-static {v0, p1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hasInitCompleted()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    invoke-static {}, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;->get()Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;->hasInitCompleted()Z

    move-result v0

    .line 98
    sget-object v1, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AidlServiceBinder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasInitCompleted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public notifyStickySend(Lcom/xiaopeng/ipc/aidl/IPipeBusListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    sget-object v0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AidlServiceBinder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyStickySend "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AidlServiceBinder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;->get()Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;->findPipeListenerRecordLocked(Lcom/xiaopeng/ipc/aidl/IPipeBusListener;)Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer$PipeListenerRecord;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 109
    :try_start_1
    invoke-static {}, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;->get()Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;->notifyStickySend(Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer$PipeListenerRecord;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 111
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public registerListener(Lcom/xiaopeng/ipc/aidl/IPipeBusListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    sget-object v0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AidlServiceBinder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 44
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 45
    iget-object v3, p0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AidlServiceBinder;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 46
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;->get()Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;->findIndexOfPipeListenerLocked(Lcom/xiaopeng/ipc/aidl/IPipeBusListener;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    const-string p1, "PipeListener is already added, ignoring"

    .line 48
    invoke-static {v0, p1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    monitor-exit v3

    return-void

    .line 51
    :cond_0
    new-instance v0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer$PipeListenerRecord;

    invoke-direct {v0, p1, v1, v2}, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer$PipeListenerRecord;-><init>(Lcom/xiaopeng/ipc/aidl/IPipeBusListener;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :try_start_1
    invoke-interface {p1}, Lcom/xiaopeng/ipc/aidl/IPipeBusListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    :try_start_2
    invoke-static {}, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;->get()Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;->addListener(Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer$PipeListenerRecord;)V

    .line 59
    monitor-exit v3

    return-void

    .line 55
    :catch_0
    sget-object p1, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AidlServiceBinder;->TAG:Ljava/lang/String;

    const-string v0, "PipeListener is dead, ignoring it"

    invoke-static {p1, v0}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    monitor-exit v3

    return-void

    :catchall_0
    move-exception p1

    .line 59
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public unRegisterListener(Lcom/xiaopeng/ipc/aidl/IPipeBusListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    sget-object v0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AidlServiceBinder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unRegisterListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AidlServiceBinder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 66
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;->get()Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;->findIndexOfPipeListenerLocked(Lcom/xiaopeng/ipc/aidl/IPipeBusListener;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 68
    invoke-static {}, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;->get()Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;->removeListener(I)Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer$PipeListenerRecord;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 71
    :try_start_1
    iget-object v1, p1, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer$PipeListenerRecord;->listener:Lcom/xiaopeng/ipc/aidl/IPipeBusListener;

    invoke-interface {v1}, Lcom/xiaopeng/ipc/aidl/IPipeBusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v1, 0x0

    .line 72
    iput-object v1, p1, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer$PipeListenerRecord;->listener:Lcom/xiaopeng/ipc/aidl/IPipeBusListener;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :catch_0
    :cond_0
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
