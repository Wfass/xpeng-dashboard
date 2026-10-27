.class public Lcom/xiaopeng/speech/SpeechClient;
.super Ljava/lang/Object;
.source "SpeechClient.java"

# interfaces
.implements Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/speech/SpeechClient$Holder;
    }
.end annotation


# instance fields
.field private final initSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private volatile mASREngineProxy:Lcom/xiaopeng/speech/proxy/ASREngineProxy;

.field private volatile mActorBridge:Lcom/xiaopeng/speech/actor/ActorBridge;

.field private volatile mAgentProxy:Lcom/xiaopeng/speech/proxy/AgentProxy;

.field private volatile mAppMgrProxy:Lcom/xiaopeng/speech/proxy/AppMgrProxy;

.field private volatile mCarSystemPropertyProxy:Lcom/xiaopeng/speech/proxy/CarSystemPropertyProxy;

.field private volatile mConnectManager:Lcom/xiaopeng/speech/ConnectManager;

.field private volatile mContext:Landroid/content/Context;

.field private volatile mHotwordEngineProxy:Lcom/xiaopeng/speech/proxy/HotwordEngineProxy;

.field private volatile mNodeManager:Lcom/xiaopeng/speech/NodeManager;

.field private volatile mQueryInjectorProxy:Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;

.field private volatile mQueryManager:Lcom/xiaopeng/speech/QueryManager;

.field private volatile mRecognizer:Lcom/xiaopeng/speech/asr/Recognizer;

.field private volatile mRecordEngineProxy:Lcom/xiaopeng/speech/proxy/RecordEngineProxy;

.field private volatile mSoundLockStateProxy:Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;

.field private volatile mSpeechStateProxy:Lcom/xiaopeng/speech/proxy/SpeechStateProxy;

.field private volatile mSubscriberProxy:Lcom/xiaopeng/speech/proxy/SubscriberProxy;

.field private volatile mTTSEngineProxy:Lcom/xiaopeng/speech/proxy/TTSEngineProxy;

.field private volatile mVADEngineProxy:Lcom/xiaopeng/speech/proxy/VADEngineProxy;

.field private volatile mWakeupEngineProxy:Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

.field private volatile mWindowEngineProxy:Lcom/xiaopeng/speech/proxy/WindowEngineProxy;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/xiaopeng/speech/SpeechClient;->initSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/SpeechClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public static instance()Lcom/xiaopeng/speech/SpeechClient;
    .locals 1

    .line 65
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient$Holder;->access$000()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getASREngine()Lcom/xiaopeng/speech/proxy/ASREngineProxy;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/speech/SpeechClient;->mASREngineProxy:Lcom/xiaopeng/speech/proxy/ASREngineProxy;

    return-object v0
.end method

.method public getActorBridge()Lcom/xiaopeng/speech/actor/ActorBridge;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/speech/SpeechClient;->mActorBridge:Lcom/xiaopeng/speech/actor/ActorBridge;

    return-object v0
.end method

.method public getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/speech/SpeechClient;->mAgentProxy:Lcom/xiaopeng/speech/proxy/AgentProxy;

    return-object v0
.end method

.method public getAppMgr()Lcom/xiaopeng/speech/proxy/AppMgrProxy;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/xiaopeng/speech/SpeechClient;->mAppMgrProxy:Lcom/xiaopeng/speech/proxy/AppMgrProxy;

    return-object v0
.end method

.method public getCarSystemProperty()Lcom/xiaopeng/speech/proxy/CarSystemPropertyProxy;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/xiaopeng/speech/SpeechClient;->mCarSystemPropertyProxy:Lcom/xiaopeng/speech/proxy/CarSystemPropertyProxy;

    return-object v0
.end method

.method public getHotwordEngine()Lcom/xiaopeng/speech/proxy/HotwordEngineProxy;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/speech/SpeechClient;->mHotwordEngineProxy:Lcom/xiaopeng/speech/proxy/HotwordEngineProxy;

    return-object v0
.end method

.method public getNodeManager()Lcom/xiaopeng/speech/NodeManager;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/xiaopeng/speech/SpeechClient;->mNodeManager:Lcom/xiaopeng/speech/NodeManager;

    return-object v0
.end method

.method public getQueryInjector()Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/speech/SpeechClient;->mQueryInjectorProxy:Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;

    return-object v0
.end method

.method public getQueryManager()Lcom/xiaopeng/speech/QueryManager;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/xiaopeng/speech/SpeechClient;->mQueryManager:Lcom/xiaopeng/speech/QueryManager;

    return-object v0
.end method

.method public getRecognizer()Lcom/xiaopeng/speech/asr/Recognizer;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/xiaopeng/speech/SpeechClient;->mRecognizer:Lcom/xiaopeng/speech/asr/Recognizer;

    return-object v0
.end method

.method public getRecordEngine()Lcom/xiaopeng/speech/proxy/RecordEngineProxy;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/xiaopeng/speech/SpeechClient;->mRecordEngineProxy:Lcom/xiaopeng/speech/proxy/RecordEngineProxy;

    return-object v0
.end method

.method public getSoundLockState()Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/speech/SpeechClient;->mSoundLockStateProxy:Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;

    return-object v0
.end method

.method public getSpeechState()Lcom/xiaopeng/speech/proxy/SpeechStateProxy;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/speech/SpeechClient;->mSpeechStateProxy:Lcom/xiaopeng/speech/proxy/SpeechStateProxy;

    return-object v0
.end method

.method public getSubscriber()Lcom/xiaopeng/speech/proxy/SubscriberProxy;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/speech/SpeechClient;->mSubscriberProxy:Lcom/xiaopeng/speech/proxy/SubscriberProxy;

    return-object v0
.end method

.method public getTTSEngine()Lcom/xiaopeng/speech/proxy/TTSEngineProxy;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/speech/SpeechClient;->mTTSEngineProxy:Lcom/xiaopeng/speech/proxy/TTSEngineProxy;

    return-object v0
.end method

.method public getVadEngine()Lcom/xiaopeng/speech/proxy/VADEngineProxy;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/xiaopeng/speech/SpeechClient;->mVADEngineProxy:Lcom/xiaopeng/speech/proxy/VADEngineProxy;

    return-object v0
.end method

.method public getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/speech/SpeechClient;->mWakeupEngineProxy:Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    return-object v0
.end method

.method public getWindowEngine()Lcom/xiaopeng/speech/proxy/WindowEngineProxy;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/xiaopeng/speech/SpeechClient;->mWindowEngineProxy:Lcom/xiaopeng/speech/proxy/WindowEngineProxy;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/speech/SpeechClient;->init(Landroid/content/Context;Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;)V

    .line 70
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connectCallback"    # Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechClient(%s) Start In %s, connectCallback: %s, build version: %s, build time: %s"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "1.0"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const-string v3, "1.16.0.1-f66daaa793f1-SNAPSHOT"

    const/4 v5, 0x3

    aput-object v3, v2, v5

    const-string v3, "2024-09-18 18:10:40"

    const/4 v5, 0x4

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/speech/SpeechClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/SpeechClient;->initSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/speech/SpeechClient;->mConnectManager:Lcom/xiaopeng/speech/ConnectManager;

    invoke-virtual {v0, p2}, Lcom/xiaopeng/speech/ConnectManager;->addCallback(Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/speech/SpeechClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 78
    return-void

    .line 80
    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NodeWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, "workerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 82
    new-instance v1, Lcom/xiaopeng/speech/common/util/WorkerHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xiaopeng/speech/common/util/WorkerHandler;-><init>(Landroid/os/Looper;)V

    .line 84
    .local v1, "mWorkerHandler":Lcom/xiaopeng/speech/common/util/WorkerHandler;
    iput-object p1, p0, Lcom/xiaopeng/speech/SpeechClient;->mContext:Landroid/content/Context;

    .line 86
    new-instance v2, Lcom/xiaopeng/speech/ConnectManager;

    invoke-direct {v2, p1}, Lcom/xiaopeng/speech/ConnectManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/xiaopeng/speech/SpeechClient;->mConnectManager:Lcom/xiaopeng/speech/ConnectManager;

    .line 87
    iget-object v2, p0, Lcom/xiaopeng/speech/SpeechClient;->mConnectManager:Lcom/xiaopeng/speech/ConnectManager;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/speech/ConnectManager;->init(Lcom/xiaopeng/speech/common/util/WorkerHandler;)V

    .line 89
    new-instance v2, Lcom/xiaopeng/speech/NodeManager;

    invoke-direct {v2}, Lcom/xiaopeng/speech/NodeManager;-><init>()V

    iput-object v2, p0, Lcom/xiaopeng/speech/SpeechClient;->mNodeManager:Lcom/xiaopeng/speech/NodeManager;

    .line 90
    iget-object v2, p0, Lcom/xiaopeng/speech/SpeechClient;->mNodeManager:Lcom/xiaopeng/speech/NodeManager;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/speech/NodeManager;->init(Lcom/xiaopeng/speech/common/util/WorkerHandler;)V

    .line 91
    iget-object v2, p0, Lcom/xiaopeng/speech/SpeechClient;->mConnectManager:Lcom/xiaopeng/speech/ConnectManager;

    iget-object v3, p0, Lcom/xiaopeng/speech/SpeechClient;->mNodeManager:Lcom/xiaopeng/speech/NodeManager;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/ConnectManager;->addCallback(Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;)V

    .line 93
    new-instance v2, Lcom/xiaopeng/speech/QueryManager;

    invoke-direct {v2}, Lcom/xiaopeng/speech/QueryManager;-><init>()V

    iput-object v2, p0, Lcom/xiaopeng/speech/SpeechClient;->mQueryManager:Lcom/xiaopeng/speech/QueryManager;

    .line 94
    iget-object v2, p0, Lcom/xiaopeng/speech/SpeechClient;->mQueryManager:Lcom/xiaopeng/speech/QueryManager;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/speech/QueryManager;->init(Lcom/xiaopeng/speech/common/util/WorkerHandler;)V

    .line 95
    iget-object v2, p0, Lcom/xiaopeng/speech/SpeechClient;->mConnectManager:Lcom/xiaopeng/speech/ConnectManager;

    iget-object v3, p0, Lcom/xiaopeng/speech/SpeechClient;->mQueryManager:Lcom/xiaopeng/speech/QueryManager;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/ConnectManager;->addCallback(Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;)V

    .line 97
    new-instance v2, Lcom/xiaopeng/speech/actor/ActorBridge;

    invoke-direct {v2, p1}, Lcom/xiaopeng/speech/actor/ActorBridge;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/xiaopeng/speech/SpeechClient;->mActorBridge:Lcom/xiaopeng/speech/actor/ActorBridge;

    .line 98
    iget-object v2, p0, Lcom/xiaopeng/speech/SpeechClient;->mActorBridge:Lcom/xiaopeng/speech/actor/ActorBridge;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/speech/actor/ActorBridge;->setHandler(Lcom/xiaopeng/speech/common/util/WorkerHandler;)V

    .line 99
    iget-object v2, p0, Lcom/xiaopeng/speech/SpeechClient;->mConnectManager:Lcom/xiaopeng/speech/ConnectManager;

    iget-object v3, p0, Lcom/xiaopeng/speech/SpeechClient;->mActorBridge:Lcom/xiaopeng/speech/actor/ActorBridge;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/ConnectManager;->addCallback(Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;)V

    .line 101
    new-instance v2, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;

    invoke-direct {v2}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;-><init>()V

    iput-object v2, p0, Lcom/xiaopeng/speech/SpeechClient;->mTTSEngineProxy:Lcom/xiaopeng/speech/proxy/TTSEngineProxy;

    .line 102
    iget-object v2, p0, Lcom/xiaopeng/speech/SpeechClient;->mTTSEngineProxy:Lcom/xiaopeng/speech/proxy/TTSEngineProxy;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->setHandler(Lcom/xiaopeng/speech/common/util/WorkerHandler;)V

    .line 103
    iget-object v2, p0, Lcom/xiaopeng/speech/SpeechClient;->mConnectManager:Lcom/xiaopeng/speech/ConnectManager;

    iget-object v3, p0, Lcom/xiaopeng/speech/SpeechClient;->mTTSEngineProxy:Lcom/xiaopeng/speech/proxy/TTSEngineProxy;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/ConnectManager;->addCallback(Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;)V

    .line 105
    new-instance v2, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    invoke-direct {v2}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;-><init>()V

    iput-object v2, p0, Lcom/xiaopeng/speech/SpeechClient;->mWakeupEngineProxy:Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    .line 106
    iget-object v2, p0, Lcom/xiaopeng/speech/SpeechClient;->mWakeupEngineProxy:Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->setHandler(Lcom/xiaopeng/speech/common/util/WorkerHandler;)V

    .line 107
    iget-object v2, p0, Lcom/xiaopeng/speech/SpeechClient;->mConnectManager:Lcom/xiaopeng/speech/ConnectManager;

    iget-object v3, p0, Lcom/xiaopeng/speech/SpeechClient;->mWakeupEngineProxy:Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/ConnectManager;->addCallback(Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;)V

    .line 109
    new-instance v2, Lcom/xiaopeng/speech/proxy/HotwordEngineProxy;

    invoke-direct {v2}, Lcom/xiaopeng/speech/proxy/HotwordEngineProxy;-><init>()V

    iput-object v2, p0, Lcom/xiaopeng/speech/SpeechClient;->mHotwordEngineProxy:Lcom/xiaopeng/speech/proxy/HotwordEngineProxy;

    .line 110
    iget-object v2, p0, Lcom/xiaopeng/speech/SpeechClient;->mHotwordEngineProxy:Lcom/xiaopeng/speech/proxy/HotwordEngineProxy;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/speech/proxy/HotwordEngineProxy;->setHandler(Lcom/xiaopeng/speech/common/util/WorkerHandler;)V

    .line 111
    iget-object v2, p0, Lcom/xiaopeng/speech/SpeechClient;->mConnectManager:Lcom/xiaopeng/speech/ConnectManager;

    iget-object v3, p0, Lcom/xiaopeng/speech/SpeechClient;->mHotwordEngineProxy:Lcom/xiaopeng/speech/proxy/HotwordEngineProxy;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/ConnectManager;->addCallback(Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;)V

    .line 113
    new-instance v2, Lcom/xiaopeng/speech/proxy/AgentProxy;

    invoke-direct {v2}, Lcom/xiaopeng/speech/proxy/AgentProxy;-><init>()V

    iput-object v2, p0, Lcom/xiaopeng/speech/SpeechClient;->mAgentProxy:Lcom/xiaopeng/speech/proxy/AgentProxy;

    .line 114
    iget-object v2, p0, Lcom/xiaopeng/speech/SpeechClient;->mAgentProxy:Lcom/xiaopeng/speech/proxy/AgentProxy;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/speech/proxy/AgentProxy;->setHandler(Lcom/xiaopeng/speech/common/util/WorkerHandler;)V

    .line 115
    iget-object v2, p0, Lcom/xiaopeng/speech/SpeechClient;->mConnectManager:Lcom/xiaopeng/speech/ConnectManager;

    iget-object v3, p0, Lcom/xiaopeng/speech/SpeechClient;->mAgentProxy:Lcom/xiaopeng/speech/proxy/AgentProxy;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/ConnectManager;->addCallback(Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;)V

    .line 117
    new-instance v2, Lcom/xiaopeng/speech/proxy/SubscriberProxy;

    invoke-direct {v2}, Lcom/xiaopeng/speech/proxy/SubscriberProxy;-><init>()V

    iput-object v2, p0, Lcom/xiaopeng/speech/SpeechClient;->mSubscriberProxy:Lcom/xiaopeng/speech/proxy/SubscriberProxy;

    .line 118
    iget-object v2, p0, Lcom/xiaopeng/speech/SpeechClient;->mSubscriberProxy:Lcom/xiaopeng/speech/proxy/SubscriberProxy;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/speech/proxy/SubscriberProxy;->setHandler(Lcom/xiaopeng/speech/common/util/WorkerHandler;)V

    .line 119
    iget-object v2, p0, Lcom/xiaopeng/speech/SpeechClient;->mConnectManager:Lcom/xiaopeng/speech/ConnectManager;

    iget-object v3, p0, Lcom/xiaopeng/speech/SpeechClient;->mSubscriberProxy:Lcom/xiaopeng/speech/proxy/SubscriberProxy;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/ConnectManager;->addCallback(Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;)V

    .line 121
    new-instance v2, Lcom/xiaopeng/speech/proxy/AppMgrProxy;

    invoke-direct {v2, p1}, Lcom/xiaopeng/speech/proxy/AppMgrProxy;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/xiaopeng/speech/SpeechClient;->mAppMgrProxy:Lcom/xiaopeng/speech/proxy/AppMgrProxy;

    .line 122
    iget-object v2, p0, Lcom/xiaopeng/speech/SpeechClient;->mAppMgrProxy:Lcom/xiaopeng/speech/proxy/AppMgrProxy;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/speech/proxy/AppMgrProxy;->setHandler(Lcom/xiaopeng/speech/common/util/WorkerHandler;)V

    .line 123
    iget-object v2, p0, Lcom/xiaopeng/speech/SpeechClient;->mConnectManager:Lcom/xiaopeng/speech/ConnectManager;

    iget-object v3, p0, Lcom/xiaopeng/speech/SpeechClient;->mAppMgrProxy:Lcom/xiaopeng/speech/proxy/AppMgrProxy;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/ConnectManager;->addCallback(Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;)V

    .line 125
    new-instance v2, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;

    invoke-direct {v2}, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;-><init>()V

    iput-object v2, p0, Lcom/xiaopeng/speech/SpeechClient;->mSpeechStateProxy:Lcom/xiaopeng/speech/proxy/SpeechStateProxy;

    .line 126
    iget-object v2, p0, Lcom/xiaopeng/speech/SpeechClient;->mConnectManager:Lcom/xiaopeng/speech/ConnectManager;

    iget-object v3, p0, Lcom/xiaopeng/speech/SpeechClient;->mSpeechStateProxy:Lcom/xiaopeng/speech/proxy/SpeechStateProxy;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/ConnectManager;->addCallback(Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;)V

    .line 128
    new-instance v2, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;

    invoke-direct {v2}, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;-><init>()V

    iput-object v2, p0, Lcom/xiaopeng/speech/SpeechClient;->mSoundLockStateProxy:Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;

    .line 129
    iget-object v2, p0, Lcom/xiaopeng/speech/SpeechClient;->mConnectManager:Lcom/xiaopeng/speech/ConnectManager;

    iget-object v3, p0, Lcom/xiaopeng/speech/SpeechClient;->mSoundLockStateProxy:Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/ConnectManager;->addCallback(Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;)V

    .line 131
    new-instance v2, Lcom/xiaopeng/speech/proxy/ASREngineProxy;

    invoke-direct {v2}, Lcom/xiaopeng/speech/proxy/ASREngineProxy;-><init>()V

    iput-object v2, p0, Lcom/xiaopeng/speech/SpeechClient;->mASREngineProxy:Lcom/xiaopeng/speech/proxy/ASREngineProxy;

    .line 132
    iget-object v2, p0, Lcom/xiaopeng/speech/SpeechClient;->mASREngineProxy:Lcom/xiaopeng/speech/proxy/ASREngineProxy;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/speech/proxy/ASREngineProxy;->setHandler(Lcom/xiaopeng/speech/common/util/WorkerHandler;)V

    .line 133
    iget-object v2, p0, Lcom/xiaopeng/speech/SpeechClient;->mConnectManager:Lcom/xiaopeng/speech/ConnectManager;

    iget-object v3, p0, Lcom/xiaopeng/speech/SpeechClient;->mASREngineProxy:Lcom/xiaopeng/speech/proxy/ASREngineProxy;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/ConnectManager;->addCallback(Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;)V

    .line 135
    new-instance v2, Lcom/xiaopeng/speech/proxy/RecordEngineProxy;

    invoke-direct {v2}, Lcom/xiaopeng/speech/proxy/RecordEngineProxy;-><init>()V

    iput-object v2, p0, Lcom/xiaopeng/speech/SpeechClient;->mRecordEngineProxy:Lcom/xiaopeng/speech/proxy/RecordEngineProxy;

    .line 136
    iget-object v2, p0, Lcom/xiaopeng/speech/SpeechClient;->mRecordEngineProxy:Lcom/xiaopeng/speech/proxy/RecordEngineProxy;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/speech/proxy/RecordEngineProxy;->setHandler(Lcom/xiaopeng/speech/common/util/WorkerHandler;)V

    .line 137
    iget-object v2, p0, Lcom/xiaopeng/speech/SpeechClient;->mConnectManager:Lcom/xiaopeng/speech/ConnectManager;

    iget-object v3, p0, Lcom/xiaopeng/speech/SpeechClient;->mRecordEngineProxy:Lcom/xiaopeng/speech/proxy/RecordEngineProxy;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/ConnectManager;->addCallback(Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;)V

    .line 139
    new-instance v2, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;

    invoke-direct {v2}, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;-><init>()V

    iput-object v2, p0, Lcom/xiaopeng/speech/SpeechClient;->mQueryInjectorProxy:Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;

    .line 140
    iget-object v2, p0, Lcom/xiaopeng/speech/SpeechClient;->mQueryInjectorProxy:Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;->setHandler(Lcom/xiaopeng/speech/common/util/WorkerHandler;)V

    .line 141
    iget-object v2, p0, Lcom/xiaopeng/speech/SpeechClient;->mConnectManager:Lcom/xiaopeng/speech/ConnectManager;

    iget-object v3, p0, Lcom/xiaopeng/speech/SpeechClient;->mQueryInjectorProxy:Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/ConnectManager;->addCallback(Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;)V

    .line 143
    new-instance v2, Lcom/xiaopeng/speech/proxy/WindowEngineProxy;

    invoke-direct {v2}, Lcom/xiaopeng/speech/proxy/WindowEngineProxy;-><init>()V

    iput-object v2, p0, Lcom/xiaopeng/speech/SpeechClient;->mWindowEngineProxy:Lcom/xiaopeng/speech/proxy/WindowEngineProxy;

    .line 144
    iget-object v2, p0, Lcom/xiaopeng/speech/SpeechClient;->mConnectManager:Lcom/xiaopeng/speech/ConnectManager;

    iget-object v3, p0, Lcom/xiaopeng/speech/SpeechClient;->mWindowEngineProxy:Lcom/xiaopeng/speech/proxy/WindowEngineProxy;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/ConnectManager;->addCallback(Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;)V

    .line 146
    new-instance v2, Lcom/xiaopeng/speech/asr/Recognizer;

    invoke-direct {v2, v1}, Lcom/xiaopeng/speech/asr/Recognizer;-><init>(Lcom/xiaopeng/speech/common/util/WorkerHandler;)V

    iput-object v2, p0, Lcom/xiaopeng/speech/SpeechClient;->mRecognizer:Lcom/xiaopeng/speech/asr/Recognizer;

    .line 147
    iget-object v2, p0, Lcom/xiaopeng/speech/SpeechClient;->mConnectManager:Lcom/xiaopeng/speech/ConnectManager;

    iget-object v3, p0, Lcom/xiaopeng/speech/SpeechClient;->mRecognizer:Lcom/xiaopeng/speech/asr/Recognizer;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/asr/Recognizer;->getConnectCallback()Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/ConnectManager;->addCallback(Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;)V

    .line 149
    new-instance v2, Lcom/xiaopeng/speech/proxy/CarSystemPropertyProxy;

    invoke-direct {v2}, Lcom/xiaopeng/speech/proxy/CarSystemPropertyProxy;-><init>()V

    iput-object v2, p0, Lcom/xiaopeng/speech/SpeechClient;->mCarSystemPropertyProxy:Lcom/xiaopeng/speech/proxy/CarSystemPropertyProxy;

    .line 150
    iget-object v2, p0, Lcom/xiaopeng/speech/SpeechClient;->mConnectManager:Lcom/xiaopeng/speech/ConnectManager;

    iget-object v3, p0, Lcom/xiaopeng/speech/SpeechClient;->mCarSystemPropertyProxy:Lcom/xiaopeng/speech/proxy/CarSystemPropertyProxy;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/ConnectManager;->addCallback(Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;)V

    .line 152
    new-instance v2, Lcom/xiaopeng/speech/proxy/VADEngineProxy;

    invoke-direct {v2}, Lcom/xiaopeng/speech/proxy/VADEngineProxy;-><init>()V

    iput-object v2, p0, Lcom/xiaopeng/speech/SpeechClient;->mVADEngineProxy:Lcom/xiaopeng/speech/proxy/VADEngineProxy;

    .line 153
    iget-object v2, p0, Lcom/xiaopeng/speech/SpeechClient;->mVADEngineProxy:Lcom/xiaopeng/speech/proxy/VADEngineProxy;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/speech/proxy/VADEngineProxy;->setHandler(Lcom/xiaopeng/speech/common/util/WorkerHandler;)V

    .line 154
    iget-object v2, p0, Lcom/xiaopeng/speech/SpeechClient;->mConnectManager:Lcom/xiaopeng/speech/ConnectManager;

    iget-object v3, p0, Lcom/xiaopeng/speech/SpeechClient;->mVADEngineProxy:Lcom/xiaopeng/speech/proxy/VADEngineProxy;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/ConnectManager;->addCallback(Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;)V

    .line 156
    if-nez p2, :cond_1

    .line 157
    iget-object v2, p0, Lcom/xiaopeng/speech/SpeechClient;->mConnectManager:Lcom/xiaopeng/speech/ConnectManager;

    invoke-virtual {v2, p0}, Lcom/xiaopeng/speech/ConnectManager;->addCallback(Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;)V

    goto :goto_0

    .line 159
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/speech/SpeechClient;->mConnectManager:Lcom/xiaopeng/speech/ConnectManager;

    invoke-virtual {v2, p2}, Lcom/xiaopeng/speech/ConnectManager;->addCallback(Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;)V

    .line 162
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/speech/SpeechClient;->mConnectManager:Lcom/xiaopeng/speech/ConnectManager;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/ConnectManager;->connect()V

    .line 164
    iget-object v2, p0, Lcom/xiaopeng/speech/SpeechClient;->mConnectManager:Lcom/xiaopeng/speech/ConnectManager;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/ConnectManager;->registerReceiver()V

    .line 165
    iget-object v2, p0, Lcom/xiaopeng/speech/SpeechClient;->initSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "workerThread":Landroid/os/HandlerThread;
    .end local v1    # "mWorkerHandler":Lcom/xiaopeng/speech/common/util/WorkerHandler;
    goto :goto_1

    .line 169
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/speech/SpeechClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 170
    nop

    .line 171
    return-void

    .line 169
    :goto_2
    iget-object v1, p0, Lcom/xiaopeng/speech/SpeechClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 170
    throw v0
.end method

.method public onConnect(Lcom/xiaopeng/speech/ISpeechEngine;)V
    .locals 0
    .param p1, "speechEngine"    # Lcom/xiaopeng/speech/ISpeechEngine;

    .line 257
    return-void
.end method

.method public onDisconnect()V
    .locals 0

    .line 261
    return-void
.end method

.method public sendActor(Lcom/xiaopeng/speech/actor/Actor;)V
    .locals 1
    .param p1, "actor"    # Lcom/xiaopeng/speech/actor/Actor;

    .line 252
    iget-object v0, p0, Lcom/xiaopeng/speech/SpeechClient;->mActorBridge:Lcom/xiaopeng/speech/actor/ActorBridge;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/actor/ActorBridge;->send(Lcom/xiaopeng/speech/actor/Actor;)V

    .line 253
    return-void
.end method

.method public varargs declared-synchronized setAppName([Ljava/lang/String;)V
    .locals 5
    .param p1, "names"    # [Ljava/lang/String;

    monitor-enter p0

    .line 174
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 175
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/xiaopeng/speech/SpeechClient;->getAppMgr()Lcom/xiaopeng/speech/proxy/AppMgrProxy;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/speech/SpeechClient;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/xiaopeng/speech/proxy/AppMgrProxy;->registerApp(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    .end local v2    # "name":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    :cond_0
    monitor-exit p0

    return-void

    .line 173
    .end local p1    # "names":[Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/SpeechClient;
    throw p1
.end method
