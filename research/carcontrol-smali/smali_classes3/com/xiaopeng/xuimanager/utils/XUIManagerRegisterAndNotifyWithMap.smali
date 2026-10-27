.class public Lcom/xiaopeng/xuimanager/utils/XUIManagerRegisterAndNotifyWithMap;
.super Lcom/xiaopeng/xuimanager/utils/RegisterAndNotifyWithMap;
.source "XUIManagerRegisterAndNotifyWithMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Key:",
        "Ljava/lang/Object;",
        "Listener:Ljava/lang/Object;",
        ">",
        "Lcom/xiaopeng/xuimanager/utils/RegisterAndNotifyWithMap<",
        "TKey;T",
        "Listener;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XUIManagerRegisterAndNotify"


# instance fields
.field private final connector:Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector<",
            "**>;"
        }
    .end annotation
.end field


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
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/utils/RegisterAndNotifyWithMap;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/utils/XUIManagerRegisterAndNotifyWithMap;->connector:Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector;

    return-void
.end method


# virtual methods
.method public final declared-synchronized connect()V
    .locals 3

    monitor-enter p0

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/utils/XUIManagerRegisterAndNotifyWithMap;->connector:Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/utils/XUIManagerRegisterAndNotifyWithMap;->getListenerCount()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "XUIManagerRegisterAndNotify"

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect: has listener, connector do registerToServiceIfNot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/utils/XUIManagerRegisterAndNotifyWithMap;->connector:Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector;->registerToServiceIfNot()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized disconnect()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "XUIManagerRegisterAndNotify"

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect: connector do disconnect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/utils/XUIManagerRegisterAndNotifyWithMap;->connector:Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized register(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;T",
            "Listener;",
            ")Z"
        }
    .end annotation

    monitor-enter p0

    .line 15
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuimanager/utils/RegisterAndNotifyWithMap;->register(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 16
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/utils/XUIManagerRegisterAndNotifyWithMap;->connector:Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector;

    if-eqz p2, :cond_0

    .line 17
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector;->registerToServiceIfNot()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :cond_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized unregister(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;T",
            "Listener;",
            ")Z"
        }
    .end annotation

    monitor-enter p0

    .line 24
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuimanager/utils/RegisterAndNotifyWithMap;->unregister(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 25
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/utils/XUIManagerRegisterAndNotifyWithMap;->connector:Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/utils/XUIManagerRegisterAndNotifyWithMap;->getListenerCount()I

    move-result p2

    if-nez p2, :cond_0

    .line 26
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/utils/XUIManagerRegisterAndNotifyWithMap;->connector:Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector;

    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector;->unregisterToServiceIfNot()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
