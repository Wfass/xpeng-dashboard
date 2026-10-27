.class Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$3;
.super Ljava/lang/Object;
.source "IpcServiceImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


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

    .line 120
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$3;->this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .line 125
    const-class v0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    monitor-enter v0

    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$3;->this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->access$100(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;)Lcom/xiaopeng/ipc/a;

    move-result-object v1

    if-nez v1, :cond_0

    .line 127
    monitor-exit v0

    return-void

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$3;->this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->access$100(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;)Lcom/xiaopeng/ipc/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaopeng/ipc/a;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$3;->this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    invoke-static {v2}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->access$200(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 131
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$3;->this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->access$102(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;Lcom/xiaopeng/ipc/a;)Lcom/xiaopeng/ipc/a;

    .line 133
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$3;->this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    invoke-virtual {v1}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->sendBindServiceMessage()V

    .line 134
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
