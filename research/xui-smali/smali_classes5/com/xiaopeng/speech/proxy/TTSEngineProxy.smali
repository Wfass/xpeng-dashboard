.class public Lcom/xiaopeng/speech/proxy/TTSEngineProxy;
.super Lcom/xiaopeng/speech/coreapi/ITTSEngine$Stub;
.source "TTSEngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;


# instance fields
.field private volatile mHadSetCallback:Z

.field private mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/speech/common/util/IPCRunner<",
            "Lcom/xiaopeng/speech/coreapi/ITTSEngine;",
            ">;"
        }
    .end annotation
.end field

.field private mSpeakCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/speech/proxy/ISpeakCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mTTSCallback:Lcom/xiaopeng/speech/coreapi/ITTSCallback;

.field private mWorkerHandler:Lcom/xiaopeng/speech/common/util/WorkerHandler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 87
    invoke-direct {p0}, Lcom/xiaopeng/speech/coreapi/ITTSEngine$Stub;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mSpeakCallbackMap:Ljava/util/Map;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mHadSetCallback:Z

    .line 28
    new-instance v0, Lcom/xiaopeng/speech/common/util/IPCRunner;

    const-string v1, "TTSEngineProxy"

    invoke-direct {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    .line 30
    new-instance v0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1;-><init>(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mTTSCallback:Lcom/xiaopeng/speech/coreapi/ITTSCallback;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/proxy/TTSEngineProxy;

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mSpeakCallbackMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;)Lcom/xiaopeng/speech/common/util/WorkerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/proxy/TTSEngineProxy;

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mWorkerHandler:Lcom/xiaopeng/speech/common/util/WorkerHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;)Lcom/xiaopeng/speech/coreapi/ITTSCallback;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/proxy/TTSEngineProxy;

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mTTSCallback:Lcom/xiaopeng/speech/coreapi/ITTSCallback;

    return-object v0
.end method

.method static synthetic access$302(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/speech/proxy/TTSEngineProxy;
    .param p1, "x1"    # Z

    .line 23
    iput-boolean p1, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mHadSetCallback:Z

    return p1
.end method

.method private declared-synchronized addTSSListener()V
    .locals 2

    monitor-enter p0

    .line 472
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mHadSetCallback:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 473
    monitor-exit p0

    return-void

    .line 475
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$24;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$24;-><init>(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 488
    monitor-exit p0

    return-void

    .line 471
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/proxy/TTSEngineProxy;
    throw v0
.end method


# virtual methods
.method public addListener(Lcom/xiaopeng/speech/coreapi/ITTSCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/xiaopeng/speech/coreapi/ITTSCallback;

    .line 393
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$19;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$19;-><init>(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;Lcom/xiaopeng/speech/coreapi/ITTSCallback;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 404
    return-void
.end method

.method public getSpeaker()Ljava/lang/String;
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$6;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$6;-><init>(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSpeed()F
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$8;-><init>(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;)V

    .line 236
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 226
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getVolume()I
    .locals 3

    .line 256
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$10;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$10;-><init>(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;)V

    .line 266
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 256
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isSingleTTS()Z
    .locals 3

    .line 442
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$22;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$22;-><init>(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;)V

    .line 452
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 442
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isTTSSupportSpell()Z
    .locals 3

    .line 457
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$23;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$23;-><init>(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;)V

    .line 468
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 457
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

    .line 494
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    invoke-interface {p1}, Lcom/xiaopeng/speech/ISpeechEngine;->getTTSEngine()Lcom/xiaopeng/speech/coreapi/ITTSEngine;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->setProxy(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 497
    :catch_0
    move-exception v0

    .line 498
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/NullPointerException;
    goto :goto_1

    .line 495
    :catch_1
    move-exception v0

    .line 496
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 499
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 500
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/IPCRunner;->fetchAll()V

    .line 501
    return-void
.end method

.method public onDisconnect()V
    .locals 2

    .line 505
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mHadSetCallback:Z

    .line 506
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->setProxy(Ljava/lang/Object;)V

    .line 507
    return-void
.end method

.method public removeListener(Lcom/xiaopeng/speech/coreapi/ITTSCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/xiaopeng/speech/coreapi/ITTSCallback;

    .line 408
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$20;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$20;-><init>(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;Lcom/xiaopeng/speech/coreapi/ITTSCallback;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 419
    return-void
.end method

.method public removeSpeakCallback(Ljava/lang/String;)V
    .locals 1
    .param p1, "ttsId"    # Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mSpeakCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    return-void
.end method

.method public setHandler(Lcom/xiaopeng/speech/common/util/WorkerHandler;)V
    .locals 2
    .param p1, "workerHandler"    # Lcom/xiaopeng/speech/common/util/WorkerHandler;

    .line 91
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mWorkerHandler:Lcom/xiaopeng/speech/common/util/WorkerHandler;

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    iget-object v1, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mWorkerHandler:Lcom/xiaopeng/speech/common/util/WorkerHandler;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->setWorkerHandler(Lcom/xiaopeng/speech/common/util/WorkerHandler;)V

    .line 93
    return-void
.end method

.method public setMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$11;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$11;-><init>(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 282
    return-void
.end method

.method public setSingleTTS(ZLandroid/os/IBinder;)V
    .locals 2
    .param p1, "state"    # Z
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 423
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$21;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$21;-><init>(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;Landroid/os/IBinder;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 438
    return-void
.end method

.method public setSoloMode(Z)V
    .locals 2
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$12;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$12;-><init>(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 297
    return-void
.end method

.method public setSoloModeByChannel(IZ)V
    .locals 2
    .param p1, "channel"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$17;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$17;-><init>(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;IZ)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 374
    return-void
.end method

.method public setSpeaker(Ljava/lang/String;)V
    .locals 2
    .param p1, "speaker"    # Ljava/lang/String;

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$5;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$5;-><init>(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 192
    return-void
.end method

.method public setSpeed(F)V
    .locals 2
    .param p1, "speed"    # F

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$7;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$7;-><init>(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;F)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 222
    return-void
.end method

.method public setVolume(I)V
    .locals 2
    .param p1, "volume"    # I

    .line 241
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$9;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$9;-><init>(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 252
    return-void
.end method

.method public shutup(Ljava/lang/String;)V
    .locals 2
    .param p1, "ttsid"    # Ljava/lang/String;

    .line 378
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$18;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$18;-><init>(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 389
    return-void
.end method

.method public shutupByChannel(I)V
    .locals 2
    .param p1, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$16;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$16;-><init>(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 359
    return-void
.end method

.method public shutupByReason(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "ttsid"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$13;-><init>(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 312
    return-void
.end method

.method public speak(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mWorkerHandler:Lcom/xiaopeng/speech/common/util/WorkerHandler;

    new-instance v1, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$2;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$2;-><init>(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;Ljava/lang/String;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/speech/common/util/WorkerHandler;->optPostDelay(Ljava/lang/Runnable;J)V

    .line 102
    const-string v0, ""

    return-object v0
.end method

.method public speak(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "priority"    # I

    .line 106
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->speak(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public speak(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "priority"    # I
    .param p3, "audioFocus"    # I

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->speak(Ljava/lang/String;IILcom/xiaopeng/speech/proxy/ISpeakCallback;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public speak(Ljava/lang/String;IIILcom/xiaopeng/speech/proxy/ISpeakCallback;)Ljava/lang/String;
    .locals 13
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "priority"    # I
    .param p3, "audioFocus"    # I
    .param p4, "streamType"    # I
    .param p5, "callback"    # Lcom/xiaopeng/speech/proxy/ISpeakCallback;

    move-object v9, p0

    .line 126
    move-object/from16 v10, p5

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v11

    .line 127
    .local v11, "ttsId":Ljava/lang/String;
    sget v12, Lcom/xiaopeng/speech/common/SpeechConstant;->TTS_DEFAULT_MODEL:I

    .line 131
    .local v12, "ttsMode":I
    sget v0, Lcom/xiaopeng/speech/common/SpeechConstant;->TTS_TIMEOUT:I

    int-to-long v7, v0

    move-object v0, v9

    move-object v1, p1

    move v2, p2

    move-object v3, v11

    move/from16 v4, p3

    move/from16 v5, p4

    move v6, v12

    invoke-virtual/range {v0 .. v8}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->speakEnhance(Ljava/lang/String;ILjava/lang/String;IIIJ)Z

    move-result v0

    .line 133
    .local v0, "success":Z
    invoke-direct {v9}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->addTSSListener()V

    .line 134
    if-eqz v10, :cond_0

    .line 135
    iget-object v1, v9, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mSpeakCallbackMap:Ljava/util/Map;

    invoke-interface {v1, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "speak callback size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mSpeakCallbackMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/String;)V

    .line 138
    :cond_0
    return-object v11
.end method

.method public speak(Ljava/lang/String;IILcom/xiaopeng/speech/proxy/ISpeakCallback;)Ljava/lang/String;
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "priority"    # I
    .param p3, "audioFocus"    # I
    .param p4, "callback"    # Lcom/xiaopeng/speech/proxy/ISpeakCallback;

    .line 122
    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->speak(Ljava/lang/String;IIILcom/xiaopeng/speech/proxy/ISpeakCallback;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public speak(Ljava/lang/String;ILcom/xiaopeng/speech/proxy/ISpeakCallback;)Ljava/lang/String;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "priority"    # I
    .param p3, "speakCallback"    # Lcom/xiaopeng/speech/proxy/ISpeakCallback;

    .line 118
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->speak(Ljava/lang/String;IILcom/xiaopeng/speech/proxy/ISpeakCallback;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public speak(Ljava/lang/String;Lcom/xiaopeng/speech/proxy/ISpeakCallback;)Ljava/lang/String;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "speakCallback"    # Lcom/xiaopeng/speech/proxy/ISpeakCallback;

    .line 114
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->speak(Ljava/lang/String;ILcom/xiaopeng/speech/proxy/ISpeakCallback;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public speak(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/speech/proxy/ISpeakCallback;)Ljava/lang/String;
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/xiaopeng/speech/proxy/ISpeakCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 510
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, "ttsId":Ljava/lang/String;
    sget v1, Lcom/xiaopeng/speech/common/SpeechConstant;->TTS_DEFAULT_MODEL:I

    .line 515
    .local v1, "ttsMode":I
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->speakParam(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 517
    .local v2, "success":Z
    invoke-direct {p0}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->addTSSListener()V

    .line 518
    if-eqz p3, :cond_0

    .line 519
    iget-object v3, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mSpeakCallbackMap:Ljava/util/Map;

    invoke-interface {v3, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "speak callback size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mSpeakCallbackMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/String;)V

    .line 522
    :cond_0
    return-object v0
.end method

.method public speak(Ljava/lang/String;ILjava/lang/String;I)Z
    .locals 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "priority"    # I
    .param p3, "ttsId"    # Ljava/lang/String;
    .param p4, "audioFocus"    # I

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v7, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$4;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$4;-><init>(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;Ljava/lang/String;ILjava/lang/String;I)V

    .line 176
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 166
    invoke-virtual {v0, v7, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public speakEnhance(Ljava/lang/String;ILjava/lang/String;IIIJ)Z
    .locals 13
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "priority"    # I
    .param p3, "ttsId"    # Ljava/lang/String;
    .param p4, "audioFocus"    # I
    .param p5, "streamType"    # I
    .param p6, "ttsMode"    # I
    .param p7, "timeout"    # J

    .line 150
    move-object v10, p0

    iget-object v11, v10, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v12, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$3;

    move-object v0, v12

    move-object v1, v10

    move-object v2, p1

    move v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$3;-><init>(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;Ljava/lang/String;ILjava/lang/String;IIIJ)V

    .line 161
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 150
    invoke-virtual {v11, v12, v0}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public speakEnhanceByVoicePosition(Ljava/lang/String;ILjava/lang/String;IIIJI)Z
    .locals 14
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "priority"    # I
    .param p3, "ttsId"    # Ljava/lang/String;
    .param p4, "audioFocus"    # I
    .param p5, "streamType"    # I
    .param p6, "ttsMode"    # I
    .param p7, "timeout"    # J
    .param p9, "position"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 316
    move-object v11, p0

    iget-object v12, v11, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v13, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$14;

    move-object v0, v13

    move-object v1, v11

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$14;-><init>(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;Ljava/lang/String;ILjava/lang/String;IIIJI)V

    .line 327
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 316
    invoke-virtual {v12, v13, v0}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public speakParam(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$15;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$15;-><init>(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 332
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
