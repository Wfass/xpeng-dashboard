.class public Lcom/xiaopeng/xuimanager/sr/XuiSrIconListenerRegisterAndNotify;
.super Lcom/xiaopeng/xuimanager/utils/XUIManagerRegisterAndNotify;
.source "XuiSrIconListenerRegisterAndNotify.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/sr/XuiSrIconListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuimanager/utils/XUIManagerRegisterAndNotify<",
        "Lcom/xiaopeng/xuimanager/sr/XuiSrIconListener;",
        ">;",
        "Lcom/xiaopeng/xuimanager/sr/XuiSrIconListener;"
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

    .line 9
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/utils/XUIManagerRegisterAndNotify;-><init>(Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized onHideSrIcon(Lcom/xiaopeng/xuimanager/sr/SrIcon;)V
    .locals 2

    monitor-enter p0

    .line 21
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/sr/XuiSrIconListenerRegisterAndNotify;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/sr/XuiSrIconListener;

    .line 22
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/sr/XuiSrIconListener;->onHideSrIcon(Lcom/xiaopeng/xuimanager/sr/SrIcon;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 24
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onShowSrIcon(Lcom/xiaopeng/xuimanager/sr/SrIcon;)V
    .locals 2

    monitor-enter p0

    .line 14
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/sr/XuiSrIconListenerRegisterAndNotify;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/sr/XuiSrIconListener;

    .line 15
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/sr/XuiSrIconListener;->onShowSrIcon(Lcom/xiaopeng/xuimanager/sr/SrIcon;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 17
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
