.class public Lcom/xiaopeng/xuiservice/awareness/AwarenessService;
.super Lcom/xiaopeng/xuimanager/awareness/IAwareness$Stub;
.source "AwarenessService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/XUIServiceBase;
.implements Lcom/xiaopeng/xuiservice/awareness/AwarenessHalService$AwarenessHalListener;


# static fields
.field public static final DBG:Z = true

.field public static final TAG:Ljava/lang/String; = "AWARENESS.SERVICE .AwarenessService"


# instance fields
.field private final listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<",
            "Lcom/xiaopeng/xuimanager/awareness/IAwarenessEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mAwarenessHal:Lcom/xiaopeng/xuiservice/awareness/AwarenessHalService;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/awareness/IAwareness$Stub;-><init>()V

    .line 32
    new-instance v0, Lcom/xiaopeng/xuiservice/awareness/AwarenessService$1;

    const-string v1, "AWARENESS.SERVICE .AwarenessService"

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/awareness/AwarenessService$1;-><init>(Lcom/xiaopeng/xuiservice/awareness/AwarenessService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/awareness/AwarenessService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    .line 49
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/awareness/AwarenessService;->mContext:Landroid/content/Context;

    .line 50
    new-instance v0, Lcom/xiaopeng/xuiservice/awareness/AwarenessHalService;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/awareness/AwarenessHalService;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/awareness/AwarenessService;->mAwarenessHal:Lcom/xiaopeng/xuiservice/awareness/AwarenessHalService;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/awareness/AwarenessService;)Lcom/xiaopeng/xuiservice/awareness/AwarenessHalService;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/awareness/AwarenessService;

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/awareness/AwarenessService;->mAwarenessHal:Lcom/xiaopeng/xuiservice/awareness/AwarenessHalService;

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 84
    return-void
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 88
    const-string v0, "AwarenessService"

    return-object v0
.end method

.method public declared-synchronized init()V
    .locals 0

    monitor-enter p0

    .line 74
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onError(II)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "operation"    # I

    monitor-enter p0

    .line 110
    monitor-exit p0

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

    .line 55
    const-string v0, "AwarenessService"

    .line 56
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

    .line 57
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "info":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->getInstance()Lcom/xiaopeng/xuiservice/debug/WatchDog;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->binderEnter(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const/4 v2, 0x1

    .line 61
    .local v2, "ret":Z
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/awareness/IAwareness$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 66
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->getInstance()Lcom/xiaopeng/xuiservice/debug/WatchDog;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->binderLeave(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    nop

    .line 69
    return v2

    .line 66
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 62
    :catch_0
    move-exception v3

    .line 63
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v4, "AWARENESS.SERVICE .AwarenessService"

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

    .line 64
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->getInstance()Lcom/xiaopeng/xuiservice/debug/WatchDog;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->binderLeave(Ljava/lang/String;Ljava/lang/String;)V

    throw v3
.end method

.method public registerListener(Lcom/xiaopeng/xuimanager/awareness/IAwarenessEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/awareness/IAwarenessEventListener;

    .line 94
    const-string v0, "AWARENESS.SERVICE .AwarenessService"

    const-string v1, "registerListener"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/awareness/AwarenessService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->registerListener(Landroid/os/IInterface;)Z

    .line 97
    return-void
.end method

.method public declared-synchronized release()V
    .locals 1

    monitor-enter p0

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/awareness/AwarenessService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/awareness/AwarenessService;
    throw v0
.end method

.method public unregisterListener(Lcom/xiaopeng/xuimanager/awareness/IAwarenessEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/awareness/IAwarenessEventListener;

    .line 102
    const-string v0, "AWARENESS.SERVICE .AwarenessService"

    const-string v1, "unregisterListener"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/awareness/AwarenessService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->unregisterListener(Landroid/os/IInterface;)Z

    .line 105
    return-void
.end method
