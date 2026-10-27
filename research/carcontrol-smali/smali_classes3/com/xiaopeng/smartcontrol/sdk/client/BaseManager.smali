.class public abstract Lcom/xiaopeng/smartcontrol/sdk/client/BaseManager;
.super Lcom/xiaopeng/smartcontrol/sdk/base/AbsBaseManager;
.source "BaseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/smartcontrol/sdk/client/BaseManager$IRawSignalReceiver;,
        Lcom/xiaopeng/smartcontrol/sdk/client/BaseManager$IBaseSignalReceiver;
    }
.end annotation


# instance fields
.field protected final TAG:Ljava/lang/String;

.field protected mCallback:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mRawCallback:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/xiaopeng/smartcontrol/sdk/client/BaseManager$IRawSignalReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 25
    invoke-direct {p0}, Lcom/xiaopeng/smartcontrol/sdk/base/AbsBaseManager;-><init>()V

    .line 19
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/BaseManager;->mCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 21
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/BaseManager;->mRawCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/BaseManager;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 26
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/BaseManager;->getAppId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "bindService  appId:%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;->get()Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/BaseManager;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;->bindService(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addRawSignalCallback(Lcom/xiaopeng/smartcontrol/sdk/client/BaseManager$IRawSignalReceiver;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/BaseManager;->mRawCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-static {}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;->get()Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/BaseManager;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;->onSignalCallbackAdded(Ljava/lang/String;)V

    return-void
.end method

.method public addSignalCallback(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/BaseManager;->mCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-static {}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;->get()Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/BaseManager;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;->onSignalCallbackAdded(Ljava/lang/String;)V

    return-void
.end method

.method protected final callIpc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "method",
            "params"
        }
    .end annotation

    .line 63
    invoke-static {}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;->get()Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/BaseManager;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/BaseManager;->getModuleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final callIpcAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestId",
            "method",
            "params"
        }
    .end annotation

    .line 67
    invoke-static {}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;->get()Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/BaseManager;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/BaseManager;->getModuleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;->callAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public clearRawSignalCallback()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/BaseManager;->mRawCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    return-void
.end method

.method public clearSignalCallback()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/BaseManager;->mCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    return-void
.end method

.method protected abstract getAppId()Ljava/lang/String;
.end method

.method protected getClientPkgName()Ljava/lang/String;
    .locals 1

    .line 71
    invoke-static {}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;->get()Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;->getPkgName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getModuleName()Ljava/lang/String;
.end method

.method public abstract onIpcReceived(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "method",
            "data"
        }
    .end annotation
.end method

.method public removeRawSignalCallback(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/BaseManager;->mRawCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeSignalCallback(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/BaseManager;->mCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
