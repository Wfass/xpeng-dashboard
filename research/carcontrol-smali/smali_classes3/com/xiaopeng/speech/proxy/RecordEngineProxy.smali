.class public Lcom/xiaopeng/speech/proxy/RecordEngineProxy;
.super Lcom/xiaopeng/speech/coreapi/IRecordEngine$Stub;
.source "RecordEngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;


# instance fields
.field private mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/speech/common/util/IPCRunner<",
            "Lcom/xiaopeng/speech/coreapi/IRecordEngine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Lcom/xiaopeng/speech/coreapi/IRecordEngine$Stub;-><init>()V

    .line 18
    new-instance v0, Lcom/xiaopeng/speech/common/util/IPCRunner;

    const-string v1, "RecordEngineProxy"

    invoke-direct {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/proxy/RecordEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    return-void
.end method


# virtual methods
.method public asr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/RecordEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/RecordEngineProxy$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/proxy/RecordEngineProxy$3;-><init>(Lcom/xiaopeng/speech/proxy/RecordEngineProxy;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public onConnect(Lcom/xiaopeng/speech/ISpeechEngine;)V
    .locals 1

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/RecordEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    invoke-interface {p1}, Lcom/xiaopeng/speech/ISpeechEngine;->getRecordEngine()Lcom/xiaopeng/speech/coreapi/IRecordEngine;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->setProxy(Ljava/lang/Object;)V

    .line 31
    iget-object p1, p0, Lcom/xiaopeng/speech/proxy/RecordEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->fetchAll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "onConnect exception "

    .line 33
    invoke-static {p0, v0, p1}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onDisconnect()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/RecordEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->setProxy(Ljava/lang/Object;)V

    return-void
.end method

.method public pcm2Amr(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/RecordEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/RecordEngineProxy$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/speech/proxy/RecordEngineProxy$4;-><init>(Lcom/xiaopeng/speech/proxy/RecordEngineProxy;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p1, 0x0

    .line 82
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 77
    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public setHandler(Lcom/xiaopeng/speech/common/util/WorkerHandler;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/RecordEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->setWorkerHandler(Lcom/xiaopeng/speech/common/util/WorkerHandler;)V

    return-void
.end method

.method public startRecord(Ljava/lang/String;II)V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/RecordEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/RecordEngineProxy$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/speech/proxy/RecordEngineProxy$1;-><init>(Lcom/xiaopeng/speech/proxy/RecordEngineProxy;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public stopRecord()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/RecordEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/RecordEngineProxy$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/RecordEngineProxy$2;-><init>(Lcom/xiaopeng/speech/proxy/RecordEngineProxy;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method
