.class Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager$1;
.super Ljava/lang/Object;
.source "ClientManager.java"

# interfaces
.implements Lcom/xiaopeng/smartcontrol/ipc/client/ipc/IpcClient$IpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager$1;->this$0:Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "appId",
            "module",
            "method",
            "data"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 39
    invoke-static {p4}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->stringLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "onReceived-- appId:%s, module:%s, method:%s, data:%s"

    .line 38
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ClientManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager$1;->this$0:Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;

    invoke-static {v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;->access$000(Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;)Lcom/xiaopeng/smartcontrol/ipc/client/ClientListener;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "onReceived listener is null"

    .line 41
    invoke-static {v1, p1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager$1;->this$0:Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;

    invoke-static {v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;->access$000(Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;)Lcom/xiaopeng/smartcontrol/ipc/client/ClientListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientListener;->onReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onServerStatus(Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "appId",
            "status"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 49
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "onServerStatus-- appId:%s, status:%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ClientManager"

    invoke-static {v2, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager$1;->this$0:Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;

    invoke-static {v1}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;->access$000(Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;)Lcom/xiaopeng/smartcontrol/ipc/client/ClientListener;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p1, "onServerStatus listener is null"

    .line 51
    invoke-static {v2, p1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager$1;->this$0:Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;

    invoke-static {v1}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;->access$000(Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;)Lcom/xiaopeng/smartcontrol/ipc/client/ClientListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientListener;->onServerStatus(Ljava/lang/String;I)V

    if-ne p2, v0, :cond_1

    .line 57
    invoke-static {p1}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->clear(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
