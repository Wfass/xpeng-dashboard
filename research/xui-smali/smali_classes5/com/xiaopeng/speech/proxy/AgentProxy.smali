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
    const-string v0, "AgentProxy"

    iput-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->TAG:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public feedbackResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AgentProxy$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/proxy/AgentProxy$4;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 88
    return-void
.end method

.method public getConfigData(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 308
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AgentProxy$22;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/AgentProxy$22;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getConfigDataSync(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 465
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->agent:Lcom/xiaopeng/speech/coreapi/IAgent;

    invoke-interface {v0, p1}, Lcom/xiaopeng/speech/coreapi/IAgent;->getConfigDataSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 469
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0
.end method

.method public getMessageBoxData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 349
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AgentProxy$26;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/proxy/AgentProxy$26;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRecommendData(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .line 277
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AgentProxy$19;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/AgentProxy$19;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSkillData(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .line 287
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AgentProxy$20;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/AgentProxy$20;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isDefaultEnableASRInterrupt()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AgentProxy$12;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/AgentProxy$12;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;)V

    .line 185
    const/4 v2, 0x0

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

    .line 221
    const/4 v2, 0x0

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

    .line 160
    const/4 v2, 0x0

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
    .locals 4

    .line 263
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->agent:Lcom/xiaopeng/speech/coreapi/IAgent;

    .line 264
    .local v0, "agent":Lcom/xiaopeng/speech/coreapi/IAgent;
    if-eqz v0, :cond_0

    .line 266
    :try_start_0
    invoke-interface {v0}, Lcom/xiaopeng/speech/coreapi/IAgent;->isWheelVoiceButtonEnable()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 267
    :catch_0
    move-exception v1

    .line 268
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "AgentProxy"

    const-string v3, "remote error: "

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 272
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public leaveTrigger()V
    .locals 1

    .line 437
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->agent:Lcom/xiaopeng/speech/coreapi/IAgent;

    invoke-interface {v0}, Lcom/xiaopeng/speech/coreapi/IAgent;->leaveTrigger()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    goto :goto_0

    .line 438
    :catch_0
    move-exception v0

    .line 439
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 441
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public leaveTriggerWithID(I)V
    .locals 1
    .param p1, "triggerID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 445
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->agent:Lcom/xiaopeng/speech/coreapi/IAgent;

    invoke-interface {v0, p1}, Lcom/xiaopeng/speech/coreapi/IAgent;->leaveTriggerWithID(I)V

    .line 446
    return-void
.end method

.method public newTriggerDialog(I[ILjava/lang/String;)I
    .locals 1
    .param p1, "triggerID"    # I
    .param p2, "soundArea"    # [I
    .param p3, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 450
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->agent:Lcom/xiaopeng/speech/coreapi/IAgent;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/speech/coreapi/IAgent;->newTriggerDialog(I[ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onConnect(Lcom/xiaopeng/speech/ISpeechEngine;)V
    .locals 2
    .param p1, "speechEngine"    # Lcom/xiaopeng/speech/ISpeechEngine;

    .line 31
    :try_start_0
    invoke-interface {p1}, Lcom/xiaopeng/speech/ISpeechEngine;->getAgent()Lcom/xiaopeng/speech/coreapi/IAgent;

    move-result-object v0

    .line 32
    .local v0, "agent":Lcom/xiaopeng/speech/coreapi/IAgent;
    iput-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->agent:Lcom/xiaopeng/speech/coreapi/IAgent;

    .line 33
    iget-object v1, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/speech/common/util/IPCRunner;->setProxy(Ljava/lang/Object;)V

    .line 34
    iget-object v1, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->fetchAll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .end local v0    # "agent":Lcom/xiaopeng/speech/coreapi/IAgent;
    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "onConnect exception "

    invoke-static {p0, v1, v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public onDisconnect()V
    .locals 2

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->agent:Lcom/xiaopeng/speech/coreapi/IAgent;

    .line 43
    iget-object v1, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/speech/common/util/IPCRunner;->setProxy(Ljava/lang/Object;)V

    .line 44
    return-void
.end method

.method public sendApiRoute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 338
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AgentProxy$25;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/proxy/AgentProxy$25;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 345
    return-void
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AgentProxy$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/proxy/AgentProxy$3;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public sendInfoFlowCardState(Ljava/lang/String;I)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "state"    # I

    .line 372
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AgentProxy$28;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/proxy/AgentProxy$28;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 379
    return-void
.end method

.method public sendInfoFlowStatData(ILjava/lang/String;)V
    .locals 2
    .param p1, "eventId"    # I
    .param p2, "data"    # Ljava/lang/String;

    .line 328
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AgentProxy$24;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/proxy/AgentProxy$24;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 335
    return-void
.end method

.method public sendSceneData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "appVersion"    # Ljava/lang/String;
    .param p4, "sceneData"    # Ljava/lang/String;
    .param p5, "type"    # Ljava/lang/String;

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

    .line 369
    return-void
.end method

.method public sendScript(Ljava/lang/String;)V
    .locals 2
    .param p1, "script"    # Ljava/lang/String;

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AgentProxy$11;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/AgentProxy$11;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 172
    return-void
.end method

.method public sendText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AgentProxy$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/AgentProxy$1;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method public sendTextWithSoundArea(Ljava/lang/String;I)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "soundArea"    # I

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AgentProxy$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/proxy/AgentProxy$2;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method public sendThirdCMD(Ljava/lang/String;)V
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AgentProxy$16;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/AgentProxy$16;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 237
    return-void
.end method

.method public sendUIEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AgentProxy$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/proxy/AgentProxy$8;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 132
    return-void
.end method

.method public setASRInterruptEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AgentProxy$9;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/AgentProxy$9;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 147
    return-void
.end method

.method public setConfigData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 317
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AgentProxy$23;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/proxy/AgentProxy$23;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 324
    return-void
.end method

.method public setConfigDataSync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 456
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->agent:Lcom/xiaopeng/speech/coreapi/IAgent;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/speech/coreapi/IAgent;->setConfigDataSync(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    goto :goto_0

    .line 457
    :catch_0
    move-exception v0

    .line 458
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 460
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setConfigDataWithCallback(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/speech/coreapi/ISpeechConfigCallback;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/xiaopeng/speech/coreapi/ISpeechConfigCallback;
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

    .line 423
    return-void
.end method

.method public setDefaultASRInterruptEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AgentProxy$13;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/AgentProxy$13;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 201
    return-void
.end method

.method public setDefaultWelcomeEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AgentProxy$14;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/AgentProxy$14;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 212
    return-void
.end method

.method public setHandler(Lcom/xiaopeng/speech/common/util/WorkerHandler;)V
    .locals 1
    .param p1, "workerHandler"    # Lcom/xiaopeng/speech/common/util/WorkerHandler;

    .line 225
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->setWorkerHandler(Lcom/xiaopeng/speech/common/util/WorkerHandler;)V

    .line 226
    return-void
.end method

.method public setSkillData(Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .line 297
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AgentProxy$21;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/AgentProxy$21;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 304
    return-void
.end method

.method public setUseWheelVoiceButton(Landroid/os/IBinder;Z)V
    .locals 2
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "useVoiceButton"    # Z

    .line 252
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AgentProxy$18;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/proxy/AgentProxy$18;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Landroid/os/IBinder;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 259
    return-void
.end method

.method public triggerDialog(I[ILjava/lang/String;)V
    .locals 1
    .param p1, "triggerID"    # I
    .param p2, "soundArea"    # [I
    .param p3, "data"    # Ljava/lang/String;

    .line 428
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->agent:Lcom/xiaopeng/speech/coreapi/IAgent;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/speech/coreapi/IAgent;->triggerDialog(I[ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    goto :goto_0

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 432
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public triggerEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 241
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AgentProxy$17;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/proxy/AgentProxy$17;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 248
    return-void
.end method

.method public triggerIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "skill"    # Ljava/lang/String;
    .param p2, "task"    # Ljava/lang/String;
    .param p3, "intent"    # Ljava/lang/String;
    .param p4, "slots"    # Ljava/lang/String;

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

    .line 110
    return-void
.end method

.method public triggerIntentWithBinder(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "skill"    # Ljava/lang/String;
    .param p3, "task"    # Ljava/lang/String;
    .param p4, "intent"    # Ljava/lang/String;
    .param p5, "slots"    # Ljava/lang/String;

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

    .line 412
    return-void
.end method

.method public updateDeviceInfo(Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceJson"    # Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AgentProxy$5;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/AgentProxy$5;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 99
    return-void
.end method

.method public updateVocab(Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 2
    .param p1, "vocabName"    # Ljava/lang/String;
    .param p2, "contents"    # [Ljava/lang/String;
    .param p3, "addOrDelete"    # Z

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AgentProxy$7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/speech/proxy/AgentProxy$7;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Ljava/lang/String;[Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 121
    return-void
.end method

.method public uploadContact(Ljava/lang/String;Lcom/xiaopeng/speech/common/bean/SliceData;I)V
    .locals 2
    .param p1, "vocabName"    # Ljava/lang/String;
    .param p2, "contents"    # Lcom/xiaopeng/speech/common/bean/SliceData;
    .param p3, "operation"    # I

    .line 394
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AgentProxy$30;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/speech/proxy/AgentProxy$30;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Ljava/lang/String;Lcom/xiaopeng/speech/common/bean/SliceData;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 401
    return-void
.end method

.method public uploadContacts(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "vocabName"    # Ljava/lang/String;
    .param p2, "contents"    # Ljava/lang/String;
    .param p3, "operation"    # I

    .line 383
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AgentProxy$29;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/speech/proxy/AgentProxy$29;-><init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 390
    return-void
.end method
