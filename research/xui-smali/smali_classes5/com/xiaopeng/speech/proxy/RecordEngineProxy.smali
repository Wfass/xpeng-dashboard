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

    .line 21
    return-void
.end method


# virtual methods
.method public asr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/RecordEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/RecordEngineProxy$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/proxy/RecordEngineProxy$3;-><init>(Lcom/xiaopeng/speech/proxy/RecordEngineProxy;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method public onConnect(Lcom/xiaopeng/speech/ISpeechEngine;)V
    .locals 2
    .param p1, "speechEngine"    # Lcom/xiaopeng/speech/ISpeechEngine;

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/RecordEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    invoke-interface {p1}, Lcom/xiaopeng/speech/ISpeechEngine;->getRecordEngine()Lcom/xiaopeng/speech/coreapi/IRecordEngine;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->setProxy(Ljava/lang/Object;)V

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/RecordEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/IPCRunner;->fetchAll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "onConnect exception "

    invoke-static {p0, v1, v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public onDisconnect()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/RecordEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->setProxy(Ljava/lang/Object;)V

    .line 40
    return-void
.end method

.method public pcm2Amr(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "srcFilePath"    # Ljava/lang/String;
    .param p2, "dstFileName"    # Ljava/lang/String;
    .param p3, "deleteFileAfterSuc"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/RecordEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/RecordEngineProxy$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/speech/proxy/RecordEngineProxy$4;-><init>(Lcom/xiaopeng/speech/proxy/RecordEngineProxy;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 82
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 77
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setHandler(Lcom/xiaopeng/speech/common/util/WorkerHandler;)V
    .locals 1
    .param p1, "workerHandler"    # Lcom/xiaopeng/speech/common/util/WorkerHandler;

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/RecordEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->setWorkerHandler(Lcom/xiaopeng/speech/common/util/WorkerHandler;)V

    .line 25
    return-void
.end method

.method public startRecord(Ljava/lang/String;II)V
    .locals 2
    .param p1, "dstFilePath"    # Ljava/lang/String;
    .param p2, "maxLengthMs"    # I
    .param p3, "eosTimeout"    # I

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/RecordEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/RecordEngineProxy$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/speech/proxy/RecordEngineProxy$1;-><init>(Lcom/xiaopeng/speech/proxy/RecordEngineProxy;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 51
    return-void
.end method

.method public stopRecord()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/RecordEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/RecordEngineProxy$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/RecordEngineProxy$2;-><init>(Lcom/xiaopeng/speech/proxy/RecordEngineProxy;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 62
    return-void
.end method
