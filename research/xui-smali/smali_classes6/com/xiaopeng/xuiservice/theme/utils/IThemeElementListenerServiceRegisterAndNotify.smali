.class public Lcom/xiaopeng/xuiservice/theme/utils/IThemeElementListenerServiceRegisterAndNotify;
.super Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;
.source "IThemeElementListenerServiceRegisterAndNotify.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<",
        "Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;",
        ">;",
        "Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "moduleTag"    # Ljava/lang/String;

    .line 18
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;-><init>(Ljava/lang/String;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected onFirstRegistered()V
    .locals 1

    .line 23
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->onFirstRegistered()V

    .line 24
    invoke-static {}, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;->getInstance()Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;->register(Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;)V

    .line 25
    return-void
.end method

.method protected onLastUnregistered()V
    .locals 1

    .line 29
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->onLastUnregistered()V

    .line 30
    invoke-static {}, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;->getInstance()Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;->unregister(Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;)V

    .line 31
    return-void
.end method

.method public onQueryRemoteThemeElementFailed(II)V
    .locals 6
    .param p1, "elementType"    # I
    .param p2, "reason"    # I

    .line 90
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/theme/utils/IThemeElementListenerServiceRegisterAndNotify;->listeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;

    .line 92
    .local v1, "l":Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;->onQueryRemoteThemeElementFailed(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    goto :goto_1

    .line 93
    :catch_0
    move-exception v2

    .line 94
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/theme/utils/IThemeElementListenerServiceRegisterAndNotify;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notify onQueryRemoteThemeElementFailed: elementType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 97
    :cond_0
    return-void
.end method

.method public onQueryRemoteThemeElementSuccess(ILjava/util/List;)V
    .locals 6
    .param p1, "elementType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/theme/ThemeElement;",
            ">;)V"
        }
    .end annotation

    .line 79
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/theme/ThemeElement;>;"
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/theme/utils/IThemeElementListenerServiceRegisterAndNotify;->listeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;

    .line 81
    .local v1, "l":Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;->onQueryRemoteThemeElementSuccess(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    goto :goto_1

    .line 82
    :catch_0
    move-exception v2

    .line 83
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/theme/utils/IThemeElementListenerServiceRegisterAndNotify;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notify onQueryRemoteThemeElementSuccess: elementType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", list="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 86
    :cond_0
    return-void
.end method

.method public onThemeElementAdded(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    .locals 6
    .param p1, "elementType"    # I
    .param p2, "themeElement"    # Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    .line 35
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/theme/utils/IThemeElementListenerServiceRegisterAndNotify;->listeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;

    .line 37
    .local v1, "l":Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;->onThemeElementAdded(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    goto :goto_1

    .line 38
    :catch_0
    move-exception v2

    .line 39
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/theme/utils/IThemeElementListenerServiceRegisterAndNotify;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notify onThemeElementAdded: elementType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", themeElement="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 42
    :cond_0
    return-void
.end method

.method public onThemeElementDeleted(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    .locals 6
    .param p1, "elementType"    # I
    .param p2, "themeElement"    # Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    .line 46
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/theme/utils/IThemeElementListenerServiceRegisterAndNotify;->listeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;

    .line 48
    .local v1, "l":Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;->onThemeElementDeleted(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    goto :goto_1

    .line 49
    :catch_0
    move-exception v2

    .line 50
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/theme/utils/IThemeElementListenerServiceRegisterAndNotify;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notify onThemeElementDeleted: elementType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", themeElement="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 53
    :cond_0
    return-void
.end method

.method public onThemeElementDownloadCancel(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    .locals 6
    .param p1, "elementType"    # I
    .param p2, "themeElement"    # Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    .line 134
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/theme/utils/IThemeElementListenerServiceRegisterAndNotify;->listeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;

    .line 136
    .local v1, "l":Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;->onThemeElementDownloadCancel(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    goto :goto_1

    .line 137
    :catch_0
    move-exception v2

    .line 138
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/theme/utils/IThemeElementListenerServiceRegisterAndNotify;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notify onThemeElementDownloadCancel: elementType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", themeElement="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 141
    :cond_0
    return-void
.end method

.method public onThemeElementDownloadError(ILcom/xiaopeng/xuimanager/theme/ThemeElement;I)V
    .locals 6
    .param p1, "elementType"    # I
    .param p2, "themeElement"    # Lcom/xiaopeng/xuimanager/theme/ThemeElement;
    .param p3, "reason"    # I

    .line 145
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/theme/utils/IThemeElementListenerServiceRegisterAndNotify;->listeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;

    .line 147
    .local v1, "l":Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;->onThemeElementDownloadError(ILcom/xiaopeng/xuimanager/theme/ThemeElement;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    goto :goto_1

    .line 148
    :catch_0
    move-exception v2

    .line 149
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/theme/utils/IThemeElementListenerServiceRegisterAndNotify;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notify onThemeElementDownloadError: elementType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", themeElement="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 152
    :cond_0
    return-void
.end method

.method public onThemeElementDownloadInProgress(ILcom/xiaopeng/xuimanager/theme/ThemeElement;F)V
    .locals 6
    .param p1, "elementType"    # I
    .param p2, "themeElement"    # Lcom/xiaopeng/xuimanager/theme/ThemeElement;
    .param p3, "progress"    # F

    .line 112
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/theme/utils/IThemeElementListenerServiceRegisterAndNotify;->listeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;

    .line 114
    .local v1, "l":Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;->onThemeElementDownloadInProgress(ILcom/xiaopeng/xuimanager/theme/ThemeElement;F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    goto :goto_1

    .line 115
    :catch_0
    move-exception v2

    .line 116
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/theme/utils/IThemeElementListenerServiceRegisterAndNotify;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notify onThemeElementDownloadInProgress: elementType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", themeElement="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", progress="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 119
    :cond_0
    return-void
.end method

.method public onThemeElementDownloadPaused(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    .locals 6
    .param p1, "elementType"    # I
    .param p2, "themeElement"    # Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    .line 123
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/theme/utils/IThemeElementListenerServiceRegisterAndNotify;->listeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;

    .line 125
    .local v1, "l":Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;->onThemeElementDownloadPaused(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    goto :goto_1

    .line 126
    :catch_0
    move-exception v2

    .line 127
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/theme/utils/IThemeElementListenerServiceRegisterAndNotify;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notify onThemeElementDownloadPaused: elementType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", themeElement="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 130
    :cond_0
    return-void
.end method

.method public onThemeElementDownloadStart(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    .locals 6
    .param p1, "elementType"    # I
    .param p2, "themeElement"    # Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    .line 101
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/theme/utils/IThemeElementListenerServiceRegisterAndNotify;->listeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;

    .line 103
    .local v1, "l":Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;->onThemeElementDownloadStart(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    goto :goto_1

    .line 104
    :catch_0
    move-exception v2

    .line 105
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/theme/utils/IThemeElementListenerServiceRegisterAndNotify;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notify onThemeElementDownloadStart: elementType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", themeElement="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 108
    :cond_0
    return-void
.end method

.method public onThemeElementSelectionChanged(I)V
    .locals 6
    .param p1, "elementType"    # I

    .line 68
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/theme/utils/IThemeElementListenerServiceRegisterAndNotify;->listeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;

    .line 70
    .local v1, "l":Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;->onThemeElementSelectionChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    goto :goto_1

    .line 71
    :catch_0
    move-exception v2

    .line 72
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/theme/utils/IThemeElementListenerServiceRegisterAndNotify;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notify onThemeElementSelectionChanged: elementType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 75
    :cond_0
    return-void
.end method

.method public onThemeElementUpdated(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    .locals 6
    .param p1, "elementType"    # I
    .param p2, "themeElement"    # Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    .line 57
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/theme/utils/IThemeElementListenerServiceRegisterAndNotify;->listeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;

    .line 59
    .local v1, "l":Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;->onThemeElementUpdated(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    goto :goto_1

    .line 60
    :catch_0
    move-exception v2

    .line 61
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/theme/utils/IThemeElementListenerServiceRegisterAndNotify;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notify onThemeElementUpdated: elementType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", themeElement="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 64
    :cond_0
    return-void
.end method
