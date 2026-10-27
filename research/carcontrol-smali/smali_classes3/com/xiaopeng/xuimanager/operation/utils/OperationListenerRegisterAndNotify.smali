.class public Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;
.super Lcom/xiaopeng/xuimanager/utils/XUIManagerRegisterAndNotifyWithMap;
.source "OperationListenerRegisterAndNotify.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/operation/IOperationListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuimanager/utils/XUIManagerRegisterAndNotifyWithMap<",
        "Ljava/lang/Integer;",
        "Lcom/xiaopeng/xuimanager/operation/IOperationListener;",
        ">;",
        "Lcom/xiaopeng/xuimanager/operation/IOperationListener;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector<",
            "**>;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/utils/XUIManagerRegisterAndNotifyWithMap;-><init>(Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized onDownloadCancel(ILcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 2

    monitor-enter p0

    .line 97
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;->getListeners(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/operation/IOperationListener;

    .line 98
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/operation/IOperationListener;->onDownloadCancel(ILcom/xiaopeng/xuimanager/operation/OperationResource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 100
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onDownloadError(ILcom/xiaopeng/xuimanager/operation/OperationResource;I)V
    .locals 2

    monitor-enter p0

    .line 104
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;->getListeners(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/operation/IOperationListener;

    .line 105
    invoke-interface {v1, p1, p2, p3}, Lcom/xiaopeng/xuimanager/operation/IOperationListener;->onDownloadError(ILcom/xiaopeng/xuimanager/operation/OperationResource;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 107
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onDownloadInProgress(ILcom/xiaopeng/xuimanager/operation/OperationResource;F)V
    .locals 2

    monitor-enter p0

    .line 83
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;->getListeners(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/operation/IOperationListener;

    .line 84
    invoke-interface {v1, p1, p2, p3}, Lcom/xiaopeng/xuimanager/operation/IOperationListener;->onDownloadInProgress(ILcom/xiaopeng/xuimanager/operation/OperationResource;F)V
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

.method public declared-synchronized onDownloadPaused(ILcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 2

    monitor-enter p0

    .line 90
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;->getListeners(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/operation/IOperationListener;

    .line 91
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/operation/IOperationListener;->onDownloadPaused(ILcom/xiaopeng/xuimanager/operation/OperationResource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 93
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onDownloadStart(ILcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 2

    monitor-enter p0

    .line 76
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;->getListeners(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/operation/IOperationListener;

    .line 77
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/operation/IOperationListener;->onDownloadStart(ILcom/xiaopeng/xuimanager/operation/OperationResource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 79
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onOperationResourceSyncCompleted(ILcom/xiaopeng/xuimanager/operation/OperationSyncResult;)V
    .locals 2

    monitor-enter p0

    .line 62
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;->getListeners(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/operation/IOperationListener;

    .line 63
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/operation/IOperationListener;->onOperationResourceSyncCompleted(ILcom/xiaopeng/xuimanager/operation/OperationSyncResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 65
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onOperationResourceUpdated(ILcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 2

    monitor-enter p0

    .line 41
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;->getListeners(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/operation/IOperationListener;

    .line 42
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/operation/IOperationListener;->onOperationResourceUpdated(ILcom/xiaopeng/xuimanager/operation/OperationResource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 44
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onOperationSourceAdd(ILcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 2

    monitor-enter p0

    .line 20
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;->getListeners(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/operation/IOperationListener;

    .line 21
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/operation/IOperationListener;->onOperationSourceAdd(ILcom/xiaopeng/xuimanager/operation/OperationResource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 23
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onOperationSourceDelete(ILcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 2

    monitor-enter p0

    .line 34
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;->getListeners(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/operation/IOperationListener;

    .line 35
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/operation/IOperationListener;->onOperationSourceDelete(ILcom/xiaopeng/xuimanager/operation/OperationResource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 37
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onOperationSourceExpire(ILcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 2

    monitor-enter p0

    .line 27
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;->getListeners(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/operation/IOperationListener;

    .line 28
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/operation/IOperationListener;->onOperationSourceExpire(ILcom/xiaopeng/xuimanager/operation/OperationResource;)V
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

.method public declared-synchronized onOperationSourceSelectionChanged(I)V
    .locals 2

    monitor-enter p0

    .line 69
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;->getListeners(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/operation/IOperationListener;

    .line 70
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/operation/IOperationListener;->onOperationSourceSelectionChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 72
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onRemoteSourceQueryFailed(II)V
    .locals 2

    monitor-enter p0

    .line 55
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;->getListeners(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/operation/IOperationListener;

    .line 56
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/operation/IOperationListener;->onRemoteSourceQueryFailed(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 58
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onRemoteSourceQuerySuccess(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/operation/OperationResource;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 48
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;->getListeners(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/operation/IOperationListener;

    .line 49
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/operation/IOperationListener;->onRemoteSourceQuerySuccess(ILjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 51
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
