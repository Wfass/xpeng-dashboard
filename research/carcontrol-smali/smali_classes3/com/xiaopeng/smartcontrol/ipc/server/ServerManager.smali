.class public Lcom/xiaopeng/smartcontrol/ipc/server/ServerManager;
.super Ljava/lang/Object;
.source "ServerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/smartcontrol/ipc/server/ServerManager$SingletonHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SerMg"


# instance fields
.field private mConfig:Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig;

.field private mHandlerThreadHelper:Lcom/xiaopeng/smartcontrol/utils/HandlerThreadHelper;

.field private mServerListener:Lcom/xiaopeng/smartcontrol/ipc/server/ServerListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/smartcontrol/ipc/server/ServerManager$1;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/xiaopeng/smartcontrol/ipc/server/ServerManager;-><init>()V

    return-void
.end method

.method public static get()Lcom/xiaopeng/smartcontrol/ipc/server/ServerManager;
    .locals 1

    .line 35
    invoke-static {}, Lcom/xiaopeng/smartcontrol/ipc/server/ServerManager$SingletonHolder;->access$100()Lcom/xiaopeng/smartcontrol/ipc/server/ServerManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$send$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "module",
            "method",
            "data"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 65
    invoke-static {p2}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->stringLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "send  module:%s, msgId:%s, data:%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SerMg"

    invoke-static {v1, v0}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;->get()Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;->send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig;)V
    .locals 2
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

    .line 39
    iput-object p2, p0, Lcom/xiaopeng/smartcontrol/ipc/server/ServerManager;->mConfig:Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig;

    .line 40
    new-instance v0, Lcom/xiaopeng/smartcontrol/utils/HandlerThreadHelper;

    const-string v1, "Server_Send_Thread"

    invoke-direct {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/HandlerThreadHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/server/ServerManager;->mHandlerThreadHelper:Lcom/xiaopeng/smartcontrol/utils/HandlerThreadHelper;

    .line 41
    invoke-static {}, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;->get()Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;->init(Landroid/content/Context;Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig;)V

    .line 42
    invoke-static {}, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;->get()Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;

    move-result-object p1

    new-instance p2, Lcom/xiaopeng/smartcontrol/ipc/server/-$$Lambda$ServerManager$s5JlIH5uhpE5mLns3pqtO_jVNzM;

    invoke-direct {p2, p0}, Lcom/xiaopeng/smartcontrol/ipc/server/-$$Lambda$ServerManager$s5JlIH5uhpE5mLns3pqtO_jVNzM;-><init>(Lcom/xiaopeng/smartcontrol/ipc/server/ServerManager;)V

    invoke-virtual {p1, p2}, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;->setIpcCallback(Lcom/xiaopeng/smartcontrol/ipc/server/ipc/IpcServer$IpcCallback;)V

    return-void
.end method

.method public synthetic lambda$init$0$ServerManager(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
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

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    .line 43
    invoke-static {p4}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->stringLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "onCall-- module:%s, method:%s, param:%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SerMg"

    invoke-static {v1, v0}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/server/ServerManager;->mServerListener:Lcom/xiaopeng/smartcontrol/ipc/server/ServerListener;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p1, "mServerListener is null"

    .line 45
    invoke-static {v1, p1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 49
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaopeng/smartcontrol/ipc/server/ServerListener;->onCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 51
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, "mServerListener onCall error"

    .line 52
    invoke-static {v1, p1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "module",
            "method",
            "data"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/server/ServerManager;->mHandlerThreadHelper:Lcom/xiaopeng/smartcontrol/utils/HandlerThreadHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/server/ServerManager;->mConfig:Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig;->sendAsync()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/server/ServerManager;->mHandlerThreadHelper:Lcom/xiaopeng/smartcontrol/utils/HandlerThreadHelper;

    new-instance v1, Lcom/xiaopeng/smartcontrol/ipc/server/-$$Lambda$ServerManager$8AHyaUsrdz2w2EOgvLEStQd_Dl8;

    invoke-direct {v1, p1, p2, p3}, Lcom/xiaopeng/smartcontrol/ipc/server/-$$Lambda$ServerManager$8AHyaUsrdz2w2EOgvLEStQd_Dl8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/HandlerThreadHelper;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    .line 69
    invoke-static {p3}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->stringLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "send  module:%s, msgId:%s, data:%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SerMg"

    invoke-static {v1, v0}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;->get()Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;->send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setServerListener(Lcom/xiaopeng/smartcontrol/ipc/server/ServerListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/xiaopeng/smartcontrol/ipc/server/ServerManager;->mServerListener:Lcom/xiaopeng/smartcontrol/ipc/server/ServerListener;

    return-void
.end method
