.class Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$4;
.super Ljava/lang/Object;
.source "IpcServiceImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 138
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$4;->this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string p1, "IpcServiceImpl"

    const-string v0, "onServiceConnected"

    .line 141
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-class p1, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    monitor-enter p1

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$4;->this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    invoke-static {p2}, Lcom/xiaopeng/ipc/a$a;->a(Landroid/os/IBinder;)Lcom/xiaopeng/ipc/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->access$102(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;Lcom/xiaopeng/ipc/a;)Lcom/xiaopeng/ipc/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$4;->this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$4;->this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->access$100(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;)Lcom/xiaopeng/ipc/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->access$300(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;Lcom/xiaopeng/ipc/a;)V

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$4;->this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->access$200(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_2
    const-string v0, "IpcServiceImpl"

    const-string v1, "onServiceConnected exception"

    .line 154
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {p2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 157
    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 162
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onServiceDisconnected ipcService-->"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$4;->this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->access$100(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;)Lcom/xiaopeng/ipc/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IpcServiceImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-class p1, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    monitor-enter p1

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$4;->this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->access$100(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;)Lcom/xiaopeng/ipc/a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 165
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 169
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$4;->this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->access$100(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;)Lcom/xiaopeng/ipc/a;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/lib/utils/info/AppInfoUtils;->getProcessName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$4;->this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    invoke-static {v2}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->access$400(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;)Lcom/xiaopeng/ipc/b;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/ipc/a;->b(Ljava/lang/String;Lcom/xiaopeng/ipc/b;)V

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$4;->this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->access$100(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;)Lcom/xiaopeng/ipc/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/ipc/a;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$4;->this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->access$200(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "IpcServiceImpl"

    const-string v2, "onServiceDisconnected exception"

    .line 177
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 181
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$4;->this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->access$102(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;Lcom/xiaopeng/ipc/a;)Lcom/xiaopeng/ipc/a;

    .line 182
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
