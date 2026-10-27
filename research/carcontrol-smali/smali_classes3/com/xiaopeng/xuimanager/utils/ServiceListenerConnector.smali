.class public abstract Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector;
.super Ljava/lang/Object;
.source "ServiceListenerConnector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ServiceType::",
        "Landroid/os/IInterface;",
        "Service",
        "ListenerType::Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XUIManager_ServiceListenerConnector"


# instance fields
.field private registeredServiceListener:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TService",
            "ListenerType;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract createServiceListener()Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TService",
            "ListenerType;"
        }
    .end annotation
.end method

.method public final declared-synchronized disconnect()V
    .locals 3

    monitor-enter p0

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector;->registeredServiceListener:Landroid/os/IInterface;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector;->unregisterToServiceIfNot()V

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector;->registeredServiceListener:Landroid/os/IInterface;

    const-string v0, "XUIManager_ServiceListenerConnector"

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect to service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract getService()Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TServiceType;"
        }
    .end annotation
.end method

.method protected abstract registerServiceListener(Landroid/os/IInterface;Landroid/os/IInterface;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TServiceType;TService",
            "ListenerType;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public final declared-synchronized registerToServiceIfNot()V
    .locals 6

    monitor-enter p0

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector;->registeredServiceListener:Landroid/os/IInterface;

    if-eqz v0, :cond_0

    const-string v0, "XUIManager_ServiceListenerConnector"

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerToServiceIfNot, already registered, serviceListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector;->registeredServiceListener:Landroid/os/IInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit p0

    return-void

    .line 45
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector;->getService()Landroid/os/IInterface;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "XUIManager_ServiceListenerConnector"

    const-string v1, "service not connected, pending register service listener"

    .line 47
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    monitor-exit p0

    return-void

    .line 51
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector;->createServiceListener()Landroid/os/IInterface;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    .line 57
    :try_start_3
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector;->registerServiceListener(Landroid/os/IInterface;Landroid/os/IInterface;)V

    .line 58
    iput-object v1, p0, Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector;->registeredServiceListener:Landroid/os/IInterface;

    const-string v2, "XUIManager_ServiceListenerConnector"

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerToService success: service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", listener="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_4
    const-string v3, "XUIManager_ServiceListenerConnector"

    .line 61
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerToService failed: service="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", listener="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 63
    :goto_0
    monitor-exit p0

    return-void

    .line 53
    :cond_2
    :try_start_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "createServiceListener not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract unregisterServiceListener(Landroid/os/IInterface;Landroid/os/IInterface;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TServiceType;TService",
            "ListenerType;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public final declared-synchronized unregisterToServiceIfNot()V
    .locals 6

    monitor-enter p0

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector;->registeredServiceListener:Landroid/os/IInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 68
    monitor-exit p0

    return-void

    .line 71
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector;->getService()Landroid/os/IInterface;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, "XUIManager_ServiceListenerConnector"

    const-string v1, "unregisterToServiceIfNot but service not connected"

    .line 73
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    monitor-exit p0

    return-void

    .line 78
    :cond_1
    :try_start_2
    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector;->unregisterServiceListener(Landroid/os/IInterface;Landroid/os/IInterface;)V

    const/4 v2, 0x0

    .line 79
    iput-object v2, p0, Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector;->registeredServiceListener:Landroid/os/IInterface;

    const-string v2, "XUIManager_ServiceListenerConnector"

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unregisterToServiceIfNot success: service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", listener="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_3
    const-string v3, "XUIManager_ServiceListenerConnector"

    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unregisterToServiceIfNot failed: service="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", listener="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 84
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
