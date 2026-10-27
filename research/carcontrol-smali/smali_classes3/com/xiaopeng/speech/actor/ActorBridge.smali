.class public Lcom/xiaopeng/speech/actor/ActorBridge;
.super Lcom/xiaopeng/speech/IActorBridge$Stub;
.source "ActorBridge.java"

# interfaces
.implements Lcom/xiaopeng/speech/ITransporter$Sender;
.implements Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/speech/common/util/IPCRunner<",
            "Lcom/xiaopeng/speech/IActorBridge;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkerHandler:Lcom/xiaopeng/speech/common/util/WorkerHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Lcom/xiaopeng/speech/IActorBridge$Stub;-><init>()V

    .line 23
    new-instance v0, Lcom/xiaopeng/speech/common/util/IPCRunner;

    const-string v1, "ActorBridge"

    invoke-direct {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/actor/ActorBridge;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    .line 27
    iput-object p1, p0, Lcom/xiaopeng/speech/actor/ActorBridge;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onConnect(Lcom/xiaopeng/speech/ISpeechEngine;)V
    .locals 1

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/actor/ActorBridge;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    invoke-interface {p1}, Lcom/xiaopeng/speech/ISpeechEngine;->getActorBridge()Lcom/xiaopeng/speech/IActorBridge;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->setProxy(Ljava/lang/Object;)V

    .line 39
    iget-object p1, p0, Lcom/xiaopeng/speech/actor/ActorBridge;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->fetchAll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "onConnect exception "

    .line 41
    invoke-static {p0, v0, p1}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onDisconnect()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/speech/actor/ActorBridge;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->setProxy(Ljava/lang/Object;)V

    return-void
.end method

.method public send(Lcom/xiaopeng/speech/actor/Actor;)V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/speech/actor/ActorBridge;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/actor/ActorBridge$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/actor/ActorBridge$1;-><init>(Lcom/xiaopeng/speech/actor/ActorBridge;Lcom/xiaopeng/speech/actor/Actor;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public setHandler(Lcom/xiaopeng/speech/common/util/WorkerHandler;)V
    .locals 1

    .line 31
    iput-object p1, p0, Lcom/xiaopeng/speech/actor/ActorBridge;->mWorkerHandler:Lcom/xiaopeng/speech/common/util/WorkerHandler;

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/speech/actor/ActorBridge;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->setWorkerHandler(Lcom/xiaopeng/speech/common/util/WorkerHandler;)V

    return-void
.end method
