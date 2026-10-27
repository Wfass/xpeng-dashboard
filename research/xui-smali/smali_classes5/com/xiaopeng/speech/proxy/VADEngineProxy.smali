.class public Lcom/xiaopeng/speech/proxy/VADEngineProxy;
.super Lcom/xiaopeng/speech/coreapi/IVADEngine$Stub;
.source "VADEngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;


# instance fields
.field private mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/speech/common/util/IPCRunner<",
            "Lcom/xiaopeng/speech/coreapi/IVADEngine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Lcom/xiaopeng/speech/coreapi/IVADEngine$Stub;-><init>()V

    .line 17
    new-instance v0, Lcom/xiaopeng/speech/common/util/IPCRunner;

    const-string v1, "VADEngineProxy"

    invoke-direct {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/proxy/VADEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    .line 20
    return-void
.end method


# virtual methods
.method public destory()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/VADEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/VADEngineProxy$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/VADEngineProxy$3;-><init>(Lcom/xiaopeng/speech/proxy/VADEngineProxy;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 67
    return-void
.end method

.method public onConnect(Lcom/xiaopeng/speech/ISpeechEngine;)V
    .locals 2
    .param p1, "speechEngine"    # Lcom/xiaopeng/speech/ISpeechEngine;

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/VADEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    invoke-interface {p1}, Lcom/xiaopeng/speech/ISpeechEngine;->getVadEngine()Lcom/xiaopeng/speech/coreapi/IVADEngine;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->setProxy(Ljava/lang/Object;)V

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/VADEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/IPCRunner;->fetchAll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "onConnect exception "

    invoke-static {p0, v1, v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public onDisconnect()V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/VADEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->setProxy(Ljava/lang/Object;)V

    .line 36
    return-void
.end method

.method public setHandler(Lcom/xiaopeng/speech/common/util/WorkerHandler;)V
    .locals 1
    .param p1, "workerHandler"    # Lcom/xiaopeng/speech/common/util/WorkerHandler;

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/VADEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->setWorkerHandler(Lcom/xiaopeng/speech/common/util/WorkerHandler;)V

    .line 70
    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 2
    .param p1, "from"    # Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/VADEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/VADEngineProxy$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/VADEngineProxy$1;-><init>(Lcom/xiaopeng/speech/proxy/VADEngineProxy;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method public stop()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/VADEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/VADEngineProxy$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/VADEngineProxy$2;-><init>(Lcom/xiaopeng/speech/proxy/VADEngineProxy;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 57
    return-void
.end method
