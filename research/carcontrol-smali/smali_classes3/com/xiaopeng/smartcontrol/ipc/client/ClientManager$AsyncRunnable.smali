.class Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager$AsyncRunnable;
.super Ljava/lang/Object;
.source "ClientManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncRunnable"
.end annotation


# instance fields
.field private appId:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private method:Ljava/lang/String;

.field private module:Ljava/lang/String;

.field private param:Ljava/lang/String;

.field private requestId:Ljava/lang/String;

.field final synthetic this$0:Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "appId",
            "module",
            "method",
            "param",
            "requestId"
        }
    .end annotation

    .line 163
    iput-object p1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager$AsyncRunnable;->this$0:Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p2, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager$AsyncRunnable;->appId:Ljava/lang/String;

    .line 165
    iput-object p3, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager$AsyncRunnable;->module:Ljava/lang/String;

    .line 166
    iput-object p4, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager$AsyncRunnable;->method:Ljava/lang/String;

    .line 167
    iput-object p5, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager$AsyncRunnable;->param:Ljava/lang/String;

    .line 168
    iput-object p6, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager$AsyncRunnable;->requestId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager$AsyncRunnable;->this$0:Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;

    iget-object v1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager$AsyncRunnable;->appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager$AsyncRunnable;->module:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager$AsyncRunnable;->method:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager$AsyncRunnable;->param:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager$AsyncRunnable;->this$0:Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;

    invoke-static {v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;->access$000(Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;)Lcom/xiaopeng/smartcontrol/ipc/client/ClientListener;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "ClientManager"

    const-string v1, "onAsyncCallResult listener is null"

    .line 175
    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager$AsyncRunnable;->this$0:Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;

    invoke-static {v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;->access$000(Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;)Lcom/xiaopeng/smartcontrol/ipc/client/ClientListener;

    move-result-object v5

    iget-object v6, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager$AsyncRunnable;->requestId:Ljava/lang/String;

    iget-object v7, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager$AsyncRunnable;->appId:Ljava/lang/String;

    iget-object v8, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager$AsyncRunnable;->module:Ljava/lang/String;

    iget-object v9, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager$AsyncRunnable;->method:Ljava/lang/String;

    invoke-interface/range {v5 .. v10}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientListener;->onAsyncCallResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
