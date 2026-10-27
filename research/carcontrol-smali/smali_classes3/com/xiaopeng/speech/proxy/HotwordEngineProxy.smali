.class public Lcom/xiaopeng/speech/proxy/HotwordEngineProxy;
.super Lcom/xiaopeng/speech/coreapi/IHotwordEngine$Stub;
.source "HotwordEngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;


# static fields
.field public static final BY_AUTO_PARKING:Ljava/lang/String; = "autoParking"

.field public static final BY_BLUETOOTH_PHONE:Ljava/lang/String; = "bluetoothPhone"

.field public static final BY_PARKING_ALONG_THE_WAY:Ljava/lang/String; = "parkingAlongTheWay"


# instance fields
.field private mHotwordEngine:Lcom/xiaopeng/speech/coreapi/IHotwordEngine;

.field private mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/speech/common/util/IPCRunner<",
            "Lcom/xiaopeng/speech/coreapi/IHotwordEngine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Lcom/xiaopeng/speech/coreapi/IHotwordEngine$Stub;-><init>()V

    .line 19
    new-instance v0, Lcom/xiaopeng/speech/common/util/IPCRunner;

    const-string v1, "HotwordEngineProxy"

    invoke-direct {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/proxy/HotwordEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    return-void
.end method


# virtual methods
.method public enjectHotwords(Ljava/lang/String;)V
    .locals 0

    const-string p1, "abandoned function: enjectHotwords."

    .line 52
    invoke-static {p1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/String;)V

    return-void
.end method

.method public getHotwordEngineState()I
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/HotwordEngineProxy;->mHotwordEngine:Lcom/xiaopeng/speech/coreapi/IHotwordEngine;

    if-eqz v0, :cond_0

    .line 64
    :try_start_0
    invoke-interface {v0}, Lcom/xiaopeng/speech/coreapi/IHotwordEngine;->getHotwordEngineState()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 66
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public injectHotWords(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/HotwordEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/HotwordEngineProxy$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/proxy/HotwordEngineProxy$2;-><init>(Lcom/xiaopeng/speech/proxy/HotwordEngineProxy;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public injectHotWordsByBinder(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/HotwordEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/HotwordEngineProxy$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/speech/proxy/HotwordEngineProxy$3;-><init>(Lcom/xiaopeng/speech/proxy/HotwordEngineProxy;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public onConnect(Lcom/xiaopeng/speech/ISpeechEngine;)V
    .locals 1

    .line 32
    :try_start_0
    invoke-interface {p1}, Lcom/xiaopeng/speech/ISpeechEngine;->getHotwordEngine()Lcom/xiaopeng/speech/coreapi/IHotwordEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    invoke-interface {p1}, Lcom/xiaopeng/speech/ISpeechEngine;->getHotwordEngine()Lcom/xiaopeng/speech/coreapi/IHotwordEngine;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/HotwordEngineProxy;->mHotwordEngine:Lcom/xiaopeng/speech/coreapi/IHotwordEngine;

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/HotwordEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->setProxy(Ljava/lang/Object;)V

    .line 35
    iget-object p1, p0, Lcom/xiaopeng/speech/proxy/HotwordEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->fetchAll()V

    goto :goto_0

    :cond_0
    const-string p1, "HotwordEngineProxy"

    const-string v0, "mHotwordEngine = null"

    .line 37
    invoke-static {p1, v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "onConnect exception "

    .line 40
    invoke-static {p0, v0, p1}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onDisconnect()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/HotwordEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->setProxy(Ljava/lang/Object;)V

    .line 47
    iput-object v1, p0, Lcom/xiaopeng/speech/proxy/HotwordEngineProxy;->mHotwordEngine:Lcom/xiaopeng/speech/coreapi/IHotwordEngine;

    return-void
.end method

.method public removeHotWords(Ljava/lang/String;)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/HotwordEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/HotwordEngineProxy$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/HotwordEngineProxy$1;-><init>(Lcom/xiaopeng/speech/proxy/HotwordEngineProxy;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public removeHotwords()V
    .locals 1

    const-string v0, "abandoned function: removeHotwords."

    .line 57
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/String;)V

    return-void
.end method

.method public setHandler(Lcom/xiaopeng/speech/common/util/WorkerHandler;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/HotwordEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->setWorkerHandler(Lcom/xiaopeng/speech/common/util/WorkerHandler;)V

    return-void
.end method
