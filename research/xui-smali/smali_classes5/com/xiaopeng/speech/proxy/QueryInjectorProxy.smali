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
    .locals 3
    .param p1, "event"    # Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy$4;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy$4;-><init>(Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;Ljava/lang/String;)V

    .line 96
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 85
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

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    invoke-interface {p1}, Lcom/xiaopeng/speech/ISpeechEngine;->getQueryInjector()Lcom/xiaopeng/speech/IQueryInjector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->setProxy(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 24
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public onDisconnect()V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->setProxy(Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public queryApiRouterData(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/common/bean/Value;
    .locals 3
    .param p1, "dataApi"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy$5;-><init>(Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/xiaopeng/speech/common/bean/Value;->VOID:Lcom/xiaopeng/speech/common/bean/Value;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/common/bean/Value;

    return-object v0
.end method

.method public queryData(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/common/bean/Value;
    .locals 3
    .param p1, "dataApi"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy$3;-><init>(Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/xiaopeng/speech/common/bean/Value;->VOID:Lcom/xiaopeng/speech/common/bean/Value;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/common/bean/Value;

    return-object v0
.end method

.method public registerDataSensor([Ljava/lang/String;Lcom/xiaopeng/speech/IRemoteDataSensor;)V
    .locals 2
    .param p1, "command"    # [Ljava/lang/String;
    .param p2, "query"    # Lcom/xiaopeng/speech/IRemoteDataSensor;

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy$1;-><init>(Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;[Ljava/lang/String;Lcom/xiaopeng/speech/IRemoteDataSensor;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method public setHandler(Lcom/xiaopeng/speech/common/util/WorkerHandler;)V
    .locals 2
    .param p1, "workerHandler"    # Lcom/xiaopeng/speech/common/util/WorkerHandler;

    .line 32
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;->mWorkerHandler:Lcom/xiaopeng/speech/common/util/WorkerHandler;

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    iget-object v1, p0, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;->mWorkerHandler:Lcom/xiaopeng/speech/common/util/WorkerHandler;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->setWorkerHandler(Lcom/xiaopeng/speech/common/util/WorkerHandler;)V

    .line 34
    return-void
.end method

.method public unRegisterDataSensor([Ljava/lang/String;)V
    .locals 2
    .param p1, "command"    # [Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy$2;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy$2;-><init>(Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 64
    return-void
.end method
