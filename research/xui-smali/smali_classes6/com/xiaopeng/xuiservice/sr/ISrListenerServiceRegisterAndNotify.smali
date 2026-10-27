.class public Lcom/xiaopeng/xuiservice/sr/ISrListenerServiceRegisterAndNotify;
.super Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;
.source "ISrListenerServiceRegisterAndNotify.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<",
        "Lcom/xiaopeng/xuimanager/sr/ISrListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "moduleTag"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;-><init>(Ljava/lang/String;)V

    .line 14
    return-void
.end method


# virtual methods
.method public onHideSrIcon(Lcom/xiaopeng/xuimanager/sr/SrIcon;)V
    .locals 6
    .param p1, "icon"    # Lcom/xiaopeng/xuimanager/sr/SrIcon;

    .line 27
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/sr/ISrListenerServiceRegisterAndNotify;->listeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/sr/ISrListener;

    .line 29
    .local v1, "l":Lcom/xiaopeng/xuimanager/sr/ISrListener;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/sr/ISrListener;->onHideSrIcon(Lcom/xiaopeng/xuimanager/sr/SrIcon;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    goto :goto_1

    .line 30
    :catch_0
    move-exception v2

    .line 31
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/sr/ISrListenerServiceRegisterAndNotify;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notify onHideSrIcon: icon="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/sr/ISrListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method

.method public onShowSrIcon(Lcom/xiaopeng/xuimanager/sr/SrIcon;)V
    .locals 6
    .param p1, "icon"    # Lcom/xiaopeng/xuimanager/sr/SrIcon;

    .line 17
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/sr/ISrListenerServiceRegisterAndNotify;->listeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/sr/ISrListener;

    .line 19
    .local v1, "l":Lcom/xiaopeng/xuimanager/sr/ISrListener;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/sr/ISrListener;->onShowSrIcon(Lcom/xiaopeng/xuimanager/sr/SrIcon;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_1

    .line 20
    :catch_0
    move-exception v2

    .line 21
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/sr/ISrListenerServiceRegisterAndNotify;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notify onShowSrIcon: icon="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/sr/ISrListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method
