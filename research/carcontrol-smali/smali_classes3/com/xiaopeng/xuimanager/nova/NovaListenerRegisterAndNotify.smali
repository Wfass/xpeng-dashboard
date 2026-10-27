.class public Lcom/xiaopeng/xuimanager/nova/NovaListenerRegisterAndNotify;
.super Lcom/xiaopeng/xuimanager/utils/RegisterAndNotifyWithMap;
.source "NovaListenerRegisterAndNotify.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/nova/NovaListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuimanager/utils/RegisterAndNotifyWithMap<",
        "Ljava/lang/Integer;",
        "Lcom/xiaopeng/xuimanager/nova/NovaListener;",
        ">;",
        "Lcom/xiaopeng/xuimanager/nova/NovaListener;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/utils/RegisterAndNotifyWithMap;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onDownloadCanceled(ILcom/xiaopeng/xuimanager/nova/NovaResource;)V
    .locals 2

    monitor-enter p0

    .line 106
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuimanager/nova/NovaListener;->onDownloadCanceled(ILcom/xiaopeng/xuimanager/nova/NovaResource;)V

    .line 107
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/nova/NovaListenerRegisterAndNotify;->getListeners(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/nova/NovaListener;

    .line 108
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/nova/NovaListener;->onDownloadCanceled(ILcom/xiaopeng/xuimanager/nova/NovaResource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 110
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onDownloadError(ILcom/xiaopeng/xuimanager/nova/NovaResource;I)V
    .locals 2

    monitor-enter p0

    .line 114
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/nova/NovaListener;->onDownloadError(ILcom/xiaopeng/xuimanager/nova/NovaResource;I)V

    .line 115
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/nova/NovaListenerRegisterAndNotify;->getListeners(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/nova/NovaListener;

    .line 116
    invoke-interface {v1, p1, p2, p3}, Lcom/xiaopeng/xuimanager/nova/NovaListener;->onDownloadError(ILcom/xiaopeng/xuimanager/nova/NovaResource;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 118
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onDownloadInProgress(ILcom/xiaopeng/xuimanager/nova/NovaResource;Lcom/xiaopeng/xuimanager/nova/NovaDownloadProgress;)V
    .locals 2

    monitor-enter p0

    .line 82
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/nova/NovaListener;->onDownloadInProgress(ILcom/xiaopeng/xuimanager/nova/NovaResource;Lcom/xiaopeng/xuimanager/nova/NovaDownloadProgress;)V

    .line 83
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/nova/NovaListenerRegisterAndNotify;->getListeners(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/nova/NovaListener;

    .line 84
    invoke-interface {v1, p1, p2, p3}, Lcom/xiaopeng/xuimanager/nova/NovaListener;->onDownloadInProgress(ILcom/xiaopeng/xuimanager/nova/NovaResource;Lcom/xiaopeng/xuimanager/nova/NovaDownloadProgress;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 86
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onDownloadPaused(ILcom/xiaopeng/xuimanager/nova/NovaResource;)V
    .locals 2

    monitor-enter p0

    .line 90
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuimanager/nova/NovaListener;->onDownloadPaused(ILcom/xiaopeng/xuimanager/nova/NovaResource;)V

    .line 91
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/nova/NovaListenerRegisterAndNotify;->getListeners(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/nova/NovaListener;

    .line 92
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/nova/NovaListener;->onDownloadPaused(ILcom/xiaopeng/xuimanager/nova/NovaResource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 94
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onDownloadResumed(ILcom/xiaopeng/xuimanager/nova/NovaResource;)V
    .locals 2

    monitor-enter p0

    .line 98
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuimanager/nova/NovaListener;->onDownloadResumed(ILcom/xiaopeng/xuimanager/nova/NovaResource;)V

    .line 99
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/nova/NovaListenerRegisterAndNotify;->getListeners(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/nova/NovaListener;

    .line 100
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/nova/NovaListener;->onDownloadResumed(ILcom/xiaopeng/xuimanager/nova/NovaResource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 102
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onDownloadStarted(ILcom/xiaopeng/xuimanager/nova/NovaResource;)V
    .locals 2

    monitor-enter p0

    .line 74
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuimanager/nova/NovaListener;->onDownloadStarted(ILcom/xiaopeng/xuimanager/nova/NovaResource;)V

    .line 75
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/nova/NovaListenerRegisterAndNotify;->getListeners(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/nova/NovaListener;

    .line 76
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/nova/NovaListener;->onDownloadStarted(ILcom/xiaopeng/xuimanager/nova/NovaResource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 78
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onReceivePushMessage(ILjava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 58
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuimanager/nova/NovaListener;->onReceivePushMessage(ILjava/lang/String;)V

    .line 59
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/nova/NovaListenerRegisterAndNotify;->getListeners(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/nova/NovaListener;

    .line 60
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/nova/NovaListener;->onReceivePushMessage(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 62
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onResourceAdded(ILcom/xiaopeng/xuimanager/nova/NovaResource;)V
    .locals 2

    monitor-enter p0

    .line 10
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuimanager/nova/NovaListener;->onResourceAdded(ILcom/xiaopeng/xuimanager/nova/NovaResource;)V

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/nova/NovaListenerRegisterAndNotify;->getListeners(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/nova/NovaListener;

    .line 12
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/nova/NovaListener;->onResourceAdded(ILcom/xiaopeng/xuimanager/nova/NovaResource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 14
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onResourceDeleted(ILcom/xiaopeng/xuimanager/nova/NovaResource;)V
    .locals 2

    monitor-enter p0

    .line 26
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuimanager/nova/NovaListener;->onResourceDeleted(ILcom/xiaopeng/xuimanager/nova/NovaResource;)V

    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/nova/NovaListenerRegisterAndNotify;->getListeners(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/nova/NovaListener;

    .line 28
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/nova/NovaListener;->onResourceDeleted(ILcom/xiaopeng/xuimanager/nova/NovaResource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 30
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onResourceReady(ILcom/xiaopeng/xuimanager/nova/NovaResource;Z)V
    .locals 2

    monitor-enter p0

    .line 34
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/nova/NovaListener;->onResourceReady(ILcom/xiaopeng/xuimanager/nova/NovaResource;Z)V

    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/nova/NovaListenerRegisterAndNotify;->getListeners(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/nova/NovaListener;

    .line 36
    invoke-interface {v1, p1, p2, p3}, Lcom/xiaopeng/xuimanager/nova/NovaListener;->onResourceReady(ILcom/xiaopeng/xuimanager/nova/NovaResource;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 38
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onResourceUpdated(ILcom/xiaopeng/xuimanager/nova/NovaResource;)V
    .locals 2

    monitor-enter p0

    .line 18
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuimanager/nova/NovaListener;->onResourceUpdated(ILcom/xiaopeng/xuimanager/nova/NovaResource;)V

    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/nova/NovaListenerRegisterAndNotify;->getListeners(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/nova/NovaListener;

    .line 20
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/nova/NovaListener;->onResourceUpdated(ILcom/xiaopeng/xuimanager/nova/NovaResource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 22
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onSelectionChanged(I)V
    .locals 2

    monitor-enter p0

    .line 66
    :try_start_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xuimanager/nova/NovaListener;->onSelectionChanged(I)V

    .line 67
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/nova/NovaListenerRegisterAndNotify;->getListeners(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/nova/NovaListener;

    .line 68
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/nova/NovaListener;->onSelectionChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 70
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onSyncCompleted(ILcom/xiaopeng/xuimanager/nova/NovaSyncResult;)V
    .locals 2

    monitor-enter p0

    .line 50
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuimanager/nova/NovaListener;->onSyncCompleted(ILcom/xiaopeng/xuimanager/nova/NovaSyncResult;)V

    .line 51
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/nova/NovaListenerRegisterAndNotify;->getListeners(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/nova/NovaListener;

    .line 52
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/nova/NovaListener;->onSyncCompleted(ILcom/xiaopeng/xuimanager/nova/NovaSyncResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 54
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onSyncStart(I)V
    .locals 2

    monitor-enter p0

    .line 42
    :try_start_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xuimanager/nova/NovaListener;->onSyncStart(I)V

    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/nova/NovaListenerRegisterAndNotify;->getListeners(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/nova/NovaListener;

    .line 44
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/nova/NovaListener;->onSyncStart(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 46
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
