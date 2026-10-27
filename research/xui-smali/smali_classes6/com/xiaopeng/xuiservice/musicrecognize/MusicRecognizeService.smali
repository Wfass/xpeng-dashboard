.class public Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeService;
.super Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognize$Stub;
.source "MusicRecognizeService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/XUIServiceBase;
.implements Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService$MusicRecognizeHalListener;


# static fields
.field public static final DBG:Z = true

.field public static final TAG:Ljava/lang/String; = "MUSICRECOGNIZE.SERVICE.MusicRecognizeService"


# instance fields
.field private final listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<",
            "Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognizeEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mMusicRecognizeHal:Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognize$Stub;-><init>()V

    .line 33
    new-instance v0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeService$1;

    const-string v1, "MUSICRECOGNIZE.SERVICE.MusicRecognizeService"

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeService$1;-><init>(Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    .line 49
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeService;->mContext:Landroid/content/Context;

    .line 50
    new-instance v0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeService;->mMusicRecognizeHal:Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeService;)Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeService;

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeService;->mMusicRecognizeHal:Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 84
    return-void
.end method

.method public findSongCover(Ljava/lang/String;)V
    .locals 1
    .param p1, "songName"    # Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeService;->mMusicRecognizeHal:Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;->findSongCover(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public getMinScore()F
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeService;->mMusicRecognizeHal:Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;->getMinScore()F

    move-result v0

    return v0
.end method

.method public getMode()I
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeService;->mMusicRecognizeHal:Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;->getMode()I

    move-result v0

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 88
    const-string v0, "MusicRecognizeService"

    return-object v0
.end method

.method public init()V
    .locals 0

    .line 74
    return-void
.end method

.method public onError(II)V
    .locals 6
    .param p1, "errorCode"    # I
    .param p2, "operation"    # I

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->listeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognizeEventListener;

    .line 178
    .local v1, "l":Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognizeEventListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognizeEventListener;->onError(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    goto :goto_1

    .line 179
    :catch_0
    move-exception v2

    .line 180
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "MUSICRECOGNIZE.SERVICE.MusicRecognizeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onError calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognizeEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 183
    :cond_0
    return-void
.end method

.method public onFindCoverEvent(Ljava/lang/String;)V
    .locals 6
    .param p1, "coverUrl"    # Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->listeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognizeEventListener;

    .line 156
    .local v1, "l":Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognizeEventListener;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognizeEventListener;->onFindCoverEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    goto :goto_1

    .line 157
    :catch_0
    move-exception v2

    .line 158
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "MUSICRECOGNIZE.SERVICE.MusicRecognizeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onFindCoverEvent calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognizeEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 161
    :cond_0
    return-void
.end method

.method public onRecognizeEvent(Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeEvent;

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->listeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognizeEventListener;

    .line 167
    .local v1, "l":Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognizeEventListener;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognizeEventListener;->onRecognizeEvent(Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    goto :goto_1

    .line 168
    :catch_0
    move-exception v2

    .line 169
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "MUSICRECOGNIZE.SERVICE.MusicRecognizeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onRecognizeEvent calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognizeEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 172
    :cond_0
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
    const-string v0, "MusicRecognizeService"

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
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognize$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

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
    const-string v4, "MUSICRECOGNIZE.SERVICE.MusicRecognizeService"

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

.method public registerListener(Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognizeEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognizeEventListener;

    .line 94
    const-string v0, "MUSICRECOGNIZE.SERVICE.MusicRecognizeService"

    const-string v1, "registerListener"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->registerListener(Landroid/os/IInterface;)Z

    .line 98
    return-void
.end method

.method public release()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->clear()V

    .line 79
    return-void
.end method

.method public setMinScore(F)V
    .locals 1
    .param p1, "score"    # F

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeService;->mMusicRecognizeHal:Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;->setMinScore(F)V

    .line 144
    return-void
.end method

.method public setMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeService;->mMusicRecognizeHal:Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;->setMode(I)V

    .line 134
    return-void
.end method

.method public start()V
    .locals 2

    .line 111
    const-string v0, "MUSICRECOGNIZE.SERVICE.MusicRecognizeService"

    const-string v1, "start()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeService;->mMusicRecognizeHal:Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;->start()V

    .line 114
    return-void
.end method

.method public stop()V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeService;->mMusicRecognizeHal:Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;->stop()V

    .line 119
    return-void
.end method

.method public stopAndRecognize()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeService;->mMusicRecognizeHal:Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;->stopAndRecognize()V

    .line 124
    return-void
.end method

.method public unregisterListener(Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognizeEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognizeEventListener;

    .line 103
    const-string v0, "MUSICRECOGNIZE.SERVICE.MusicRecognizeService"

    const-string v1, "unregisterListener"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->unregisterListener(Landroid/os/IInterface;)Z

    .line 106
    return-void
.end method
