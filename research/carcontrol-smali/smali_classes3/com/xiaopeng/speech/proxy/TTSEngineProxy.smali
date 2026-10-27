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

    const/4 v0, 0x0

    .line 26
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

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;)Ljava/util/Map;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mSpeakCallbackMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;)Lcom/xiaopeng/speech/common/util/WorkerHandler;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mWorkerHandler:Lcom/xiaopeng/speech/common/util/WorkerHandler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;)Lcom/xiaopeng/speech/coreapi/ITTSCallback;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mTTSCallback:Lcom/xiaopeng/speech/coreapi/ITTSCallback;

    return-object p0
.end method

.method static synthetic access$302(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;Z)Z
    .locals 0

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

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addListener(Lcom/xiaopeng/speech/coreapi/ITTSCallback;)V
    .locals 2

    .line 393
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$19;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$19;-><init>(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;Lcom/xiaopeng/speech/coreapi/ITTSCallback;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

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

    const/4 v2, 0x0

    .line 236
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

    const/4 v2, 0x0

    .line 266
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

    const/4 v2, 0x0

    .line 452
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

    const/4 v2, 0x0

    .line 468
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
    .locals 1

    .line 494
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    invoke-interface {p1}, Lcom/xiaopeng/speech/ISpeechEngine;->getTTSEngine()Lcom/xiaopeng/speech/coreapi/ITTSEngine;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->setProxy(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 498
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 496
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 500
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->fetchAll()V

    return-void
.end method

.method public onDisconnect()V
    .locals 2

    const/4 v0, 0x0

    .line 505
    iput-boolean v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mHadSetCallback:Z

    .line 506
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->setProxy(Ljava/lang/Object;)V

    return-void
.end method

.method public removeListener(Lcom/xiaopeng/speech/coreapi/ITTSCallback;)V
    .locals 2

    .line 408
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$20;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$20;-><init>(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;Lcom/xiaopeng/speech/coreapi/ITTSCallback;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public removeSpeakCallback(Ljava/lang/String;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mSpeakCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setHandler(Lcom/xiaopeng/speech/common/util/WorkerHandler;)V
    .locals 1

    .line 91
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mWorkerHandler:Lcom/xiaopeng/speech/common/util/WorkerHandler;

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->setWorkerHandler(Lcom/xiaopeng/speech/common/util/WorkerHandler;)V

    return-void
.end method

.method public setMode(I)V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$11;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$11;-><init>(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public setSingleTTS(ZLandroid/os/IBinder;)V
    .locals 2

    .line 423
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$21;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$21;-><init>(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;Landroid/os/IBinder;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public setSoloMode(Z)V
    .locals 2
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

    return-void
.end method

.method public setSoloModeByChannel(IZ)V
    .locals 2
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

    return-void
.end method

.method public setSpeaker(Ljava/lang/String;)V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$5;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$5;-><init>(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public setSpeed(F)V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$7;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$7;-><init>(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;F)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public setVolume(I)V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$9;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$9;-><init>(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public shutup(Ljava/lang/String;)V
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$18;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$18;-><init>(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public shutupByChannel(I)V
    .locals 2
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

    return-void
.end method

.method public shutupByReason(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
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

    return-void
.end method

.method public speak(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mWorkerHandler:Lcom/xiaopeng/speech/common/util/WorkerHandler;

    new-instance v1, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$2;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$2;-><init>(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;Ljava/lang/String;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/speech/common/util/WorkerHandler;->optPostDelay(Ljava/lang/Runnable;J)V

    const-string p1, ""

    return-object p1
.end method

.method public speak(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x3

    .line 106
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->speak(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public speak(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->speak(Ljava/lang/String;IILcom/xiaopeng/speech/proxy/ISpeakCallback;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public speak(Ljava/lang/String;IIILcom/xiaopeng/speech/proxy/ISpeakCallback;)Ljava/lang/String;
    .locals 10

    .line 126
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    sget v7, Lcom/xiaopeng/speech/common/SpeechConstant;->TTS_DEFAULT_MODEL:I

    .line 131
    sget v1, Lcom/xiaopeng/speech/common/SpeechConstant;->TTS_TIMEOUT:I

    int-to-long v8, v1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, v0

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v9}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->speakEnhance(Ljava/lang/String;ILjava/lang/String;IIIJ)Z

    .line 133
    invoke-direct {p0}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->addTSSListener()V

    if-eqz p5, :cond_0

    .line 135
    iget-object p1, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mSpeakCallbackMap:Ljava/util/Map;

    invoke-interface {p1, v0, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "speak callback size:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mSpeakCallbackMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public speak(Ljava/lang/String;IILcom/xiaopeng/speech/proxy/ISpeakCallback;)Ljava/lang/String;
    .locals 6

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 122
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->speak(Ljava/lang/String;IIILcom/xiaopeng/speech/proxy/ISpeakCallback;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public speak(Ljava/lang/String;ILcom/xiaopeng/speech/proxy/ISpeakCallback;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x3

    .line 118
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->speak(Ljava/lang/String;IILcom/xiaopeng/speech/proxy/ISpeakCallback;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public speak(Ljava/lang/String;Lcom/xiaopeng/speech/proxy/ISpeakCallback;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 114
    invoke-virtual {p0, p1, v0, p2}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->speak(Ljava/lang/String;ILcom/xiaopeng/speech/proxy/ISpeakCallback;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public speak(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/speech/proxy/ISpeakCallback;)Ljava/lang/String;
    .locals 2
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
    sget v1, Lcom/xiaopeng/speech/common/SpeechConstant;->TTS_DEFAULT_MODEL:I

    .line 515
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->speakParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 517
    invoke-direct {p0}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->addTSSListener()V

    if-eqz p3, :cond_0

    .line 519
    iget-object p1, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mSpeakCallbackMap:Ljava/util/Map;

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "speak callback size:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mSpeakCallbackMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public speak(Ljava/lang/String;ILjava/lang/String;I)Z
    .locals 8

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

    const/4 p1, 0x0

    .line 176
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 166
    invoke-virtual {v0, v7, p1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public speakEnhance(Ljava/lang/String;ILjava/lang/String;IIIJ)Z
    .locals 13

    move-object v10, p0

    .line 150
    iget-object v11, v10, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v12, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$3;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$3;-><init>(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;Ljava/lang/String;ILjava/lang/String;IIIJ)V

    const/4 v0, 0x0

    .line 161
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v11, p0

    .line 316
    iget-object v12, v11, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v13, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$14;

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$14;-><init>(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;Ljava/lang/String;ILjava/lang/String;IIIJI)V

    const/4 v0, 0x0

    .line 327
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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$15;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$15;-><init>(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 343
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 332
    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
