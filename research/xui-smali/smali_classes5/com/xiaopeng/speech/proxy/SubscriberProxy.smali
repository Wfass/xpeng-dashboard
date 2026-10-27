.class public Lcom/xiaopeng/speech/proxy/SubscriberProxy;
.super Lcom/xiaopeng/speech/coreapi/ISubscriber$Stub;
.source "SubscriberProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;


# instance fields
.field private mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/speech/common/util/IPCRunner<",
            "Lcom/xiaopeng/speech/coreapi/ISubscriber;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Lcom/xiaopeng/speech/coreapi/ISubscriber$Stub;-><init>()V

    .line 18
    new-instance v0, Lcom/xiaopeng/speech/common/util/IPCRunner;

    const-string v1, "SubscriberProxy"

    invoke-direct {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/proxy/SubscriberProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    return-void
.end method


# virtual methods
.method public isSubscribed(Ljava/lang/String;)Z
    .locals 3
    .param p1, "event"    # Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SubscriberProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/SubscriberProxy$3;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/SubscriberProxy$3;-><init>(Lcom/xiaopeng/speech/proxy/SubscriberProxy;Ljava/lang/String;)V

    .line 64
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 59
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public onConnect(Lcom/xiaopeng/speech/ISpeechEngine;)V
    .locals 2
    .param p1, "speechEngine"    # Lcom/xiaopeng/speech/ISpeechEngine;

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SubscriberProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    invoke-interface {p1}, Lcom/xiaopeng/speech/ISpeechEngine;->getSubscriber()Lcom/xiaopeng/speech/coreapi/ISubscriber;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->setProxy(Ljava/lang/Object;)V

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SubscriberProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/IPCRunner;->fetchAll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "onConnect exception "

    invoke-static {p0, v1, v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public onDisconnect()V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SubscriberProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->setProxy(Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method public setHandler(Lcom/xiaopeng/speech/common/util/WorkerHandler;)V
    .locals 1
    .param p1, "workerHandler"    # Lcom/xiaopeng/speech/common/util/WorkerHandler;

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SubscriberProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->setWorkerHandler(Lcom/xiaopeng/speech/common/util/WorkerHandler;)V

    .line 69
    return-void
.end method

.method public subscribe([Ljava/lang/String;Lcom/xiaopeng/speech/coreapi/IEventObserver;)V
    .locals 2
    .param p1, "command"    # [Ljava/lang/String;
    .param p2, "eventObserver"    # Lcom/xiaopeng/speech/coreapi/IEventObserver;

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SubscriberProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/SubscriberProxy$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/proxy/SubscriberProxy$1;-><init>(Lcom/xiaopeng/speech/proxy/SubscriberProxy;[Ljava/lang/String;Lcom/xiaopeng/speech/coreapi/IEventObserver;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 44
    return-void
.end method

.method public unSubscribe(Lcom/xiaopeng/speech/coreapi/IEventObserver;)V
    .locals 2
    .param p1, "eventObserver"    # Lcom/xiaopeng/speech/coreapi/IEventObserver;

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SubscriberProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/SubscriberProxy$2;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/SubscriberProxy$2;-><init>(Lcom/xiaopeng/speech/proxy/SubscriberProxy;Lcom/xiaopeng/speech/coreapi/IEventObserver;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 55
    return-void
.end method
