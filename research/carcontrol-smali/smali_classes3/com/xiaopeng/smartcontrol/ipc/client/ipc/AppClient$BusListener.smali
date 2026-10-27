.class Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient$BusListener;
.super Lcom/xiaopeng/ipc/aidl/IPipeBusListener$Stub;
.source "AppClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BusListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 377
    iput-object p1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient$BusListener;->this$0:Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;

    invoke-direct {p0}, Lcom/xiaopeng/ipc/aidl/IPipeBusListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient$1;)V
    .locals 0

    .line 377
    invoke-direct {p0, p1}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient$BusListener;-><init>(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;)V

    return-void
.end method

.method static synthetic lambda$onPipeBusEvent$0(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "rec$"
        }
    .end annotation

    .line 387
    invoke-static {p0}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->access$1200(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onPipeBusEvent$1$AppClient$BusListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "module",
            "msgId",
            "data"
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient$BusListener;->this$0:Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;

    invoke-static {v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->access$000(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;)Lcom/xiaopeng/smartcontrol/ipc/client/ipc/IpcClient$IpcCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient$BusListener;->this$0:Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;

    invoke-static {v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->access$000(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;)Lcom/xiaopeng/smartcontrol/ipc/client/ipc/IpcClient$IpcCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient$BusListener;->this$0:Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;

    invoke-static {v1}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->access$100(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/IpcClient$IpcCallback;->onReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onPipeBusEvent$2$AppClient$BusListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "module",
            "msgId",
            "data"
        }
    .end annotation

    .line 399
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient$BusListener;->this$0:Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;

    invoke-static {v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->access$000(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;)Lcom/xiaopeng/smartcontrol/ipc/client/ipc/IpcClient$IpcCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient$BusListener;->this$0:Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;

    invoke-static {v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->access$000(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;)Lcom/xiaopeng/smartcontrol/ipc/client/ipc/IpcClient$IpcCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient$BusListener;->this$0:Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;

    invoke-static {v1}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->access$100(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/IpcClient$IpcCallback;->onReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPipeBusEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "module",
            "msgId",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 380
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient$BusListener;->this$0:Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;

    invoke-static {v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->access$200(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient$BusListener;->this$0:Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;

    invoke-static {v2}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->access$300(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const-string v2, "onReceived %s %s %s %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "initComplete"

    .line 383
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient$BusListener;->this$0:Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;

    invoke-static {p1}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->access$200(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "\u89e6\u53d1\u5ba2\u6237\u7aef\u91cd\u53d1\u5931\u8d25\u7684\u8bf7\u6c42 initComplete\u65f6: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient$BusListener;->this$0:Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;

    invoke-static {p3}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->access$900(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;)Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient$BusListener;->this$0:Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;

    invoke-static {p1}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->access$900(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 387
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient$BusListener;->this$0:Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;

    new-instance p2, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/-$$Lambda$AppClient$BusListener$VEUdHlT_17T8wmAOpqRq305FVEs;

    invoke-direct {p2, p1}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/-$$Lambda$AppClient$BusListener$VEUdHlT_17T8wmAOpqRq305FVEs;-><init>(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;)V

    invoke-static {p2}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient$BusListener;->this$0:Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;

    invoke-static {v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->access$1000(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 392
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient$BusListener;->this$0:Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;

    invoke-static {v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->access$1000(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/-$$Lambda$AppClient$BusListener$emishgrBfxe90LSQFCKdecQxqaQ;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/-$$Lambda$AppClient$BusListener$emishgrBfxe90LSQFCKdecQxqaQ;-><init>(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient$BusListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 398
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient$BusListener;->this$0:Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;

    invoke-static {v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->access$1100(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/-$$Lambda$AppClient$BusListener$MCnNFD_6KrqNYeBvSjyxw7FhmnE;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/-$$Lambda$AppClient$BusListener$MCnNFD_6KrqNYeBvSjyxw7FhmnE;-><init>(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient$BusListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
