.class public Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;
.super Lcom/xiaopeng/xuimanager/utils/XUIManagerRegisterAndNotify;
.source "ThemeListenerRegisterAndNotify.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/theme/ThemeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuimanager/utils/XUIManagerRegisterAndNotify<",
        "Lcom/xiaopeng/xuimanager/theme/ThemeListener;",
        ">;",
        "Lcom/xiaopeng/xuimanager/theme/ThemeListener;"
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

    .line 14
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/utils/XUIManagerRegisterAndNotify;-><init>(Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized onDownloadCancel(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 2

    monitor-enter p0

    .line 99
    :try_start_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeListener;->onDownloadCancel(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 100
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/theme/ThemeListener;

    .line 101
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeListener;->onDownloadCancel(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 103
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onDownloadError(Lcom/xiaopeng/xuimanager/theme/Theme;I)V
    .locals 2

    monitor-enter p0

    .line 107
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeListener;->onDownloadError(Lcom/xiaopeng/xuimanager/theme/Theme;I)V

    .line 108
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/theme/ThemeListener;

    .line 109
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeListener;->onDownloadError(Lcom/xiaopeng/xuimanager/theme/Theme;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 111
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onDownloadInProgress(Lcom/xiaopeng/xuimanager/theme/Theme;F)V
    .locals 2

    monitor-enter p0

    .line 83
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeListener;->onDownloadInProgress(Lcom/xiaopeng/xuimanager/theme/Theme;F)V

    .line 84
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/theme/ThemeListener;

    .line 85
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeListener;->onDownloadInProgress(Lcom/xiaopeng/xuimanager/theme/Theme;F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 87
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onDownloadPaused(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 2

    monitor-enter p0

    .line 91
    :try_start_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeListener;->onDownloadPaused(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 92
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/theme/ThemeListener;

    .line 93
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeListener;->onDownloadPaused(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 95
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onDownloadStart(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 2

    monitor-enter p0

    .line 75
    :try_start_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeListener;->onDownloadStart(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 76
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/theme/ThemeListener;

    .line 77
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeListener;->onDownloadStart(Lcom/xiaopeng/xuimanager/theme/Theme;)V
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

.method public declared-synchronized onQueryRemoteThemeFailed(I)V
    .locals 2

    monitor-enter p0

    .line 67
    :try_start_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeListener;->onQueryRemoteThemeFailed(I)V

    .line 68
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/theme/ThemeListener;

    .line 69
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeListener;->onQueryRemoteThemeFailed(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 71
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onQueryRemoteThemeSuccess(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/theme/Theme;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 59
    :try_start_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeListener;->onQueryRemoteThemeSuccess(Ljava/util/List;)V

    .line 60
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/theme/ThemeListener;

    .line 61
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeListener;->onQueryRemoteThemeSuccess(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 63
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onThemeAdded(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 2

    monitor-enter p0

    .line 19
    :try_start_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeListener;->onThemeAdded(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 20
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/theme/ThemeListener;

    .line 21
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeListener;->onThemeAdded(Lcom/xiaopeng/xuimanager/theme/Theme;)V
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

.method public declared-synchronized onThemeDeleted(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 2

    monitor-enter p0

    .line 27
    :try_start_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeListener;->onThemeDeleted(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 28
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/theme/ThemeListener;

    .line 29
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeListener;->onThemeDeleted(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 31
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onThemeSelected(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 2

    monitor-enter p0

    .line 51
    :try_start_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeListener;->onThemeSelected(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 52
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/theme/ThemeListener;

    .line 53
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeListener;->onThemeSelected(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 55
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onThemeUpdated(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 2

    monitor-enter p0

    .line 35
    :try_start_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeListener;->onThemeUpdated(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 36
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/theme/ThemeListener;

    .line 37
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeListener;->onThemeUpdated(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 39
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onThemeUpdated(Lcom/xiaopeng/xuimanager/theme/Theme;Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 2

    monitor-enter p0

    .line 43
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeListener;->onThemeUpdated(Lcom/xiaopeng/xuimanager/theme/Theme;Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 44
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/theme/ThemeListener;

    .line 45
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeListener;->onThemeUpdated(Lcom/xiaopeng/xuimanager/theme/Theme;Lcom/xiaopeng/xuimanager/theme/Theme;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 47
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
