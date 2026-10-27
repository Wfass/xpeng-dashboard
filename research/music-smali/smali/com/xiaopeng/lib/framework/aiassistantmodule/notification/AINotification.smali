.class public Lcom/xiaopeng/lib/framework/aiassistantmodule/notification/AINotification;
.super Ljava/lang/Object;
.source "AINotification.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/notification/INotification;


# static fields
.field private static final TAG:Ljava/lang/String; = "AINotification"


# instance fields
.field private mIIpcService:Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService;

.field private mINotificationCallback:Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/notification/INotificationCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-class v0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcModuleEntry;

    new-instance v1, Lcom/xiaopeng/lib/framework/ipcmodule/IpcModuleEntry;

    invoke-direct {v1, p1}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcModuleEntry;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/module/Module;->register(Ljava/lang/Class;Lcom/xiaopeng/lib/framework/module/IModuleEntry;)V

    .line 30
    const-class p1, Lcom/xiaopeng/lib/framework/ipcmodule/IpcModuleEntry;

    invoke-static {p1}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object p1

    const-class v0, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService;

    invoke-interface {p1, v0}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService;

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/notification/AINotification;->mIIpcService:Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService;

    .line 31
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/notification/AINotification;->mIIpcService:Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService;

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService;->init()V

    .line 33
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public close(Ljava/lang/String;)V
    .locals 3

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "close message id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AINotification"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "string_msg"

    .line 48
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/notification/AINotification;->mIIpcService:Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService;

    const-string v1, "com.xiaopeng.aiassistant"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2b06

    invoke-interface {p1, v2, v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService;->sendData(ILandroid/os/Bundle;[Ljava/lang/String;)V

    return-void
.end method

.method public onEvent(Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService$IpcMessageEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->POSTING:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 60
    :try_start_0
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService$IpcMessageEvent;->getMsgID()I

    move-result v0

    const/16 v1, 0x271b

    if-ne v0, v1, :cond_0

    .line 61
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService$IpcMessageEvent;->getPayloadData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "string_msg"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "AINotification"

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMessageClick data : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/notification/AINotification;->mINotificationCallback:Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/notification/INotificationCallback;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/notification/AINotification;->mINotificationCallback:Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/notification/INotificationCallback;

    invoke-interface {v0, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/notification/INotificationCallback;->onMessageClick(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public send(Ljava/lang/String;)V
    .locals 3

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send message : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AINotification"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "string_msg"

    .line 40
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/notification/AINotification;->mIIpcService:Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService;

    const-string v1, "com.xiaopeng.message.center"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2719

    invoke-interface {p1, v2, v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService;->sendData(ILandroid/os/Bundle;[Ljava/lang/String;)V

    return-void
.end method

.method public setOnNotificationCallback(Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/notification/INotificationCallback;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/notification/AINotification;->mINotificationCallback:Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/notification/INotificationCallback;

    return-void
.end method
