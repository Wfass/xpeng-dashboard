.class public Lcom/xiaopeng/lib/framework/aiassistantmodule/interactive/InteractiveMsgService;
.super Ljava/lang/Object;
.source "InteractiveMsgService.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/IInteractiveMsgService;


# static fields
.field private static final TAG:Ljava/lang/String; = "InteractiveMsgService"


# instance fields
.field private mIpcService:Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-class v0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcModuleEntry;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService;

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/interactive/InteractiveMsgService;->mIpcService:Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService;

    .line 31
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/lib/framework/aiassistantmodule/interactive/InteractiveMsgService;)Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/interactive/InteractiveMsgService;->mIpcService:Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 99
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/lib/framework/aiassistantmodule/interactive/InteractiveMsgService;->sendMessage(ILjava/lang/String;)V

    return-void
.end method

.method public interactiveMsgBuilder()Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/IInteractiveMsgBuilder;
    .locals 1

    .line 104
    new-instance v0, Lcom/xiaopeng/lib/framework/aiassistantmodule/interactive/InteractiveMsgBuilder;

    invoke-direct {v0}, Lcom/xiaopeng/lib/framework/aiassistantmodule/interactive/InteractiveMsgBuilder;-><init>()V

    return-object v0
.end method

.method public onEvent(Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService$IpcMessageEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_2

    .line 37
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService$IpcMessageEvent;->getMsgID()I

    move-result v0

    const/16 v1, 0x2b04

    if-ne v0, v1, :cond_2

    .line 38
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService$IpcMessageEvent;->getSenderPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xiaopeng.aiassistant"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService$IpcMessageEvent;->getPayloadData()Landroid/os/Bundle;

    move-result-object p1

    .line 42
    invoke-static {p1}, Lcom/xiaopeng/lib/framework/aiassistantmodule/interactive/InteractiveMsg;->from(Landroid/os/Bundle;)Lcom/xiaopeng/lib/framework/aiassistantmodule/interactive/InteractiveMsg;

    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/aiassistantmodule/interactive/InteractiveMsg;->getMsgId()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 55
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/aiassistantmodule/interactive/InteractiveMsg;->getMsgId()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_2

    .line 56
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/IInteractiveMsgService$InteractiveMsgEvent;

    invoke-direct {v1, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/IInteractiveMsgService$InteractiveMsgEvent;-><init>(Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/IInteractiveMsg;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 46
    :cond_1
    :try_start_0
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/aiassistantmodule/interactive/InteractiveMsg;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string v0, "id"

    .line 47
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "endState"

    .line 48
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p1

    .line 49
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/IInteractiveMsgService$SpeakEndEvent;

    invoke-direct {v2, v0, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/IInteractiveMsgService$SpeakEndEvent;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "InteractiveMsgService"

    const-string v1, "onEvent"

    .line 51
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public sendMessage(ILjava/lang/String;)V
    .locals 2

    .line 63
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "data"

    .line 64
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "msgId"

    .line 65
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 66
    new-instance p1, Lcom/xiaopeng/lib/framework/aiassistantmodule/interactive/InteractiveMsgService$1;

    invoke-direct {p1, p0, v0}, Lcom/xiaopeng/lib/framework/aiassistantmodule/interactive/InteractiveMsgService$1;-><init>(Lcom/xiaopeng/lib/framework/aiassistantmodule/interactive/InteractiveMsgService;Landroid/os/Bundle;)V

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendMessage(Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/IInteractiveMsg;)V
    .locals 4

    .line 76
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/IInteractiveMsg;->getMsgId()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 79
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/IInteractiveMsg;->getMsgId()I

    move-result v0

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/IInteractiveMsg;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/lib/framework/aiassistantmodule/interactive/InteractiveMsgService;->sendMessage(ILjava/lang/String;)V

    return-void

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MsgId is illegal. ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/IInteractiveMsg;->getMsgId()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ") is not >= "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shutup(Ljava/lang/String;)V
    .locals 2

    .line 92
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "id"

    .line 93
    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/lib/framework/aiassistantmodule/interactive/InteractiveMsgService;->sendMessage(ILjava/lang/String;)V

    return-void
.end method

.method public speak(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 84
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "text"

    .line 85
    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "id"

    .line 86
    invoke-virtual {v0, p1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/lib/framework/aiassistantmodule/interactive/InteractiveMsgService;->sendMessage(ILjava/lang/String;)V

    return-void
.end method
