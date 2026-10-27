.class Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient$3;
.super Ljava/lang/Object;
.source "AppClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 86
    iput-object p1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient$3;->this$0:Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "service"
        }
    .end annotation

    .line 96
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient$3;->this$0:Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;

    invoke-static {p1}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->access$200(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient$3;->this$0:Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;

    invoke-static {v1}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->access$300(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient$3;->this$0:Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;

    invoke-static {v3}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->access$500(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient$3;->this$0:Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->access$402(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;Z)Z

    .line 98
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient$3;->this$0:Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;

    const-string v0, "SERVICE_CONNECTED"

    invoke-static {p1, p2, v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->access$600(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;->get()Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient$3;->this$0:Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;

    invoke-static {p2}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->access$100(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;->notifyServiceConnected(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 89
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient$3;->this$0:Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;

    invoke-static {p1}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->access$200(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDisconnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient$3;->this$0:Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;

    invoke-static {v1}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->access$300(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient$3;->this$0:Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->access$402(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;Z)Z

    .line 91
    invoke-static {}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;->get()Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient$3;->this$0:Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;

    invoke-static {v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->access$100(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;->notifyServiceDisconnected(Ljava/lang/String;)V

    return-void
.end method
