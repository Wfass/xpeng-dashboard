.class Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$1;
.super Lcom/xiaopeng/ipc/b$a;
.source "IpcServiceImpl.java"


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

    .line 55
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$1;->this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    invoke-direct {p0}, Lcom/xiaopeng/ipc/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Lcom/xiaopeng/ipc/IpcMessage;)V
    .locals 3

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive:\t sender "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/ipc/IpcMessage;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\thasSubscriberForEvent:\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService$IpcMessageEvent;

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->hasSubscriberForEvent(Ljava/lang/Class;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IpcServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    new-instance v0, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService$IpcMessageEvent;

    invoke-direct {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService$IpcMessageEvent;-><init>()V

    .line 64
    invoke-virtual {p1}, Lcom/xiaopeng/ipc/IpcMessage;->c()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService$IpcMessageEvent;->setPayloadData(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p1}, Lcom/xiaopeng/ipc/IpcMessage;->b()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService$IpcMessageEvent;->setMsgID(I)V

    .line 66
    invoke-virtual {p1}, Lcom/xiaopeng/ipc/IpcMessage;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService$IpcMessageEvent;->setSenderPackageName(Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService$IpcMessageEvent;

    invoke-virtual {p1, v2}, Lorg/greenrobot/eventbus/EventBus;->hasSubscriberForEvent(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "post messageEvent"

    .line 68
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p1, "postSticky messageEvent"

    .line 72
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->postSticky(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
