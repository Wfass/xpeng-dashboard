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

    .line 284
    return-void
.end method

.method private bindRemoteService()V
    .locals 4

    .line 308
    const-string v0, "IpcServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IpcHandler;->this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    invoke-static {v2}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->access$700(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", ipcService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IpcHandler;->this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    invoke-static {v2}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->access$100(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;)Lcom/xiaopeng/ipc/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 311
    const-string v1, "com.xiaopeng.ipc"

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

    .line 317
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

    .line 324
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 288
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 289
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 297
    :pswitch_0
    const-string p1, "IpcServiceImpl"

    const-string v0, "unbind ServiceIntent"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IpcHandler;->unbindRemoteService()V

    .line 300
    goto :goto_0

    .line 292
    :pswitch_1
    const-string p1, "IpcServiceImpl"

    const-string v0, "bind ServiceIntent"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IpcHandler;->bindRemoteService()V

    .line 294
    nop

    .line 305
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
