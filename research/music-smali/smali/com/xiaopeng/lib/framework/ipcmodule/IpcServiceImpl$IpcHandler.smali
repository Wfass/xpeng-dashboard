.class Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IpcHandler;
.super Landroid/os/Handler;
.source "IpcServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IpcHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;Landroid/os/Looper;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IpcHandler;->this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    .line 283
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private bindRemoteService()V
    .locals 4

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mContext = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IpcHandler;->this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->access$700(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ipcService = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IpcHandler;->this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->access$100(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;)Lcom/xiaopeng/ipc/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IpcServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IpcHandler;->this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->access$700(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IpcHandler;->this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->access$100(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;)Lcom/xiaopeng/ipc/a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 310
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaopeng.ipc.IPCAidl"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.xiaopeng.ipc"

    .line 311
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IpcHandler;->this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->access$700(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IpcHandler;->this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    invoke-static {v2}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->access$800(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;)Landroid/content/ServiceConnection;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    return-void
.end method

.method private unbindRemoteService()V
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IpcHandler;->this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->access$700(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IpcHandler;->this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->access$700(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IpcHandler;->this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->access$800(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 322
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IpcHandler;->this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->access$800(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;)Landroid/content/ServiceConnection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 288
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 289
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const-string v1, "IpcServiceImpl"

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "unbind ServiceIntent"

    .line 297
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IpcHandler;->unbindRemoteService()V

    goto :goto_0

    :cond_1
    const-string p1, "bind ServiceIntent"

    .line 292
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IpcHandler;->bindRemoteService()V

    :goto_0
    return-void
.end method
