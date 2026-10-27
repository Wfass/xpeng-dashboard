.class Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient$4;
.super Landroid/os/Handler;
.source "AppClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaopeng/smartcontrol/ipc/client/ipc/IpcClient$IpcCallback;Lcom/xiaopeng/smartcontrol/sdk/client/ClientConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;


# direct methods
.method constructor <init>(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "x0"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient$4;->this$0:Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 118
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 119
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient$4;->this$0:Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;

    invoke-static {p1}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->access$808(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;)I

    .line 120
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient$4;->this$0:Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;

    const-string v0, "retry"

    invoke-virtual {p1, v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->bindService(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
