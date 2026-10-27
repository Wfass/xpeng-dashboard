.class public Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;
.super Lcom/xiaopeng/speech/IQueryInjector$Stub;
.source "QueryInjectorProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;


# instance fields
.field private mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/speech/common/util/IPCRunner<",
            "Lcom/xiaopeng/speech/IQueryInjector;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkerHandler:Lcom/xiaopeng/speech/common/util/WorkerHandler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Lcom/xiaopeng/speech/IQueryInjector$Stub;-><init>()V

    .line 14
    new-instance v0, Lcom/xiaopeng/speech/common/util/IPCRunner;

    const-string v1, "QueryInjectorProxy"

    invoke-direct {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    return-void
.end method


# virtual methods
.method public isQueryInject(Ljava/lang/String;)Z
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy$4;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy$4;-><init>(Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 96
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 85
    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public onConnect(Lcom/xiaopeng/speech/ISpeechEngine;)V
    .locals 1

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    invoke-interface {p1}, Lcom/xiaopeng/speech/ISpeechEngine;->getQueryInjector()Lcom/xiaopeng/speech/IQueryInjector;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->setProxy(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onDisconnect()V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->setProxy(Ljava/lang/Object;)V

    return-void
.end method

.method public queryApiRouterData(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/common/bean/Value;
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy$5;-><init>(Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/xiaopeng/speech/common/bean/Value;->VOID:Lcom/xiaopeng/speech/common/bean/Value;

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/speech/common/bean/Value;

    return-object p1
.end method

.method public queryData(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/common/bean/Value;
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy$3;-><init>(Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/xiaopeng/speech/common/bean/Value;->VOID:Lcom/xiaopeng/speech/common/bean/Value;

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/speech/common/bean/Value;

    return-object p1
.end method

.method public registerDataSensor([Ljava/lang/String;Lcom/xiaopeng/speech/IRemoteDataSensor;)V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy$1;-><init>(Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;[Ljava/lang/String;Lcom/xiaopeng/speech/IRemoteDataSensor;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public setHandler(Lcom/xiaopeng/speech/common/util/WorkerHandler;)V
    .locals 1

    .line 32
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;->mWorkerHandler:Lcom/xiaopeng/speech/common/util/WorkerHandler;

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->setWorkerHandler(Lcom/xiaopeng/speech/common/util/WorkerHandler;)V

    return-void
.end method

.method public unRegisterDataSensor([Ljava/lang/String;)V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy$2;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy$2;-><init>(Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method
