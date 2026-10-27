.class public Lcom/xiaopeng/speech/proxy/WindowEngineProxy;
.super Lcom/xiaopeng/speech/IWindowEngine$Stub;
.source "WindowEngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowEngineProxy"


# instance fields
.field private mIPCRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/speech/common/util/IPCRunner<",
            "Lcom/xiaopeng/speech/IWindowEngine;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowEngine:Lcom/xiaopeng/speech/IWindowEngine;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Lcom/xiaopeng/speech/IWindowEngine$Stub;-><init>()V

    .line 20
    new-instance v0, Lcom/xiaopeng/speech/common/util/IPCRunner;

    const-string v1, "WindowEngineProxy"

    invoke-direct {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/proxy/WindowEngineProxy;->mIPCRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    .line 23
    return-void
.end method


# virtual methods
.method public closeWindow(I)V
    .locals 3
    .param p1, "from"    # I

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WindowEngineProxy;->mWindowEngine:Lcom/xiaopeng/speech/IWindowEngine;

    if-eqz v0, :cond_1

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WindowEngineProxy;->mWindowEngine:Lcom/xiaopeng/speech/IWindowEngine;

    invoke-interface {v0, p1}, Lcom/xiaopeng/speech/IWindowEngine;->closeWindow(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    goto :goto_1

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WindowEngineProxy"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "null"

    :goto_0
    invoke-static {v1, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    return-void
.end method

.method public getShowingWindow()I
    .locals 3

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WindowEngineProxy;->mWindowEngine:Lcom/xiaopeng/speech/IWindowEngine;

    if-eqz v0, :cond_1

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WindowEngineProxy;->mWindowEngine:Lcom/xiaopeng/speech/IWindowEngine;

    invoke-interface {v0}, Lcom/xiaopeng/speech/IWindowEngine;->getShowingWindow()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WindowEngineProxy"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "null"

    :goto_0
    invoke-static {v1, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isShowingWindow(I)Z
    .locals 3
    .param p1, "target"    # I

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WindowEngineProxy;->mWindowEngine:Lcom/xiaopeng/speech/IWindowEngine;

    if-eqz v0, :cond_1

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WindowEngineProxy;->mWindowEngine:Lcom/xiaopeng/speech/IWindowEngine;

    invoke-interface {v0, p1}, Lcom/xiaopeng/speech/IWindowEngine;->isShowingWindow(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WindowEngineProxy"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "null"

    :goto_0
    invoke-static {v1, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onConnect(Lcom/xiaopeng/speech/ISpeechEngine;)V
    .locals 3
    .param p1, "speechEngine"    # Lcom/xiaopeng/speech/ISpeechEngine;

    .line 106
    if-eqz p1, :cond_1

    .line 108
    :try_start_0
    invoke-interface {p1}, Lcom/xiaopeng/speech/ISpeechEngine;->getWindowEngine()Lcom/xiaopeng/speech/IWindowEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/proxy/WindowEngineProxy;->mWindowEngine:Lcom/xiaopeng/speech/IWindowEngine;

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WindowEngineProxy;->mIPCRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    iget-object v1, p0, Lcom/xiaopeng/speech/proxy/WindowEngineProxy;->mWindowEngine:Lcom/xiaopeng/speech/IWindowEngine;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->setProxy(Ljava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WindowEngineProxy;->mIPCRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/IPCRunner;->fetchAll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    goto :goto_1

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WindowEngineProxy"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "null"

    :goto_0
    invoke-static {v1, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    return-void
.end method

.method public onDisconnect()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WindowEngineProxy;->mIPCRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->setProxy(Ljava/lang/Object;)V

    .line 120
    iput-object v1, p0, Lcom/xiaopeng/speech/proxy/WindowEngineProxy;->mWindowEngine:Lcom/xiaopeng/speech/IWindowEngine;

    .line 121
    return-void
.end method

.method public onWindowAttached(I)V
    .locals 2
    .param p1, "from"    # I

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WindowEngineProxy;->mIPCRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WindowEngineProxy$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/WindowEngineProxy$1;-><init>(Lcom/xiaopeng/speech/proxy/WindowEngineProxy;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method public onWindowDetached(I)V
    .locals 2
    .param p1, "from"    # I

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WindowEngineProxy;->mIPCRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WindowEngineProxy$2;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/WindowEngineProxy$2;-><init>(Lcom/xiaopeng/speech/proxy/WindowEngineProxy;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public setAnimState(II)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "from"    # I

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WindowEngineProxy;->mIPCRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WindowEngineProxy$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/proxy/WindowEngineProxy$3;-><init>(Lcom/xiaopeng/speech/proxy/WindowEngineProxy;II)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 102
    return-void
.end method

.method public setShowingWindow(IZ)V
    .locals 3
    .param p1, "target"    # I
    .param p2, "isShowing"    # Z

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WindowEngineProxy;->mWindowEngine:Lcom/xiaopeng/speech/IWindowEngine;

    if-eqz v0, :cond_1

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WindowEngineProxy;->mWindowEngine:Lcom/xiaopeng/speech/IWindowEngine;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/speech/IWindowEngine;->setShowingWindow(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    goto :goto_1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WindowEngineProxy"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "null"

    :goto_0
    invoke-static {v1, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    return-void
.end method
