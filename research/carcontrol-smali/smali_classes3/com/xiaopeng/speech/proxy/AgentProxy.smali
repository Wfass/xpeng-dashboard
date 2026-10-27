.class public Lcom/xiaopeng/speech/proxy/AgentProxy;
.super Lcom/xiaopeng/speech/coreapi/IAgent$Stub;
.source "AgentProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private volatile agent:Lcom/xiaopeng/speech/coreapi/IAgent;

.field private mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/speech/common/util/IPCRunner<",
            "Lcom/xiaopeng/speech/coreapi/IAgent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;-><init>()V

    .line 20
    new-instance v0, Lcom/xiaopeng/speech/common/util/IPCRunner;

    const-string v1, "AgentProxy"

    invoke-direct {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    .line 22
    iput-object v1, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public feedbackResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AgentProxy$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/proxy/AgentProxy$4;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public getConfigData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AgentProxy$22;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/AgentProxy$22;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Ljava/lang/String;)V

    const-string p1, ""

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getConfigDataSync(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 465
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->agent:Lcom/xiaopeng/speech/coreapi/IAgent;

    invoke-interface {v0, p1}, Lcom/xiaopeng/speech/coreapi/IAgent;->getConfigDataSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 467
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, ""

    return-object p1
.end method

.method public getMessageBoxData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AgentProxy$26;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/proxy/AgentProxy$26;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getRecommendData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AgentProxy$19;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/AgentProxy$19;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Ljava/lang/String;)V

    const-string p1, ""

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getSkillData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AgentProxy$20;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/AgentProxy$20;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Ljava/lang/String;)V

    const-string p1, ""

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public isDefaultEnableASRInterrupt()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AgentProxy$12;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/AgentProxy$12;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;)V

    const/4 v2, 0x0

    .line 185
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 180
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isDefaultEnableWelcome()Z
    .locals 3

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AgentProxy$15;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/AgentProxy$15;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;)V

    const/4 v2, 0x0

    .line 221
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 216
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isEnableASRInterrupt()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AgentProxy$10;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/AgentProxy$10;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;)V

    const/4 v2, 0x0

    .line 160
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 155
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isWheelVoiceButtonEnable()Z
    .locals 3

    .line 263
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->agent:Lcom/xiaopeng/speech/coreapi/IAgent;

    if-eqz v0, :cond_0

    .line 266
    :try_start_0
    invoke-interface {v0}, Lcom/xiaopeng/speech/coreapi/IAgent;->isWheelVoiceButtonEnable()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    const-string v1, "AgentProxy"

    const-string v2, "remote error: "

    .line 268
    invoke-static {v1, v2, v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public leaveTrigger()V
    .locals 1

    .line 437
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->agent:Lcom/xiaopeng/speech/coreapi/IAgent;

    invoke-interface {v0}, Lcom/xiaopeng/speech/coreapi/IAgent;->leaveTrigger()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 439
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public leaveTriggerWithID(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 445
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->agent:Lcom/xiaopeng/speech/coreapi/IAgent;

    invoke-interface {v0, p1}, Lcom/xiaopeng/speech/coreapi/IAgent;->leaveTriggerWithID(I)V

    return-void
.end method

.method public newTriggerDialog(I[ILjava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 450
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->agent:Lcom/xiaopeng/speech/coreapi/IAgent;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/speech/coreapi/IAgent;->newTriggerDialog(I[ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public onConnect(Lcom/xiaopeng/speech/ISpeechEngine;)V
    .locals 1

    .line 31
    :try_start_0
    invoke-interface {p1}, Lcom/xiaopeng/speech/ISpeechEngine;->getAgent()Lcom/xiaopeng/speech/coreapi/IAgent;

    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->agent:Lcom/xiaopeng/speech/coreapi/IAgent;

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->setProxy(Ljava/lang/Object;)V

    .line 34
    iget-object p1, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->fetchAll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "onConnect exception "

    .line 36
    invoke-static {p0, v0, p1}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onDisconnect()V
    .locals 2

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->agent:Lcom/xiaopeng/speech/coreapi/IAgent;

    .line 43
    iget-object v1, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/speech/common/util/IPCRunner;->setProxy(Ljava/lang/Object;)V

    return-void
.end method

.method public sendApiRoute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AgentProxy$25;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/proxy/AgentProxy$25;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AgentProxy$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/proxy/AgentProxy$3;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public sendInfoFlowCardState(Ljava/lang/String;I)V
    .locals 2

    .line 372
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AgentProxy$28;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/proxy/AgentProxy$28;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public sendInfoFlowStatData(ILjava/lang/String;)V
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AgentProxy$24;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/proxy/AgentProxy$24;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public sendSceneData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 362
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v8, Lcom/xiaopeng/speech/proxy/AgentProxy$27;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/xiaopeng/speech/proxy/AgentProxy$27;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public sendScript(Ljava/lang/String;)V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AgentProxy$11;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/AgentProxy$11;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public sendText(Ljava/lang/String;)V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AgentProxy$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/AgentProxy$1;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public sendTextWithSoundArea(Ljava/lang/String;I)V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AgentProxy$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/proxy/AgentProxy$2;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public sendThirdCMD(Ljava/lang/String;)V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AgentProxy$16;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/AgentProxy$16;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public sendUIEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AgentProxy$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/proxy/AgentProxy$8;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public setASRInterruptEnabled(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AgentProxy$9;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/AgentProxy$9;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public setConfigData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AgentProxy$23;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/proxy/AgentProxy$23;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public setConfigDataSync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 456
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->agent:Lcom/xiaopeng/speech/coreapi/IAgent;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/speech/coreapi/IAgent;->setConfigDataSync(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 458
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setConfigDataWithCallback(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/speech/coreapi/ISpeechConfigCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 416
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AgentProxy$32;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/speech/proxy/AgentProxy$32;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/speech/coreapi/ISpeechConfigCallback;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public setDefaultASRInterruptEnabled(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AgentProxy$13;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/AgentProxy$13;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public setDefaultWelcomeEnabled(Z)V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AgentProxy$14;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/AgentProxy$14;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public setHandler(Lcom/xiaopeng/speech/common/util/WorkerHandler;)V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->setWorkerHandler(Lcom/xiaopeng/speech/common/util/WorkerHandler;)V

    return-void
.end method

.method public setSkillData(Ljava/lang/String;)V
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AgentProxy$21;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/AgentProxy$21;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public setUseWheelVoiceButton(Landroid/os/IBinder;Z)V
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AgentProxy$18;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/proxy/AgentProxy$18;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Landroid/os/IBinder;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public triggerDialog(I[ILjava/lang/String;)V
    .locals 1

    .line 428
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->agent:Lcom/xiaopeng/speech/coreapi/IAgent;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/speech/coreapi/IAgent;->triggerDialog(I[ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 430
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public triggerEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AgentProxy$17;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/proxy/AgentProxy$17;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public triggerIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v7, Lcom/xiaopeng/speech/proxy/AgentProxy$6;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/speech/proxy/AgentProxy$6;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public triggerIntentWithBinder(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 405
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v8, Lcom/xiaopeng/speech/proxy/AgentProxy$31;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/xiaopeng/speech/proxy/AgentProxy$31;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public updateDeviceInfo(Ljava/lang/String;)V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AgentProxy$5;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/AgentProxy$5;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public updateVocab(Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AgentProxy$7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/speech/proxy/AgentProxy$7;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Ljava/lang/String;[Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public uploadContact(Ljava/lang/String;Lcom/xiaopeng/speech/common/bean/SliceData;I)V
    .locals 2

    .line 394
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AgentProxy$30;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/speech/proxy/AgentProxy$30;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Ljava/lang/String;Lcom/xiaopeng/speech/common/bean/SliceData;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public uploadContacts(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AgentProxy$29;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/speech/proxy/AgentProxy$29;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method
