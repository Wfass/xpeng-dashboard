.class public Lcom/xiaopeng/xuiservice/download/download/DownloadListenerBinder;
.super Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface$Stub;
.source "DownloadListenerBinder.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/XUIServiceBase;


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadListenerBinder"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 23
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface$Stub;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerBinder;->mContext:Landroid/content/Context;

    .line 25
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->init(Landroid/content/Context;)V

    .line 26
    return-void
.end method


# virtual methods
.method public basicTypes(IJZFDLjava/lang/String;)V
    .locals 0
    .param p1, "anInt"    # I
    .param p2, "aLong"    # J
    .param p4, "aBoolean"    # Z
    .param p5, "aFloat"    # F
    .param p6, "aDouble"    # D
    .param p8, "aString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 59
    return-void
.end method

.method public enqueue(Ljava/lang/String;)J
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->enqueue(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public enqueueWithHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)J
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "requestHeaders"    # Ljava/util/Map;

    .line 84
    invoke-static {p1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->enqueueWithHeaders(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)J

    move-result-wide v0

    return-wide v0
.end method

.method public enqueueWtihTitleDescription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)J
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "requestHeaders"    # Ljava/util/Map;

    .line 78
    invoke-static {p1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->enqueueWithHeaders(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 63
    const-string v0, "DownloadListenerBinder"

    return-object v0
.end method

.method public getState(JLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # J
    .param p3, "stateKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    const-string v0, "status"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-static {p1, p2}, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->getDownloadState(J)I

    move-result v0

    .line 99
    .local v0, "downloadState":I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 101
    .end local v0    # "downloadState":I
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p1, p2, v0}, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->getDownloadStateStringByFields(J[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getStatusListByPackageName(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "stateKey"    # Ljava/lang/String;

    .line 89
    invoke-static {p1, p2}, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->getDownloadStateIntByTitle(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 0

    .line 49
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    const-string v0, "DownloadService"

    .line 31
    .local v0, "module":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, "info":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->getInstance()Lcom/xiaopeng/xuiservice/debug/WatchDog;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->binderEnter(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const/4 v2, 0x1

    .line 36
    .local v2, "ret":Z
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 41
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->getInstance()Lcom/xiaopeng/xuiservice/debug/WatchDog;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->binderLeave(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    nop

    .line 44
    return v2

    .line 41
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 37
    :catch_0
    move-exception v3

    .line 38
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v4, "DownloadListenerBinder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTransact e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ",code="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->getInstance()Lcom/xiaopeng/xuiservice/debug/WatchDog;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->binderLeave(Ljava/lang/String;Ljava/lang/String;)V

    throw v3
.end method

.method public registerListener(Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;)V
    .locals 3
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    const-string v0, "DownloadListenerBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerListener instances is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->registerDownloadCallback(Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-interface {p1, p1}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;->onRegisterSuccess(Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;)V

    goto :goto_0

    .line 111
    :cond_0
    const-string v0, "RemoteCallbackList is killed or RemoteException occurred"

    invoke-interface {p1, p1, v0}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;->onRegisterError(Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;Ljava/lang/String;)V

    .line 113
    :goto_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerBinder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->destroy(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method public unRegisterListener(Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;)V
    .locals 3
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    const-string v0, "DownloadListenerBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unRegisterListener instances is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->unRegisterDownloadCallback(Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-interface {p1, p1}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;->onUnRegisterSuccess(Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;)V

    goto :goto_0

    .line 121
    :cond_0
    const-string v0, "RemoteCallbackList is killed or RemoteException occurred"

    invoke-interface {p1, p1, v0}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;->onUnRegisterError(Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;Ljava/lang/String;)V

    .line 123
    :goto_0
    return-void
.end method
