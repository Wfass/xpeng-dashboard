.class public Lcom/xiaopeng/speech/common/util/IPCRunner;
.super Lcom/xiaopeng/speech/common/util/AsyncRunner;
.source "IPCRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Proxy:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaopeng/speech/common/util/AsyncRunner<",
        "Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile mProxy:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TProxy;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 17
    .local p0, "this":Lcom/xiaopeng/speech/common/util/IPCRunner;, "Lcom/xiaopeng/speech/common/util/IPCRunner<TProxy;>;"
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/common/util/AsyncRunner;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected declared-synchronized canRun()Z
    .locals 1

    .local p0, "this":Lcom/xiaopeng/speech/common/util/IPCRunner;, "Lcom/xiaopeng/speech/common/util/IPCRunner<TProxy;>;"
    monitor-enter p0

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/common/util/IPCRunner;->mProxy:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/common/util/IPCRunner;, "Lcom/xiaopeng/speech/common/util/IPCRunner<TProxy;>;"
    throw v0
.end method

.method protected declared-synchronized realRun(Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;)Ljava/lang/Object;
    .locals 3
    .param p1, "ipcFunc"    # Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;

    .local p0, "this":Lcom/xiaopeng/speech/common/util/IPCRunner;, "Lcom/xiaopeng/speech/common/util/IPCRunner<TProxy;>;"
    monitor-enter p0

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/common/util/IPCRunner;->mProxy:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 32
    .end local p1    # "ipcFunc":Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 34
    .restart local p1    # "ipcFunc":Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/speech/common/util/IPCRunner;->TAG:Ljava/lang/String;

    const-string v2, "ipc run catch exception "

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    .end local v0    # "e":Ljava/lang/Throwable;
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 32
    .end local p1    # "ipcFunc":Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;
    :goto_0
    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/common/util/IPCRunner;, "Lcom/xiaopeng/speech/common/util/IPCRunner<TProxy;>;"
    throw p1
.end method

.method protected bridge synthetic realRun(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 8
    .local p0, "this":Lcom/xiaopeng/speech/common/util/IPCRunner;, "Lcom/xiaopeng/speech/common/util/IPCRunner<TProxy;>;"
    check-cast p1, Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->realRun(Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized setProxy(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TProxy;)V"
        }
    .end annotation

    .local p0, "this":Lcom/xiaopeng/speech/common/util/IPCRunner;, "Lcom/xiaopeng/speech/common/util/IPCRunner<TProxy;>;"
    .local p1, "proxy":Ljava/lang/Object;, "TProxy;"
    monitor-enter p0

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/common/util/IPCRunner;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "proxy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lcom/xiaopeng/speech/common/util/IPCRunner;->mProxy:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit p0

    return-void

    .line 20
    .end local p1    # "proxy":Ljava/lang/Object;, "TProxy;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/common/util/IPCRunner;, "Lcom/xiaopeng/speech/common/util/IPCRunner<TProxy;>;"
    throw p1
.end method
