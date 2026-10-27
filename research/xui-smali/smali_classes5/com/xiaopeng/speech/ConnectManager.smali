.class public Lcom/xiaopeng/speech/ConnectManager;
.super Landroid/content/BroadcastReceiver;
.source "ConnectManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;
    }
.end annotation


# static fields
.field private static final MAX_RECONNECT_PERIOD:I = 0xbb8

.field private static final MIN_RECONNECT_PERIOD:I = 0x5dc

.field private static final TAG:Ljava/lang/String; = "ConnectManager"


# instance fields
.field private mCallbackList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/speech/common/util/SimpleCallbackList<",
            "Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDoConnectRunner:Ljava/lang/Runnable;

.field private mRandom:Ljava/util/Random;

.field private volatile mSpeechEngine:Lcom/xiaopeng/speech/ISpeechEngine;

.field private mWorkerHandler:Lcom/xiaopeng/speech/common/util/WorkerHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 42
    new-instance v0, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-direct {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/ConnectManager;->mCallbackList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    .line 191
    new-instance v0, Lcom/xiaopeng/speech/ConnectManager$5;

    invoke-direct {v0, p0}, Lcom/xiaopeng/speech/ConnectManager$5;-><init>(Lcom/xiaopeng/speech/ConnectManager;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/ConnectManager;->mDoConnectRunner:Ljava/lang/Runnable;

    .line 46
    iput-object p1, p0, Lcom/xiaopeng/speech/ConnectManager;->mContext:Landroid/content/Context;

    .line 47
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/ConnectManager;->mRandom:Ljava/util/Random;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/speech/ConnectManager;)Lcom/xiaopeng/speech/ISpeechEngine;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/ConnectManager;

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/speech/ConnectManager;->mSpeechEngine:Lcom/xiaopeng/speech/ISpeechEngine;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/speech/ConnectManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/ConnectManager;

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/speech/ConnectManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/speech/ConnectManager;)Lcom/xiaopeng/speech/common/util/SimpleCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/ConnectManager;

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/speech/ConnectManager;->mCallbackList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/speech/ConnectManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/speech/ConnectManager;

    .line 27
    invoke-direct {p0}, Lcom/xiaopeng/speech/ConnectManager;->reconnect()V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/speech/ConnectManager;II)J
    .locals 2
    .param p0, "x0"    # Lcom/xiaopeng/speech/ConnectManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/ConnectManager;->createRandomKey(II)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$500(Lcom/xiaopeng/speech/ConnectManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/ConnectManager;

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/speech/ConnectManager;->mDoConnectRunner:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/xiaopeng/speech/ConnectManager;)Lcom/xiaopeng/speech/common/util/WorkerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/ConnectManager;

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/speech/ConnectManager;->mWorkerHandler:Lcom/xiaopeng/speech/common/util/WorkerHandler;

    return-object v0
.end method

.method private createRandomKey(II)J
    .locals 2
    .param p1, "min"    # I
    .param p2, "max"    # I

    .line 186
    if-lt p1, p2, :cond_0

    int-to-long v0, p1

    return-wide v0

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/ConnectManager;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    sub-int v1, p2, p1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    int-to-float v1, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method private disconnect()V
    .locals 2

    .line 134
    const-string v0, "SpeechProxy binderDied"

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/String;)V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/speech/ConnectManager;->mSpeechEngine:Lcom/xiaopeng/speech/ISpeechEngine;

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/speech/ConnectManager;->mWorkerHandler:Lcom/xiaopeng/speech/common/util/WorkerHandler;

    new-instance v1, Lcom/xiaopeng/speech/ConnectManager$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/ConnectManager$3;-><init>(Lcom/xiaopeng/speech/ConnectManager;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/WorkerHandler;->optPost(Ljava/lang/Runnable;)V

    .line 149
    return-void
.end method

.method private queryBinder(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 96
    const-string v0, "queryBinder"

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/String;)V

    .line 97
    invoke-static {p1}, Lcom/xiaopeng/speech/ISpeechEngine$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/speech/ISpeechEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/ConnectManager;->mSpeechEngine:Lcom/xiaopeng/speech/ISpeechEngine;

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/speech/ConnectManager;->mSpeechEngine:Lcom/xiaopeng/speech/ISpeechEngine;

    if-nez v0, :cond_0

    .line 99
    const-string v0, "mSpeechEngine == null"

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/String;)V

    .line 100
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/ConnectManager;->mWorkerHandler:Lcom/xiaopeng/speech/common/util/WorkerHandler;

    new-instance v1, Lcom/xiaopeng/speech/ConnectManager$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/ConnectManager$2;-><init>(Lcom/xiaopeng/speech/ConnectManager;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/WorkerHandler;->optPost(Ljava/lang/Runnable;)V

    .line 131
    return-void
.end method

.method private reconnect()V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/speech/ConnectManager;->mWorkerHandler:Lcom/xiaopeng/speech/common/util/WorkerHandler;

    new-instance v1, Lcom/xiaopeng/speech/ConnectManager$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/ConnectManager$4;-><init>(Lcom/xiaopeng/speech/ConnectManager;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/WorkerHandler;->optPost(Ljava/lang/Runnable;)V

    .line 183
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;

    .line 79
    const-string v0, "ConnectManager"

    const-string v1, "addCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/ConnectManager;->mSpeechEngine:Lcom/xiaopeng/speech/ISpeechEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/speech/ConnectManager;->mSpeechEngine:Lcom/xiaopeng/speech/ISpeechEngine;

    invoke-interface {v0}, Lcom/xiaopeng/speech/ISpeechEngine;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/speech/ConnectManager;->mSpeechEngine:Lcom/xiaopeng/speech/ISpeechEngine;

    invoke-interface {v0}, Lcom/xiaopeng/speech/ISpeechEngine;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "ConnectManager"

    const-string v1, "addCallback onConnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/speech/ConnectManager;->mSpeechEngine:Lcom/xiaopeng/speech/ISpeechEngine;

    invoke-interface {p1, v0}, Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;->onConnect(Lcom/xiaopeng/speech/ISpeechEngine;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :cond_0
    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/String;)V

    .line 88
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/speech/ConnectManager;->mCallbackList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->addCallback(Ljava/lang/Object;)V

    .line 89
    return-void
.end method

.method public connect()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/speech/ConnectManager;->mWorkerHandler:Lcom/xiaopeng/speech/common/util/WorkerHandler;

    new-instance v1, Lcom/xiaopeng/speech/ConnectManager$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/ConnectManager$1;-><init>(Lcom/xiaopeng/speech/ConnectManager;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/WorkerHandler;->optPost(Ljava/lang/Runnable;)V

    .line 76
    return-void
.end method

.method public init(Lcom/xiaopeng/speech/common/util/WorkerHandler;)V
    .locals 1
    .param p1, "workerHandler"    # Lcom/xiaopeng/speech/common/util/WorkerHandler;

    .line 51
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/ConnectManager;->mRandom:Ljava/util/Random;

    .line 52
    iput-object p1, p0, Lcom/xiaopeng/speech/ConnectManager;->mWorkerHandler:Lcom/xiaopeng/speech/common/util/WorkerHandler;

    .line 53
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 163
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "carspeechservice.SpeechServer.Start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    const-string v0, "onReceive SPEECH_SERVER_ACTION_START"

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/speech/ConnectManager;->mSpeechEngine:Lcom/xiaopeng/speech/ISpeechEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/speech/ConnectManager;->mSpeechEngine:Lcom/xiaopeng/speech/ISpeechEngine;

    invoke-interface {v0}, Lcom/xiaopeng/speech/ISpeechEngine;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ConnectManager;->connect()V

    .line 169
    :cond_1
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 153
    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/ConnectManager;->queryBinder(Landroid/os/IBinder;)V

    .line 154
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 158
    invoke-direct {p0}, Lcom/xiaopeng/speech/ConnectManager;->disconnect()V

    .line 159
    return-void
.end method

.method public registerReceiver()V
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/speech/ConnectManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 57
    return-void

    .line 58
    :cond_0
    const-string v0, "ConnectManager"

    const-string v1, "registerReceiver"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/speech/ConnectManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "carspeechservice.SpeechServer.Start"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 60
    return-void
.end method

.method public removeCallback(Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/speech/ConnectManager;->mCallbackList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->removeCallback(Ljava/lang/Object;)V

    .line 93
    return-void
.end method
