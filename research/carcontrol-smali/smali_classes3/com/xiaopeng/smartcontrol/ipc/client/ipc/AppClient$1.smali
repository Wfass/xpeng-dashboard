.class Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient$1;
.super Ljava/lang/Object;
.source "AppClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;


# direct methods
.method constructor <init>(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient$1;->this$0:Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient$1;->this$0:Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;

    invoke-static {v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->access$000(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;)Lcom/xiaopeng/smartcontrol/ipc/client/ipc/IpcClient$IpcCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient$1;->this$0:Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;

    invoke-static {v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->access$000(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;)Lcom/xiaopeng/smartcontrol/ipc/client/ipc/IpcClient$IpcCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient$1;->this$0:Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;

    invoke-static {v1}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->access$100(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/IpcClient$IpcCallback;->onServerStatus(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
