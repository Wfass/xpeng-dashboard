.class public Lcom/xiaopeng/speech/proxy/ASREngineProxy;
.super Lcom/xiaopeng/speech/coreapi/IASREngine$Stub;
.source "ASREngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;


# instance fields
.field private mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/speech/common/util/IPCRunner<",
            "Lcom/xiaopeng/speech/coreapi/IASREngine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Lcom/xiaopeng/speech/coreapi/IASREngine$Stub;-><init>()V

    .line 18
    new-instance v0, Lcom/xiaopeng/speech/common/util/IPCRunner;

    const-string v1, "ASREngineProxy"

    invoke-direct {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/proxy/ASREngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    return-void
.end method


# virtual methods
.method public cancelListen()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/ASREngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/ASREngineProxy$7;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/ASREngineProxy$7;-><init>(Lcom/xiaopeng/speech/proxy/ASREngineProxy;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public isDefaultEnableASRInterrupt()Z
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/ASREngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/ASREngineProxy$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/ASREngineProxy$3;-><init>(Lcom/xiaopeng/speech/proxy/ASREngineProxy;)V

    const/4 v2, 0x0

    .line 67
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 62
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isEnableASRInterrupt()Z
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/ASREngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/ASREngineProxy$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/ASREngineProxy$2;-><init>(Lcom/xiaopeng/speech/proxy/ASREngineProxy;)V

    const/4 v2, 0x0

    .line 57
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 52
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public onConnect(Lcom/xiaopeng/speech/ISpeechEngine;)V
    .locals 1

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/ASREngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    invoke-interface {p1}, Lcom/xiaopeng/speech/ISpeechEngine;->getASREngine()Lcom/xiaopeng/speech/coreapi/IASREngine;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->setProxy(Ljava/lang/Object;)V

    .line 28
    iget-object p1, p0, Lcom/xiaopeng/speech/proxy/ASREngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->fetchAll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "onConnect exception "

    .line 30
    invoke-static {p0, v0, p1}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onDisconnect()V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/ASREngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->setProxy(Ljava/lang/Object;)V

    return-void
.end method

.method public setASRInterruptEnabled(Z)V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/ASREngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/ASREngineProxy$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/ASREngineProxy$1;-><init>(Lcom/xiaopeng/speech/proxy/ASREngineProxy;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public setDefaultASRInterruptEnabled(Z)V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/ASREngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/ASREngineProxy$4;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/ASREngineProxy$4;-><init>(Lcom/xiaopeng/speech/proxy/ASREngineProxy;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public setHandler(Lcom/xiaopeng/speech/common/util/WorkerHandler;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/ASREngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->setWorkerHandler(Lcom/xiaopeng/speech/common/util/WorkerHandler;)V

    return-void
.end method

.method public setVadPauseTime(J)V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/ASREngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/ASREngineProxy$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/proxy/ASREngineProxy$9;-><init>(Lcom/xiaopeng/speech/proxy/ASREngineProxy;J)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public setVadTimeout(J)V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/ASREngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/ASREngineProxy$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/proxy/ASREngineProxy$8;-><init>(Lcom/xiaopeng/speech/proxy/ASREngineProxy;J)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public startListen()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/ASREngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/ASREngineProxy$5;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/ASREngineProxy$5;-><init>(Lcom/xiaopeng/speech/proxy/ASREngineProxy;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public stopListen()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/ASREngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/ASREngineProxy$6;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/ASREngineProxy$6;-><init>(Lcom/xiaopeng/speech/proxy/ASREngineProxy;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method
