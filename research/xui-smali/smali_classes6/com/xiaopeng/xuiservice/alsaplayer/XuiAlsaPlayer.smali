.class public Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;
.super Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer$Stub;
.source "XuiAlsaPlayer.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/XUIServiceBase;


# static fields
.field private static final TAG:Ljava/lang/String; = "XuiAlsaPlayer"


# instance fields
.field private final listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<",
            "Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayerEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer$Stub;-><init>()V

    .line 33
    new-instance v0, Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer$1;

    const-string v1, "XuiAlsaPlayer"

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer$1;-><init>(Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;->clientDied()I

    move-result v0

    return v0
.end method

.method private clientDied()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, "ret":I
    const-string v1, "clientDied"

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;->stopPlay(Ljava/lang/String;)I

    .line 164
    const-string v1, "clientDied"

    const-string v2, "MediaLoopback"

    const-string v3, "=OFF"

    invoke-virtual {p0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;->resetRouteAndUpdatePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-string v1, "clientDied"

    const-string v2, "SystemLoopback"

    const-string v3, "=OFF"

    invoke-virtual {p0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;->resetRouteAndUpdatePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 53
    return-void
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 57
    const-string v0, "XuiAlsaPlayer"

    return-object v0
.end method

.method public declared-synchronized init()V
    .locals 0

    monitor-enter p0

    .line 62
    monitor-exit p0

    return-void
.end method

.method public registerListener(Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayerEventListener;)V
    .locals 2
    .param p1, "callBackFunc"    # Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayerEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 152
    const-string v0, "XuiAlsaPlayer"

    const-string v1, "registerListener"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->registerListener(Landroid/os/IInterface;)Z

    .line 154
    return-void
.end method

.method public declared-synchronized release()V
    .locals 1

    monitor-enter p0

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit p0

    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;
    throw v0
.end method

.method public releasePermission(Ljava/lang/String;)I
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    const-string v0, "XuiAlsaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releasePermission pkgName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const/4 v0, 0x0

    .line 143
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->listeners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayerEventListener;

    .line 144
    .local v2, "l":Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayerEventListener;
    const/4 v3, 0x1

    const-string v4, "release"

    invoke-interface {v2, v3, v4}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayerEventListener;->onAlsaPlayerChangeEvent(ILjava/lang/String;)V

    .line 145
    .end local v2    # "l":Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayerEventListener;
    goto :goto_0

    .line 147
    :cond_0
    return v0
.end method

.method public requestPermission(Ljava/lang/String;)I
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    const-string v0, "XuiAlsaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestPermission pkgName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/4 v0, 0x0

    .line 132
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->listeners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayerEventListener;

    .line 133
    .local v2, "l":Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayerEventListener;
    const/4 v3, 0x1

    const-string v4, "request"

    invoke-interface {v2, v3, v4}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayerEventListener;->onAlsaPlayerChangeEvent(ILjava/lang/String;)V

    .line 134
    .end local v2    # "l":Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayerEventListener;
    goto :goto_0

    .line 136
    :cond_0
    return v0
.end method

.method public resetRouteAndUpdatePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "pathType"    # Ljava/lang/String;
    .param p3, "enable"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    const-string v0, "XuiAlsaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetRouteAndUpdatePath pkgName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pathType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, "ret":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "parameters":Ljava/lang/String;
    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move-result v0

    .line 125
    return v0
.end method

.method public final native setCaptureParameter(IIIIII)I
.end method

.method public setCaptureParameter(Ljava/lang/String;IIIIII)I
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "card"    # I
    .param p3, "device"    # I
    .param p4, "sampleRate"    # I
    .param p5, "channel"    # I
    .param p6, "periodSize"    # I
    .param p7, "periodCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    const-string v0, "XuiAlsaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCaptureParameter pkgName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "ret":I
    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v1 .. v7}, Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;->setCaptureParameter(IIIIII)I

    move-result v0

    .line 108
    return v0
.end method

.method public final native setPlaybackParameter(IIIIII)I
.end method

.method public setPlaybackParameter(Ljava/lang/String;IIIIII)I
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "card"    # I
    .param p3, "device"    # I
    .param p4, "sampleRate"    # I
    .param p5, "channel"    # I
    .param p6, "periodSize"    # I
    .param p7, "periodCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    const-string v0, "XuiAlsaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPlaybackParameter pkgName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, "ret":I
    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v1 .. v7}, Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;->setPlaybackParameter(IIIIII)I

    move-result v0

    .line 116
    return v0
.end method

.method public final native startPlay()I
.end method

.method public startPlay(Ljava/lang/String;)I
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    const-string v0, "XuiAlsaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPlay pkgName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const/4 v0, 0x0

    .line 74
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->listeners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayerEventListener;

    .line 75
    .local v2, "l":Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayerEventListener;
    const/4 v3, 0x0

    const-string v4, "start"

    invoke-interface {v2, v3, v4}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayerEventListener;->onAlsaPlayerChangeEvent(ILjava/lang/String;)V

    .line 76
    .end local v2    # "l":Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayerEventListener;
    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;->startPlay()I

    move-result v0

    .line 79
    return v0
.end method

.method public final native stopPlay()I
.end method

.method public stopPlay(Ljava/lang/String;)I
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 84
    const-string v0, "XuiAlsaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopPlay pkgName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const/4 v0, 0x0

    .line 87
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->listeners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayerEventListener;

    .line 88
    .local v2, "l":Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayerEventListener;
    const/4 v3, 0x0

    const-string v4, "stop"

    invoke-interface {v2, v3, v4}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayerEventListener;->onAlsaPlayerChangeEvent(ILjava/lang/String;)V

    .line 89
    .end local v2    # "l":Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayerEventListener;
    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;->stopPlay()I

    move-result v0

    .line 92
    return v0
.end method

.method public unregisterListener(Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayerEventListener;)V
    .locals 1
    .param p1, "callBackFunc"    # Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayerEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->unregisterListener(Landroid/os/IInterface;)Z

    .line 159
    return-void
.end method

.method public writeData(Ljava/lang/String;[BII)I
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "offset"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    const-string v0, "XuiAlsaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeData pkgName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "ret":I
    invoke-virtual {p0, p2, p3, p4}, Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;->writeData([BII)I

    move-result v0

    .line 100
    return v0
.end method

.method public final native writeData([BII)I
.end method
