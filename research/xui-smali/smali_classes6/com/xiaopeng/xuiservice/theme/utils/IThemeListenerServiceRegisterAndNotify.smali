.class public Lcom/xiaopeng/xuiservice/theme/utils/IThemeListenerServiceRegisterAndNotify;
.super Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;
.source "IThemeListenerServiceRegisterAndNotify.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/theme/ThemeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<",
        "Lcom/xiaopeng/xuimanager/theme/IThemeListener;",
        ">;",
        "Lcom/xiaopeng/xuimanager/theme/ThemeListener;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "moduleTag"    # Ljava/lang/String;

    .line 19
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;-><init>(Ljava/lang/String;)V

    .line 20
    return-void
.end method


# virtual methods
.method public onDownloadCancel(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 6
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 135
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/theme/utils/IThemeListenerServiceRegisterAndNotify;->listeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/theme/IThemeListener;

    .line 137
    .local v1, "listener":Lcom/xiaopeng/xuimanager/theme/IThemeListener;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/theme/IThemeListener;->onDownloadCancel(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    goto :goto_1

    .line 138
    :catch_0
    move-exception v2

    .line 139
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/theme/utils/IThemeListenerServiceRegisterAndNotify;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notify onThemeDownloadCancel: theme="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    .end local v1    # "listener":Lcom/xiaopeng/xuimanager/theme/IThemeListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 142
    :cond_0
    return-void
.end method

.method public onDownloadError(Lcom/xiaopeng/xuimanager/theme/Theme;I)V
    .locals 6
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "reason"    # I

    .line 146
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/theme/utils/IThemeListenerServiceRegisterAndNotify;->listeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/theme/IThemeListener;

    .line 148
    .local v1, "listener":Lcom/xiaopeng/xuimanager/theme/IThemeListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/theme/IThemeListener;->onDownloadError(Lcom/xiaopeng/xuimanager/theme/Theme;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    goto :goto_1

    .line 149
    :catch_0
    move-exception v2

    .line 150
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/theme/utils/IThemeListenerServiceRegisterAndNotify;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notify onThemeDownloadError: theme="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    .end local v1    # "listener":Lcom/xiaopeng/xuimanager/theme/IThemeListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 153
    :cond_0
    return-void
.end method

.method public onDownloadInProgress(Lcom/xiaopeng/xuimanager/theme/Theme;F)V
    .locals 6
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "progress"    # F

    .line 113
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/theme/utils/IThemeListenerServiceRegisterAndNotify;->listeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/theme/IThemeListener;

    .line 115
    .local v1, "listener":Lcom/xiaopeng/xuimanager/theme/IThemeListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/theme/IThemeListener;->onDownloadInProgress(Lcom/xiaopeng/xuimanager/theme/Theme;F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    goto :goto_1

    .line 116
    :catch_0
    move-exception v2

    .line 117
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/theme/utils/IThemeListenerServiceRegisterAndNotify;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notify onThemeDownloadInProgress: theme="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", progress="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    .end local v1    # "listener":Lcom/xiaopeng/xuimanager/theme/IThemeListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 120
    :cond_0
    return-void
.end method

.method public onDownloadPaused(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 6
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 124
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/theme/utils/IThemeListenerServiceRegisterAndNotify;->listeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/theme/IThemeListener;

    .line 126
    .local v1, "listener":Lcom/xiaopeng/xuimanager/theme/IThemeListener;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/theme/IThemeListener;->onDownloadPaused(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    goto :goto_1

    .line 127
    :catch_0
    move-exception v2

    .line 128
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/theme/utils/IThemeListenerServiceRegisterAndNotify;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notify onDownloadPaused: theme="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    .end local v1    # "listener":Lcom/xiaopeng/xuimanager/theme/IThemeListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 131
    :cond_0
    return-void
.end method

.method public onDownloadStart(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 6
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 102
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/theme/utils/IThemeListenerServiceRegisterAndNotify;->listeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/theme/IThemeListener;

    .line 104
    .local v1, "listener":Lcom/xiaopeng/xuimanager/theme/IThemeListener;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/theme/IThemeListener;->onDownloadStart(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    goto :goto_1

    .line 105
    :catch_0
    move-exception v2

    .line 106
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/theme/utils/IThemeListenerServiceRegisterAndNotify;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notify onThemeDownloadStart: theme="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    .end local v1    # "listener":Lcom/xiaopeng/xuimanager/theme/IThemeListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 109
    :cond_0
    return-void
.end method

.method protected onFirstRegistered()V
    .locals 1

    .line 24
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->onFirstRegistered()V

    .line 25
    invoke-static {}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getInstance()Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->registerListener(Lcom/xiaopeng/xuimanager/theme/ThemeListener;)V

    .line 26
    return-void
.end method

.method protected onLastUnregistered()V
    .locals 1

    .line 30
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->onLastUnregistered()V

    .line 31
    invoke-static {}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getInstance()Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->unregisterListener(Lcom/xiaopeng/xuimanager/theme/ThemeListener;)V

    .line 32
    return-void
.end method

.method public onQueryRemoteThemeFailed(I)V
    .locals 6
    .param p1, "reason"    # I

    .line 91
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/theme/utils/IThemeListenerServiceRegisterAndNotify;->listeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/theme/IThemeListener;

    .line 93
    .local v1, "listener":Lcom/xiaopeng/xuimanager/theme/IThemeListener;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/theme/IThemeListener;->onQueryRemoteThemeFailed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    goto :goto_1

    .line 94
    :catch_0
    move-exception v2

    .line 95
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/theme/utils/IThemeListenerServiceRegisterAndNotify;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notify onQueryRemoteThemeFailed: reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    .end local v1    # "listener":Lcom/xiaopeng/xuimanager/theme/IThemeListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 98
    :cond_0
    return-void
.end method

.method public onQueryRemoteThemeSuccess(Ljava/util/List;)V
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/theme/Theme;",
            ">;)V"
        }
    .end annotation

    .line 80
    .local p1, "themes":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/theme/Theme;>;"
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/theme/utils/IThemeListenerServiceRegisterAndNotify;->listeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/theme/IThemeListener;

    .line 82
    .local v1, "listener":Lcom/xiaopeng/xuimanager/theme/IThemeListener;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/theme/IThemeListener;->onQueryRemoteThemeSuccess(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    goto :goto_1

    .line 83
    :catch_0
    move-exception v2

    .line 84
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/theme/utils/IThemeListenerServiceRegisterAndNotify;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notify onQueryRemoteThemeSuccess: themes="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    .end local v1    # "listener":Lcom/xiaopeng/xuimanager/theme/IThemeListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 87
    :cond_0
    return-void
.end method

.method public onThemeAdded(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 6
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 36
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/theme/utils/IThemeListenerServiceRegisterAndNotify;->listeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/theme/IThemeListener;

    .line 38
    .local v1, "listener":Lcom/xiaopeng/xuimanager/theme/IThemeListener;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/theme/IThemeListener;->onThemeAdded(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    goto :goto_1

    .line 39
    :catch_0
    move-exception v2

    .line 40
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/theme/utils/IThemeListenerServiceRegisterAndNotify;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notify onThemeAdded: theme="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    .end local v1    # "listener":Lcom/xiaopeng/xuimanager/theme/IThemeListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method

.method public onThemeDeleted(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 6
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 47
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/theme/utils/IThemeListenerServiceRegisterAndNotify;->listeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/theme/IThemeListener;

    .line 49
    .local v1, "listener":Lcom/xiaopeng/xuimanager/theme/IThemeListener;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/theme/IThemeListener;->onThemeDeleted(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    goto :goto_1

    .line 50
    :catch_0
    move-exception v2

    .line 51
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/theme/utils/IThemeListenerServiceRegisterAndNotify;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notify onThemeDeleted: theme="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    .end local v1    # "listener":Lcom/xiaopeng/xuimanager/theme/IThemeListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 54
    :cond_0
    return-void
.end method

.method public onThemeSelected(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 6
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 69
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/theme/utils/IThemeListenerServiceRegisterAndNotify;->listeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/theme/IThemeListener;

    .line 71
    .local v1, "listener":Lcom/xiaopeng/xuimanager/theme/IThemeListener;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/theme/IThemeListener;->onThemeSelected(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    goto :goto_1

    .line 72
    :catch_0
    move-exception v2

    .line 73
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/theme/utils/IThemeListenerServiceRegisterAndNotify;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notify onThemeSelected: theme="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    .end local v1    # "listener":Lcom/xiaopeng/xuimanager/theme/IThemeListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 76
    :cond_0
    return-void
.end method

.method public onThemeUpdated(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 6
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 58
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/theme/utils/IThemeListenerServiceRegisterAndNotify;->listeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/theme/IThemeListener;

    .line 60
    .local v1, "listener":Lcom/xiaopeng/xuimanager/theme/IThemeListener;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/theme/IThemeListener;->onThemeUpdated(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    goto :goto_1

    .line 61
    :catch_0
    move-exception v2

    .line 62
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/theme/utils/IThemeListenerServiceRegisterAndNotify;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notify onThemeUpdated: theme="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    .end local v1    # "listener":Lcom/xiaopeng/xuimanager/theme/IThemeListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 65
    :cond_0
    return-void
.end method
