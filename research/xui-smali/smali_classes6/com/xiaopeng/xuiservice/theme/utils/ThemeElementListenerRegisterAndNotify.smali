.class public Lcom/xiaopeng/xuiservice/theme/utils/ThemeElementListenerRegisterAndNotify;
.super Lcom/xiaopeng/xuimanager/utils/RegisterAndNotify;
.source "ThemeElementListenerRegisterAndNotify.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuimanager/utils/RegisterAndNotify<",
        "Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;",
        ">;",
        "Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/utils/RegisterAndNotify;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onQueryRemoteThemeElementFailed(II)V
    .locals 2
    .param p1, "elementType"    # I
    .param p2, "reason"    # I

    monitor-enter p0

    .line 49
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/theme/utils/ThemeElementListenerRegisterAndNotify;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;

    .line 50
    .local v1, "listener":Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;->onQueryRemoteThemeElementFailed(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .end local v1    # "listener":Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;
    goto :goto_0

    .line 52
    :cond_0
    monitor-exit p0

    return-void

    .line 48
    .end local p1    # "elementType":I
    .end local p2    # "reason":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/theme/utils/ThemeElementListenerRegisterAndNotify;
    throw p1
.end method

.method public declared-synchronized onQueryRemoteThemeElementSuccess(ILjava/util/List;)V
    .locals 2
    .param p1, "elementType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/theme/ThemeElement;",
            ">;)V"
        }
    .end annotation

    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/theme/ThemeElement;>;"
    monitor-enter p0

    .line 42
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/theme/utils/ThemeElementListenerRegisterAndNotify;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;

    .line 43
    .local v1, "listener":Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;->onQueryRemoteThemeElementSuccess(ILjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .end local v1    # "listener":Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;
    goto :goto_0

    .line 45
    :cond_0
    monitor-exit p0

    return-void

    .line 41
    .end local p1    # "elementType":I
    .end local p2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/theme/ThemeElement;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/theme/utils/ThemeElementListenerRegisterAndNotify;
    throw p1
.end method

.method public declared-synchronized onThemeElementAdded(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    .locals 2
    .param p1, "elementType"    # I
    .param p2, "themeElement"    # Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    monitor-enter p0

    .line 14
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/theme/utils/ThemeElementListenerRegisterAndNotify;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;

    .line 15
    .local v1, "listener":Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;->onThemeElementAdded(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .end local v1    # "listener":Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;
    goto :goto_0

    .line 17
    :cond_0
    monitor-exit p0

    return-void

    .line 13
    .end local p1    # "elementType":I
    .end local p2    # "themeElement":Lcom/xiaopeng/xuimanager/theme/ThemeElement;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/theme/utils/ThemeElementListenerRegisterAndNotify;
    throw p1
.end method

.method public declared-synchronized onThemeElementDeleted(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    .locals 2
    .param p1, "elementType"    # I
    .param p2, "themeElement"    # Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    monitor-enter p0

    .line 21
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/theme/utils/ThemeElementListenerRegisterAndNotify;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;

    .line 22
    .local v1, "listener":Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;->onThemeElementDeleted(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .end local v1    # "listener":Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;
    goto :goto_0

    .line 24
    :cond_0
    monitor-exit p0

    return-void

    .line 20
    .end local p1    # "elementType":I
    .end local p2    # "themeElement":Lcom/xiaopeng/xuimanager/theme/ThemeElement;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/theme/utils/ThemeElementListenerRegisterAndNotify;
    throw p1
.end method

.method public onThemeElementDownloadCancel(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    .locals 2
    .param p1, "elementType"    # I
    .param p2, "themeElement"    # Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    .line 77
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/theme/utils/ThemeElementListenerRegisterAndNotify;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;

    .line 78
    .local v1, "listener":Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;->onThemeElementDownloadCancel(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V

    .line 79
    .end local v1    # "listener":Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;
    goto :goto_0

    .line 80
    :cond_0
    return-void
.end method

.method public onThemeElementDownloadError(ILcom/xiaopeng/xuimanager/theme/ThemeElement;I)V
    .locals 2
    .param p1, "elementType"    # I
    .param p2, "themeElement"    # Lcom/xiaopeng/xuimanager/theme/ThemeElement;
    .param p3, "reason"    # I

    .line 84
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/theme/utils/ThemeElementListenerRegisterAndNotify;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;

    .line 85
    .local v1, "listener":Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;
    invoke-interface {v1, p1, p2, p3}, Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;->onThemeElementDownloadError(ILcom/xiaopeng/xuimanager/theme/ThemeElement;I)V

    .line 86
    .end local v1    # "listener":Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;
    goto :goto_0

    .line 87
    :cond_0
    return-void
.end method

.method public onThemeElementDownloadInProgress(ILcom/xiaopeng/xuimanager/theme/ThemeElement;F)V
    .locals 2
    .param p1, "elementType"    # I
    .param p2, "themeElement"    # Lcom/xiaopeng/xuimanager/theme/ThemeElement;
    .param p3, "progress"    # F

    .line 63
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/theme/utils/ThemeElementListenerRegisterAndNotify;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;

    .line 64
    .local v1, "listener":Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;
    invoke-interface {v1, p1, p2, p3}, Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;->onThemeElementDownloadInProgress(ILcom/xiaopeng/xuimanager/theme/ThemeElement;F)V

    .line 65
    .end local v1    # "listener":Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;
    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method

.method public onThemeElementDownloadPaused(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    .locals 2
    .param p1, "elementType"    # I
    .param p2, "themeElement"    # Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    .line 70
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/theme/utils/ThemeElementListenerRegisterAndNotify;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;

    .line 71
    .local v1, "listener":Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;->onThemeElementDownloadPaused(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V

    .line 72
    .end local v1    # "listener":Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;
    goto :goto_0

    .line 73
    :cond_0
    return-void
.end method

.method public onThemeElementDownloadStart(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    .locals 2
    .param p1, "elementType"    # I
    .param p2, "themeElement"    # Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    .line 56
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/theme/utils/ThemeElementListenerRegisterAndNotify;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;

    .line 57
    .local v1, "listener":Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;->onThemeElementDownloadStart(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V

    .line 58
    .end local v1    # "listener":Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;
    goto :goto_0

    .line 59
    :cond_0
    return-void
.end method

.method public declared-synchronized onThemeElementSelectionChanged(I)V
    .locals 2
    .param p1, "elementType"    # I

    monitor-enter p0

    .line 35
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/theme/utils/ThemeElementListenerRegisterAndNotify;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;

    .line 36
    .local v1, "listener":Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;->onThemeElementSelectionChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .end local v1    # "listener":Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;
    goto :goto_0

    .line 38
    :cond_0
    monitor-exit p0

    return-void

    .line 34
    .end local p1    # "elementType":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/theme/utils/ThemeElementListenerRegisterAndNotify;
    throw p1
.end method

.method public declared-synchronized onThemeElementUpdated(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    .locals 2
    .param p1, "elementType"    # I
    .param p2, "themeElement"    # Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    monitor-enter p0

    .line 28
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/theme/utils/ThemeElementListenerRegisterAndNotify;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;

    .line 29
    .local v1, "listener":Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;->onThemeElementUpdated(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .end local v1    # "listener":Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;
    goto :goto_0

    .line 31
    :cond_0
    monitor-exit p0

    return-void

    .line 27
    .end local p1    # "elementType":I
    .end local p2    # "themeElement":Lcom/xiaopeng/xuimanager/theme/ThemeElement;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/theme/utils/ThemeElementListenerRegisterAndNotify;
    throw p1
.end method
