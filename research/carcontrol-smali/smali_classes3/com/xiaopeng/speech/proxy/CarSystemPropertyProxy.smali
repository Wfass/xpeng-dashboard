.class public Lcom/xiaopeng/speech/proxy/CarSystemPropertyProxy;
.super Lcom/xiaopeng/speech/ICarSystemProperty$Stub;
.source "CarSystemPropertyProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "CarSystemPropertyProxy"


# instance fields
.field private mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/speech/common/util/IPCRunner<",
            "Lcom/xiaopeng/speech/ICarSystemProperty;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Lcom/xiaopeng/speech/ICarSystemProperty$Stub;-><init>()V

    .line 15
    new-instance v0, Lcom/xiaopeng/speech/common/util/IPCRunner;

    const-string v1, "CarSystemPropertyProxy"

    invoke-direct {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/proxy/CarSystemPropertyProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    return-void
.end method


# virtual methods
.method public getCarType()Ljava/lang/String;
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/CarSystemPropertyProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/CarSystemPropertyProxy$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/CarSystemPropertyProxy$1;-><init>(Lcom/xiaopeng/speech/proxy/CarSystemPropertyProxy;)V

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getOverseasCarType()Ljava/lang/String;
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/CarSystemPropertyProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/CarSystemPropertyProxy$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/CarSystemPropertyProxy$2;-><init>(Lcom/xiaopeng/speech/proxy/CarSystemPropertyProxy;)V

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public onConnect(Lcom/xiaopeng/speech/ISpeechEngine;)V
    .locals 2

    :try_start_0
    const-string v0, "CarSystemPropertyProxy"

    const-string v1, "onConnect."

    .line 20
    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/CarSystemPropertyProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    invoke-interface {p1}, Lcom/xiaopeng/speech/ISpeechEngine;->getCarSystemProperty()Lcom/xiaopeng/speech/ICarSystemProperty;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->setProxy(Ljava/lang/Object;)V

    .line 22
    iget-object p1, p0, Lcom/xiaopeng/speech/proxy/CarSystemPropertyProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->fetchAll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 24
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onDisconnect()V
    .locals 2

    const-string v0, "CarSystemPropertyProxy"

    const-string v1, "onDisconnect."

    .line 30
    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/CarSystemPropertyProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->setProxy(Ljava/lang/Object;)V

    return-void
.end method
