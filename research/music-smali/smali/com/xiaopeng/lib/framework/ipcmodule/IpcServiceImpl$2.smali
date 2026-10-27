.class Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$2;
.super Ljava/lang/Object;
.source "IpcServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$2;->this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 82
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$2;->this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->access$000(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$2;->this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->access$100(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;)Lcom/xiaopeng/ipc/a;

    move-result-object v0

    if-nez v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$2;->this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->sendBindServiceMessage()V

    const-wide/16 v0, 0x3e8

    .line 86
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$2;->this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->access$000(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IPCData;

    if-eqz v0, :cond_0

    .line 95
    :try_start_1
    const-class v1, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    monitor-enter v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v2, "IpcServiceImpl"

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendData+ipcService!=null:\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$2;->this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    invoke-static {v4}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->access$100(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;)Lcom/xiaopeng/ipc/a;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ":\tappIds:\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IPCData;->getAppIds()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\tdata:\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IPCData;->getData()Lcom/xiaopeng/ipc/IpcMessage;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$2;->this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    invoke-static {v2}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->access$100(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;)Lcom/xiaopeng/ipc/a;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 99
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$2;->this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    invoke-static {v2}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->access$100(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;)Lcom/xiaopeng/ipc/a;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IPCData;->getAppIds()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IPCData;->getData()Lcom/xiaopeng/ipc/IpcMessage;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/xiaopeng/ipc/a;->a(Ljava/lang/String;Lcom/xiaopeng/ipc/IpcMessage;)V

    .line 100
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$2;->this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    invoke-static {v2}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->access$000(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 104
    monitor-exit v1

    goto/16 :goto_0

    .line 102
    :cond_3
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    .line 104
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v1

    .line 106
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send Data error, e-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IpcServiceImpl"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    instance-of v1, v1, Landroid/os/TransactionTooLargeException;

    if-eqz v1, :cond_0

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too large data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IpcServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$2;->this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->access$000(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    goto/16 :goto_0

    :cond_4
    return-void
.end method
