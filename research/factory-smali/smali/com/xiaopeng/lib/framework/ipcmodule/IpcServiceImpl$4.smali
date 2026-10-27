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
    .param p1, "this$0"    # Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    .line 138
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$4;->this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 141
    const-string v0, "IpcServiceImpl"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-class v0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    monitor-enter v0

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$4;->this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    invoke-static {p2}, Lcom/xiaopeng/ipc/IPC$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/ipc/IPC;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->access$102(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;Lcom/xiaopeng/ipc/IPC;)Lcom/xiaopeng/ipc/IPC;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$4;->this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$4;->this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    invoke-static {v2}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->access$100(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;)Lcom/xiaopeng/ipc/IPC;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->access$300(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;Lcom/xiaopeng/ipc/IPC;)V

    .line 147
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$4;->this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->access$200(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    goto :goto_0

    .line 148
    :catch_0
    move-exception v1

    .line 154
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "IpcServiceImpl"

    const-string v3, "onServiceConnected exception"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 157
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 158
    return-void

    .line 157
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 162
    const-string v0, "IpcServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected ipcService-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$4;->this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    invoke-static {v2}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->access$100(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;)Lcom/xiaopeng/ipc/IPC;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-class v0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    monitor-enter v0

    .line 164
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$4;->this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->access$100(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;)Lcom/xiaopeng/ipc/IPC;

    move-result-object v1

    if-nez v1, :cond_0

    .line 165
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 169
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$4;->this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->access$100(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;)Lcom/xiaopeng/ipc/IPC;

    move-result-object v1

    invoke-static {}, Lcom/xiaopeng/lib/utils/info/AppInfoUtils;->getProcessName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$4;->this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    invoke-static {v3}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->access$400(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;)Lcom/xiaopeng/ipc/IPCCallback;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/xiaopeng/ipc/IPC;->unregisterClient(Ljava/lang/String;Lcom/xiaopeng/ipc/IPCCallback;)V

    .line 170
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$4;->this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->access$100(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;)Lcom/xiaopeng/ipc/IPC;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaopeng/ipc/IPC;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$4;->this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    invoke-static {v2}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->access$200(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    goto :goto_0

    .line 171
    :catch_0
    move-exception v1

    .line 177
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "IpcServiceImpl"

    const-string v3, "onServiceDisconnected exception"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 181
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$4;->this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->access$102(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;Lcom/xiaopeng/ipc/IPC;)Lcom/xiaopeng/ipc/IPC;

    .line 182
    monitor-exit v0

    .line 183
    return-void

    .line 182
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
