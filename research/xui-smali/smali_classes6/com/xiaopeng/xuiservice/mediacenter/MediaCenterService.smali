.class public Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;
.super Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;
.source "MediaCenterService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/XUIServiceBase;
.implements Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$MediaCenterHalListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;,
        Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "XUIManager.MEDIACENTER.MediaCenterService"


# instance fields
.field private final audioCaptureListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<",
            "Lcom/xiaopeng/xuimanager/mediacenter/IAudioCaptureListener;",
            ">;"
        }
    .end annotation
.end field

.field private final avrcpEventListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<",
            "Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final btStatusListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<",
            "Lcom/xiaopeng/xuimanager/mediacenter/IBTStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private final lyricInfoListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<",
            "Lcom/xiaopeng/xuimanager/mediacenter/lyric/ILyricInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private final lyricUpdateListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<",
            "Lcom/xiaopeng/xuimanager/mediacenter/ILyricUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaCenterHal:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

.field private mPlaybackInfoListenerRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mSDVisualizerListenerRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final modeChangedListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<",
            "Lcom/xiaopeng/xuimanager/mediacenter/IModeChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final playbackControlListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<",
            "Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackControlListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 93
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;-><init>()V

    .line 48
    new-instance v0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    const-string v1, "XUIManager.MEDIACENTER.MediaCenterService"

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->playbackControlListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    .line 49
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$1;

    const-string v1, "XUIManager.MEDIACENTER.MediaCenterService"

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$1;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->audioCaptureListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    .line 62
    new-instance v0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    const-string v1, "XUIManager.MEDIACENTER.MediaCenterService"

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->btStatusListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    .line 63
    new-instance v0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    const-string v1, "XUIManager.MEDIACENTER.MediaCenterService"

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->lyricUpdateListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    .line 64
    new-instance v0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    const-string v1, "XUIManager.MEDIACENTER.MediaCenterService"

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->avrcpEventListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    .line 65
    new-instance v0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    const-string v1, "XUIManager.MEDIACENTER.MediaCenterService"

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->modeChangedListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    .line 66
    new-instance v0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    const-string v1, "XUIManager.MEDIACENTER.MediaCenterService"

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->lyricInfoListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mPlaybackInfoListenerRecords:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mSDVisualizerListenerRecords:Ljava/util/List;

    .line 94
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mMediaCenterHal:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;)Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mMediaCenterHal:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mPlaybackInfoListenerRecords:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mSDVisualizerListenerRecords:Ljava/util/List;

    return-object v0
.end method

.method private findIndexOfPlaybackInfoListenerLocked(Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;)I
    .locals 3
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;

    .line 357
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mPlaybackInfoListenerRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 358
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mPlaybackInfoListenerRecords:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;

    iget-object v1, v1, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;->listener:Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;

    invoke-interface {v1}, Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 359
    return v0

    .line 357
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 362
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private notifyBtStatusListener(I)V
    .locals 3
    .param p1, "status"    # I

    .line 876
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->btStatusListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/mediacenter/IBTStatusListener;

    .line 878
    .local v1, "listener":Lcom/xiaopeng/xuimanager/mediacenter/IBTStatusListener;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IBTStatusListener;->onBtStatusChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 881
    goto :goto_1

    .line 879
    :catch_0
    move-exception v2

    .line 880
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 882
    .end local v1    # "listener":Lcom/xiaopeng/xuimanager/mediacenter/IBTStatusListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 883
    :cond_0
    return-void
.end method

.method private notifyClientFftData(ILjava/lang/String;[BI)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "fft"    # [B
    .param p4, "samplingRate"    # I

    .line 818
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mSDVisualizerListenerRecords:Ljava/util/List;

    monitor-enter v0

    .line 819
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mSDVisualizerListenerRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;

    .line 820
    .local v2, "record":Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;->onFftDataCapture(ILjava/lang/String;[BI)V

    .line 821
    .end local v2    # "record":Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;
    goto :goto_0

    .line 822
    :cond_0
    monitor-exit v0

    .line 823
    return-void

    .line 822
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyClientFftData([BI)V
    .locals 3
    .param p1, "fft"    # [B
    .param p2, "samplingRate"    # I

    .line 808
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->audioCaptureListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/mediacenter/IAudioCaptureListener;

    .line 810
    .local v1, "listener":Lcom/xiaopeng/xuimanager/mediacenter/IAudioCaptureListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/IAudioCaptureListener;->OnFftDataCapture([BI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 813
    goto :goto_1

    .line 811
    :catch_0
    move-exception v2

    .line 812
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 814
    .end local v1    # "listener":Lcom/xiaopeng/xuimanager/mediacenter/IAudioCaptureListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 815
    :cond_0
    return-void
.end method

.method private notifyClientLyricUpdated(ILcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "lyricInfo"    # Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    .line 886
    if-nez p2, :cond_0

    .line 887
    return-void

    .line 889
    :cond_0
    const-string v0, "XUIManager.MEDIACENTER.MediaCenterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyClientLyricUpdated displayId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " &lyricInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->lyricInfoListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->listeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/mediacenter/lyric/ILyricInfoListener;

    .line 892
    .local v1, "listener":Lcom/xiaopeng/xuimanager/mediacenter/lyric/ILyricInfoListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/ILyricInfoListener;->onLyricInfoUpdated(ILcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 895
    goto :goto_1

    .line 893
    :catch_0
    move-exception v2

    .line 894
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 896
    .end local v1    # "listener":Lcom/xiaopeng/xuimanager/mediacenter/lyric/ILyricInfoListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 897
    :cond_1
    return-void
.end method

.method private notifyClientMediaInfoChanged(ILcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "mediaInfo"    # Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    .line 797
    const-string v0, "XUIManager.MEDIACENTER.MediaCenterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyClientMediaInfoChanged displayId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " &info:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mPlaybackInfoListenerRecords:Ljava/util/List;

    monitor-enter v0

    .line 799
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mPlaybackInfoListenerRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 800
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mPlaybackInfoListenerRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;

    .line 801
    .local v2, "listenerRecord":Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;
    invoke-virtual {v2, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;->onMediaInfoChanged(ILcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V

    .line 802
    .end local v2    # "listenerRecord":Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;
    goto :goto_0

    .line 804
    :cond_0
    monitor-exit v0

    .line 805
    return-void

    .line 804
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyClientPositionChanged(I[J)V
    .locals 4
    .param p1, "displayId"    # I
    .param p2, "position"    # [J

    .line 786
    const-string v0, "XUIManager.MEDIACENTER.MediaCenterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyClientPositionChanged displayId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " &position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-wide v2, p2, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " &duration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget-wide v2, p2, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mPlaybackInfoListenerRecords:Ljava/util/List;

    monitor-enter v0

    .line 788
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mPlaybackInfoListenerRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 789
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mPlaybackInfoListenerRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;

    .line 790
    .local v2, "listenerRecord":Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;
    invoke-virtual {v2, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;->onPositionChanged(I[J)V

    .line 791
    .end local v2    # "listenerRecord":Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;
    goto :goto_0

    .line 793
    :cond_0
    monitor-exit v0

    .line 794
    return-void

    .line 793
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyClientRatioData(FF)V
    .locals 3
    .param p1, "ratio"    # F
    .param p2, "minRatio"    # F

    .line 826
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->audioCaptureListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/mediacenter/IAudioCaptureListener;

    .line 828
    .local v1, "listener":Lcom/xiaopeng/xuimanager/mediacenter/IAudioCaptureListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/IAudioCaptureListener;->OnRatioData(FF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 831
    goto :goto_1

    .line 829
    :catch_0
    move-exception v2

    .line 830
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 832
    .end local v1    # "listener":Lcom/xiaopeng/xuimanager/mediacenter/IAudioCaptureListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 833
    :cond_0
    return-void
.end method

.method private notifyClientRatioData(ILjava/lang/String;FF)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "ratio"    # F
    .param p4, "minRatio"    # F

    .line 836
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mSDVisualizerListenerRecords:Ljava/util/List;

    monitor-enter v0

    .line 837
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mSDVisualizerListenerRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;

    .line 838
    .local v2, "record":Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;->onRatioData(ILjava/lang/String;FF)V

    .line 839
    .end local v2    # "record":Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;
    goto :goto_0

    .line 840
    :cond_0
    monitor-exit v0

    .line 841
    return-void

    .line 840
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyClientStatusChanged(II)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "status"    # I

    .line 775
    const-string v0, "XUIManager.MEDIACENTER.MediaCenterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyClientStatusChanged displayId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " &status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mPlaybackInfoListenerRecords:Ljava/util/List;

    monitor-enter v0

    .line 777
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mPlaybackInfoListenerRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 778
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mPlaybackInfoListenerRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;

    .line 779
    .local v2, "listenerRecord":Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;
    invoke-virtual {v2, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;->onPlayStatusChanged(II)V

    .line 780
    .end local v2    # "listenerRecord":Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;
    goto :goto_0

    .line 782
    :cond_0
    monitor-exit v0

    .line 783
    return-void

    .line 782
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private playControlListeners(II)V
    .locals 3
    .param p1, "cmd"    # I
    .param p2, "params"    # I

    .line 844
    const-string v0, "XUIManager.MEDIACENTER.MediaCenterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playControlListeners cmd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " &params:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->playbackControlListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackControlListener;

    .line 847
    .local v1, "listener":Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackControlListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackControlListener;->OnPlaybackControl(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 850
    goto :goto_1

    .line 848
    :catch_0
    move-exception v2

    .line 849
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 851
    .end local v1    # "listener":Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackControlListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 852
    :cond_0
    return-void
.end method

.method private setFavoriteListeners(ZLjava/lang/String;)V
    .locals 3
    .param p1, "favorite"    # Z
    .param p2, "id"    # Ljava/lang/String;

    .line 866
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->playbackControlListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackControlListener;

    .line 868
    .local v1, "listener":Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackControlListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackControlListener;->OnSetFavorite(ZLjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 871
    goto :goto_1

    .line 869
    :catch_0
    move-exception v2

    .line 870
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 872
    .end local v1    # "listener":Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackControlListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 873
    :cond_0
    return-void
.end method

.method private switchSourceListeners(I)V
    .locals 3
    .param p1, "source"    # I

    .line 855
    const-string v0, "XUIManager.MEDIACENTER.MediaCenterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchSourceListeners source:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->playbackControlListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackControlListener;

    .line 858
    .local v1, "listener":Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackControlListener;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackControlListener;->OnSwitchSource(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 861
    goto :goto_1

    .line 859
    :catch_0
    move-exception v2

    .line 860
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 862
    .end local v1    # "listener":Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackControlListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 863
    :cond_0
    return-void
.end method


# virtual methods
.method public avrcpNext()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 528
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mMediaCenterHal:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->avrcpNext()V

    .line 529
    return-void
.end method

.method public avrcpPause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 523
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mMediaCenterHal:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->avrcpPause()V

    .line 524
    return-void
.end method

.method public avrcpPlay()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 518
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mMediaCenterHal:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->avrcpPlay()V

    .line 519
    return-void
.end method

.method public avrcpPrevious()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 533
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mMediaCenterHal:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->avrcpPrevious()V

    .line 534
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 618
    return-void
.end method

.method public executeCmd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 565
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 566
    .local v0, "pid":I
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x15736e23

    if-eq v1, v2, :cond_1

    const v2, 0x5df024ba

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "add_monitor_displayId"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "remove_monitor_displayId"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_4

    .line 577
    :pswitch_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mPlaybackInfoListenerRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;

    .line 578
    .local v2, "record":Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;
    iget v3, v2, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;->pid:I

    if-ne v3, v0, :cond_3

    .line 579
    invoke-static {p2}, Lcom/xiaopeng/xuimanager/mediacenter/utils/ParamsBuild;->getDisplayId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;->removeDisplayId(I)V

    .line 581
    .end local v2    # "record":Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;
    :cond_3
    goto :goto_2

    .line 582
    :cond_4
    goto :goto_4

    .line 568
    :pswitch_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mPlaybackInfoListenerRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;

    .line 569
    .restart local v2    # "record":Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;
    iget v3, v2, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;->pid:I

    if-ne v3, v0, :cond_5

    .line 570
    invoke-static {p2}, Lcom/xiaopeng/xuimanager/mediacenter/utils/ParamsBuild;->getDisplayId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;->addDisplayId(I)V

    .line 572
    .end local v2    # "record":Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;
    :cond_5
    goto :goto_3

    .line 573
    :cond_6
    nop

    .line 587
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public favorSong(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 501
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mMediaCenterHal:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->favorSong(Landroid/os/Bundle;)V

    .line 502
    return-void
.end method

.method public getAvrcpMeteData()Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 538
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mMediaCenterHal:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getAvrcpMeteData()Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;

    move-result-object v0

    return-object v0
.end method

.method public getAvrcpPlayStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 548
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mMediaCenterHal:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getAvrcpPlayStatus()I

    move-result v0

    return v0
.end method

.method public getAvrcpPosition()[J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 543
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mMediaCenterHal:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getAvrcpPosition()[J

    move-result-object v0

    return-object v0
.end method

.method public getBtStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 491
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mMediaCenterHal:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getBtStatus()I

    move-result v0

    return v0
.end method

.method public getCurrentLyricInfo(I)Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;
    .locals 1
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 402
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mMediaCenterHal:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getCurrentLyricInfo(I)Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMediaInfo(I)Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    .locals 1
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 397
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mMediaCenterHal:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getCurrentMediaInfo(I)Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 460
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mMediaCenterHal:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getCurrentMode()I

    move-result v0

    return v0
.end method

.method public getCurrentPlayStatus(I)I
    .locals 1
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 392
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mMediaCenterHal:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getCurrentPlayStatus(I)I

    move-result v0

    return v0
.end method

.method public getCurrentPosition(I)[J
    .locals 1
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 407
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mMediaCenterHal:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getCurrentPosition(I)[J

    move-result-object v0

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 622
    const-string v0, "MediaCenterService"

    return-object v0
.end method

.method public init()V
    .locals 1

    .line 606
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mMediaCenterHal:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->setListener(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$MediaCenterHalListener;)V

    .line 607
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mMediaCenterHal:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->init()V

    .line 608
    return-void
.end method

.method public notifyLyricInfoUpdated(Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 758
    const-string v0, "XUIManager.MEDIACENTER.MediaCenterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyLyricInfoUpdated:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mMediaCenterHal:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->vendorNotifyUpdateLyric(Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V

    .line 760
    return-void
.end method

.method public notifyLyricUpdate(Ljava/lang/String;)V
    .locals 0
    .param p1, "lyric"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 430
    return-void
.end method

.method public onBtStatusChanged(I)V
    .locals 0
    .param p1, "status"    # I

    .line 747
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->notifyBtStatusListener(I)V

    .line 748
    return-void
.end method

.method public onFftDataCapture(ILjava/lang/String;[BI)V
    .locals 0
    .param p1, "display"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "fft"    # [B
    .param p4, "samplingRate"    # I

    .line 722
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->notifyClientFftData(ILjava/lang/String;[BI)V

    .line 723
    return-void
.end method

.method public onFftDataCapture([BI)V
    .locals 0
    .param p1, "fft"    # [B
    .param p2, "samplingRate"    # I

    .line 712
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->notifyClientFftData([BI)V

    .line 713
    return-void
.end method

.method public onLyricUpdated(ILcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "info"    # Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    .line 752
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->notifyClientLyricUpdated(ILcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V

    .line 753
    return-void
.end method

.method public onMediaInfoChanged(ILcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "mediaInfo"    # Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    .line 697
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->notifyClientMediaInfoChanged(ILcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V

    .line 698
    return-void
.end method

.method public onPlayControlIpc(II)V
    .locals 0
    .param p1, "cmd"    # I
    .param p2, "params"    # I

    .line 732
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->playControlListeners(II)V

    .line 733
    return-void
.end method

.method public onPlayStatusChanged(II)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "status"    # I

    .line 707
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->notifyClientStatusChanged(II)V

    .line 708
    return-void
.end method

.method public onPositionChanged(I[J)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "position"    # [J

    .line 702
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->notifyClientPositionChanged(I[J)V

    .line 703
    return-void
.end method

.method public onRatioData(FF)V
    .locals 0
    .param p1, "ratio"    # F
    .param p2, "minRatio"    # F

    .line 717
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->notifyClientRatioData(FF)V

    .line 718
    return-void
.end method

.method public onRatioData(ILjava/lang/String;FF)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "ratio"    # F
    .param p4, "minRatio"    # F

    .line 727
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->notifyClientRatioData(ILjava/lang/String;FF)V

    .line 728
    return-void
.end method

.method public onSetFavorite(ZLjava/lang/String;)V
    .locals 0
    .param p1, "favorite"    # Z
    .param p2, "id"    # Ljava/lang/String;

    .line 737
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->setFavoriteListeners(ZLjava/lang/String;)V

    .line 738
    return-void
.end method

.method public onSwitchSource(I)V
    .locals 0
    .param p1, "source"    # I

    .line 742
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->switchSourceListeners(I)V

    .line 743
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

    .line 76
    const-string v0, "MediaCenterService"

    .line 77
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

    .line 78
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "info":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->getInstance()Lcom/xiaopeng/xuiservice/debug/WatchDog;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->binderEnter(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const/4 v2, 0x1

    .line 82
    .local v2, "ret":Z
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 87
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->getInstance()Lcom/xiaopeng/xuiservice/debug/WatchDog;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->binderLeave(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    nop

    .line 90
    return v2

    .line 87
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 83
    :catch_0
    move-exception v3

    .line 84
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v4, "XUIManager.MEDIACENTER.MediaCenterService"

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

    .line 85
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->getInstance()Lcom/xiaopeng/xuiservice/debug/WatchDog;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->binderLeave(Ljava/lang/String;Ljava/lang/String;)V

    throw v3
.end method

.method public pauseBtMedia()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 484
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 485
    .local v0, "callingPid":I
    const-string v1, "XUIManager.MEDIACENTER.MediaCenterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pauseBtMedia with callingPid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mMediaCenterHal:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->pauseBtMedia()V

    .line 487
    return-void
.end method

.method public playBtMedia()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 477
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 478
    .local v0, "callingPid":I
    const-string v1, "XUIManager.MEDIACENTER.MediaCenterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playBtMedia with callingPid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mMediaCenterHal:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->playBtMedia(I)V

    .line 480
    return-void
.end method

.method public playbackControl(III)I
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "cmd"    # I
    .param p3, "param"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 382
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mMediaCenterHal:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->playbackControl(III)I

    move-result v0

    return v0
.end method

.method public playbackControlWithBundle(IILandroid/os/Bundle;)I
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "cmd"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mMediaCenterHal:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->playbackControlWithBundle(IILandroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public registerAvrcpEventListener(Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 553
    const-string v0, "XUIManager.MEDIACENTER.MediaCenterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerAvrcpEventListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->avrcpEventListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->registerListener(Landroid/os/IInterface;)Z

    .line 555
    return-void
.end method

.method public registerBtStatusListener(Lcom/xiaopeng/xuimanager/mediacenter/IBTStatusListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/mediacenter/IBTStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 465
    const-string v0, "XUIManager.MEDIACENTER.MediaCenterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerBtStatusListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->btStatusListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->registerListener(Landroid/os/IInterface;)Z

    .line 467
    return-void
.end method

.method public registerListener(Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenterEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenterEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    return-void
.end method

.method public registerLyricInfoListener(Lcom/xiaopeng/xuimanager/mediacenter/lyric/ILyricInfoListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/mediacenter/lyric/ILyricInfoListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 764
    const-string v0, "XUIManager.MEDIACENTER.MediaCenterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerLyricInfoListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->lyricInfoListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->registerListener(Landroid/os/IInterface;)Z

    .line 766
    return-void
.end method

.method public registerLyricUpdateListener(Lcom/xiaopeng/xuimanager/mediacenter/ILyricUpdateListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/mediacenter/ILyricUpdateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 434
    const-string v0, "XUIManager.MEDIACENTER.MediaCenterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerLyricUpdateListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->lyricUpdateListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->registerListener(Landroid/os/IInterface;)Z

    .line 436
    return-void
.end method

.method public registerModeChangedListener(Lcom/xiaopeng/xuimanager/mediacenter/IModeChangedListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/mediacenter/IModeChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 447
    const-string v0, "XUIManager.MEDIACENTER.MediaCenterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerModeChangedListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->modeChangedListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->registerListener(Landroid/os/IInterface;)Z

    .line 449
    return-void
.end method

.method public registerPlaybackInfoListener(Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;)V
    .locals 8
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 319
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 320
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 321
    .local v1, "uid":I
    const-string v2, "XUIManager.MEDIACENTER.MediaCenterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerPlaybackInfoListener from pid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " &uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mPlaybackInfoListenerRecords:Ljava/util/List;

    monitor-enter v2

    .line 323
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->findIndexOfPlaybackInfoListenerLocked(Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;)I

    move-result v3

    .line 324
    .local v3, "index":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 325
    const-string v4, "XUIManager.MEDIACENTER.MediaCenterService"

    const-string v5, "IPlaybackInfoListener is already added, ignoring"

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    monitor-exit v2

    return-void

    .line 328
    :cond_0
    new-instance v4, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;

    invoke-direct {v4, p0, p1, v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    .local v4, "record":Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;
    :try_start_1
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v4, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    nop

    .line 335
    :try_start_2
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mPlaybackInfoListenerRecords:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    .end local v3    # "index":I
    .end local v4    # "record":Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;
    monitor-exit v2

    .line 337
    return-void

    .line 331
    .restart local v3    # "index":I
    .restart local v4    # "record":Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;
    :catch_0
    move-exception v5

    .line 332
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "XUIManager.MEDIACENTER.MediaCenterService"

    const-string v7, "IPlaybackInfoListener is dead, ignoring it"

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    monitor-exit v2

    return-void

    .line 336
    .end local v3    # "index":I
    .end local v4    # "record":Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;
    .end local v5    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public registerVisualizerListener(Lcom/xiaopeng/xuimanager/mediacenter/IAudioCaptureListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/mediacenter/IAudioCaptureListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 163
    const-string v0, "XUIManager.MEDIACENTER.MediaCenterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerVisualizerListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->audioCaptureListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->registerListener(Landroid/os/IInterface;)Z

    .line 165
    return-void
.end method

.method public registerVisualizerListenerWithDisplayId(ILcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;)V
    .locals 16
    .param p1, "displayId"    # I
    .param p2, "listener"    # Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v8, p0

    move/from16 v9, p1

    .line 177
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 178
    .local v10, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 179
    .local v11, "uid":I
    const-string v0, "XUIManager.MEDIACENTER.MediaCenterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerVisualizerListenerWithDisplayId pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " &uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " &displayId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v12, v8, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mSDVisualizerListenerRecords:Ljava/util/List;

    monitor-enter v12

    .line 182
    const/4 v0, -0x1

    .line 183
    .local v0, "findTargetIndex":I
    const/4 v13, 0x0

    move v1, v13

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, v8, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mSDVisualizerListenerRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 184
    iget-object v2, v8, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mSDVisualizerListenerRecords:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;

    .line 185
    .local v2, "record":Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;
    iget-object v3, v2, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;->listener:Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;

    invoke-interface {v3}, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface/range {p2 .. p2}, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;->displayId:I

    if-ne v9, v3, :cond_0

    .line 186
    move v0, v1

    .line 187
    goto :goto_1

    .line 183
    .end local v2    # "record":Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 190
    .end local v1    # "i":I
    :cond_1
    :goto_1
    const/4 v14, -0x1

    if-ne v0, v14, :cond_2

    .line 191
    new-instance v15, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;

    const-string v4, ""

    move-object v1, v15

    move-object v2, v8

    move v3, v9

    move-object/from16 v5, p2

    move v6, v10

    move v7, v11

    invoke-direct/range {v1 .. v7}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;ILjava/lang/String;Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;II)V

    move-object v1, v15

    .line 192
    .local v1, "newRecord":Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;
    invoke-interface/range {p2 .. p2}, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v1, v13}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 193
    iget-object v2, v8, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mSDVisualizerListenerRecords:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    .end local v1    # "newRecord":Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v1, "pkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v2, "displayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v3, v8, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mSDVisualizerListenerRecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;

    .line 199
    .local v4, "record":Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;
    iget v5, v4, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;->displayId:I

    if-eq v5, v14, :cond_3

    .line 200
    iget v5, v4, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;->displayId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_3
    iget-object v5, v4, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;->pkgName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 203
    iget-object v5, v4, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;->pkgName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    .end local v4    # "record":Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;
    :cond_4
    goto :goto_2

    .line 206
    :cond_5
    iget-object v3, v8, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mMediaCenterHal:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v3, v2, v1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->updateVisualizerRequest(Ljava/util/List;Ljava/util/List;)V

    .line 207
    .end local v0    # "findTargetIndex":I
    .end local v1    # "pkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "displayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    monitor-exit v12

    .line 208
    return-void

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerVisualizerListenerWithPackage(Ljava/lang/String;Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;)V
    .locals 16
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 246
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 247
    .local v10, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 248
    .local v11, "uid":I
    const-string v0, "XUIManager.MEDIACENTER.MediaCenterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerVisualizerListenerWithDisplayId pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " &uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " &pkgName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v12, v8, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mSDVisualizerListenerRecords:Ljava/util/List;

    monitor-enter v12

    .line 251
    const/4 v0, -0x1

    .line 252
    .local v0, "findTargetIndex":I
    const/4 v13, 0x0

    move v1, v13

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, v8, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mSDVisualizerListenerRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 253
    iget-object v2, v8, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mSDVisualizerListenerRecords:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;

    .line 254
    .local v2, "record":Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;
    iget-object v3, v2, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;->listener:Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;

    invoke-interface {v3}, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface/range {p2 .. p2}, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v3, v4, :cond_0

    iget-object v3, v2, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;->pkgName:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 255
    move v0, v1

    .line 256
    goto :goto_1

    .line 252
    .end local v2    # "record":Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 259
    .end local v1    # "i":I
    :cond_1
    :goto_1
    const/4 v14, -0x1

    if-ne v0, v14, :cond_2

    .line 260
    new-instance v15, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;

    const/4 v3, -0x1

    move-object v1, v15

    move-object v2, v8

    move-object v4, v9

    move-object/from16 v5, p2

    move v6, v10

    move v7, v11

    invoke-direct/range {v1 .. v7}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;ILjava/lang/String;Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;II)V

    move-object v1, v15

    .line 261
    .local v1, "newRecord":Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;
    invoke-interface/range {p2 .. p2}, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v1, v13}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 262
    iget-object v2, v8, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mSDVisualizerListenerRecords:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    .end local v1    # "newRecord":Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v1, "pkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v2, "displayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v3, v8, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mSDVisualizerListenerRecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;

    .line 268
    .local v4, "record":Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;
    iget v5, v4, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;->displayId:I

    if-eq v5, v14, :cond_3

    .line 269
    iget v5, v4, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;->displayId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_3
    iget-object v5, v4, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;->pkgName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 272
    iget-object v5, v4, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;->pkgName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    .end local v4    # "record":Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;
    :cond_4
    goto :goto_2

    .line 275
    :cond_5
    iget-object v3, v8, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mMediaCenterHal:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v3, v2, v1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->updateVisualizerRequest(Ljava/util/List;Ljava/util/List;)V

    .line 276
    .end local v0    # "findTargetIndex":I
    .end local v1    # "pkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "displayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    monitor-exit v12

    .line 277
    return-void

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerVisualizerViewEnableListener(Lcom/xiaopeng/xuimanager/mediacenter/IVisualizerViewEnableListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/mediacenter/IVisualizerViewEnableListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 419
    return-void
.end method

.method public release()V
    .locals 0

    .line 613
    return-void
.end method

.method public requestMediaButton(ZLandroid/os/Bundle;)V
    .locals 2
    .param p1, "request"    # Z
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 506
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 507
    .local v0, "callingPid":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mMediaCenterHal:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v1, v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->requestMediaButton(IZ)V

    .line 508
    return-void
.end method

.method public setBtVolume(F)V
    .locals 2
    .param p1, "volume"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 512
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 513
    .local v0, "callingPid":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mMediaCenterHal:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v1, v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->setBtVolume(IF)V

    .line 514
    return-void
.end method

.method public setFavorite(ZLjava/lang/String;)I
    .locals 1
    .param p1, "favorite"    # Z
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 496
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mMediaCenterHal:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->setFavorite(ZLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setSDPosition(ILjava/lang/String;)V
    .locals 4
    .param p1, "displayId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 591
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 592
    .local v0, "pid":I
    const-string v1, "XUIManager.MEDIACENTER.MediaCenterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " set package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to displayId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mMediaCenterHal:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v1, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->setSDPosition(ILjava/lang/String;)V

    .line 595
    return-void
.end method

.method public setSessionActivity(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "pi"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 599
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 600
    .local v0, "pid":I
    const-string v1, "XUIManager.MEDIACENTER.MediaCenterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " setSessionActivity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mMediaCenterHal:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v1, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->setSessionActivity(Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 602
    return-void
.end method

.method public setVisualizerViewEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 412
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mMediaCenterHal:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->setVisualizerViewEnable(Z)V

    .line 413
    return-void
.end method

.method public stopMedia(IZLjava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "screenId"    # I
    .param p2, "stop"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "params"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 373
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 374
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 375
    .local v1, "uid":I
    const-string v2, "XUIManager.MEDIACENTER.MediaCenterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopMedia from pid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " &uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " screenId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " &stop:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " &reason:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mMediaCenterHal:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->stopMedia(IZLjava/lang/String;Landroid/os/Bundle;)V

    .line 378
    return-void
.end method

.method public switchSource(I)I
    .locals 1
    .param p1, "source"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 387
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mMediaCenterHal:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->switchSource(I)I

    move-result v0

    return v0
.end method

.method public unRegisterAvrcpEventListener(Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 559
    const-string v0, "XUIManager.MEDIACENTER.MediaCenterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unRegisterAvrcpEventListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->avrcpEventListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->unregisterListener(Landroid/os/IInterface;)Z

    .line 561
    return-void
.end method

.method public unRegisterBtStatusListener(Lcom/xiaopeng/xuimanager/mediacenter/IBTStatusListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/mediacenter/IBTStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 471
    const-string v0, "XUIManager.MEDIACENTER.MediaCenterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unRegisterBtStatusListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->btStatusListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->unregisterListener(Landroid/os/IInterface;)Z

    .line 473
    return-void
.end method

.method public unRegisterLyricUpdateListener(Lcom/xiaopeng/xuimanager/mediacenter/ILyricUpdateListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/mediacenter/ILyricUpdateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 441
    const-string v0, "XUIManager.MEDIACENTER.MediaCenterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unRegisterLyricUpdateListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->lyricUpdateListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->unregisterListener(Landroid/os/IInterface;)Z

    .line 443
    return-void
.end method

.method public unRegisterModeChangedListener(Lcom/xiaopeng/xuimanager/mediacenter/IModeChangedListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/mediacenter/IModeChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 454
    const-string v0, "XUIManager.MEDIACENTER.MediaCenterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unRegisterModeChangedListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->modeChangedListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->unregisterListener(Landroid/os/IInterface;)Z

    .line 456
    return-void
.end method

.method public unRegisterPlaybackInfoListener(Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 342
    const-string v0, "XUIManager.MEDIACENTER.MediaCenterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unRegisterPlaybackInfoListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mPlaybackInfoListenerRecords:Ljava/util/List;

    monitor-enter v0

    .line 344
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->findIndexOfPlaybackInfoListenerLocked(Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;)I

    move-result v1

    .line 345
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 346
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mPlaybackInfoListenerRecords:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    .local v2, "record":Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;
    :try_start_1
    iget-object v3, v2, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;->listener:Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;

    invoke-interface {v3}, Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 351
    goto :goto_0

    .line 349
    :catch_0
    move-exception v3

    .line 353
    .end local v1    # "index":I
    .end local v2    # "record":Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v0

    .line 354
    return-void

    .line 353
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public unRegisterVisualizerListener(Lcom/xiaopeng/xuimanager/mediacenter/IAudioCaptureListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/mediacenter/IAudioCaptureListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 170
    const-string v0, "XUIManager.MEDIACENTER.MediaCenterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unRegisterVisualizerListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->audioCaptureListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->unregisterListener(Landroid/os/IInterface;)Z

    .line 172
    return-void
.end method

.method public unRegisterVisualizerListenerWithDisplayId(ILcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;)V
    .locals 10
    .param p1, "displayId"    # I
    .param p2, "listener"    # Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 213
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 214
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 215
    .local v1, "uid":I
    const-string v2, "XUIManager.MEDIACENTER.MediaCenterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unRegisterVisualizerListenerWithDisplayId pid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " &uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " &displayId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mSDVisualizerListenerRecords:Ljava/util/List;

    monitor-enter v2

    .line 218
    const/4 v3, -0x1

    .line 219
    .local v3, "findTargetIndex":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mSDVisualizerListenerRecords:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 220
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mSDVisualizerListenerRecords:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;

    .line 221
    .local v5, "record":Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;
    iget-object v6, v5, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;->listener:Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;

    invoke-interface {v6}, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {p2}, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    if-ne v6, v7, :cond_0

    iget v6, v5, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;->displayId:I

    if-ne p1, v6, :cond_0

    .line 222
    move v3, v4

    .line 223
    goto :goto_1

    .line 219
    .end local v5    # "record":Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 226
    .end local v4    # "i":I
    :cond_1
    :goto_1
    const/4 v4, -0x1

    if-le v3, v4, :cond_2

    .line 227
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mSDVisualizerListenerRecords:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 229
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v5, "pkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v6, "displayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v7, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mSDVisualizerListenerRecords:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;

    .line 232
    .local v8, "record":Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;
    iget v9, v8, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;->displayId:I

    if-eq v9, v4, :cond_3

    .line 233
    iget v9, v8, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;->displayId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    :cond_3
    iget-object v9, v8, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;->pkgName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 236
    iget-object v9, v8, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;->pkgName:Ljava/lang/String;

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    .end local v8    # "record":Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;
    :cond_4
    goto :goto_2

    .line 239
    :cond_5
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mMediaCenterHal:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v4, v6, v5}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->updateVisualizerRequest(Ljava/util/List;Ljava/util/List;)V

    .line 240
    .end local v3    # "findTargetIndex":I
    .end local v5    # "pkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "displayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    monitor-exit v2

    .line 241
    return-void

    .line 240
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public unRegisterVisualizerListenerWithPackage(Ljava/lang/String;Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;)V
    .locals 10
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 282
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 283
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 284
    .local v1, "uid":I
    const-string v2, "XUIManager.MEDIACENTER.MediaCenterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unRegisterVisualizerListenerWithPackage pid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " &uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " &pkgName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mSDVisualizerListenerRecords:Ljava/util/List;

    monitor-enter v2

    .line 287
    const/4 v3, -0x1

    .line 288
    .local v3, "findTargetIndex":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mSDVisualizerListenerRecords:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 289
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mSDVisualizerListenerRecords:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;

    .line 290
    .local v5, "record":Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;
    iget-object v6, v5, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;->listener:Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;

    invoke-interface {v6}, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {p2}, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    if-ne v6, v7, :cond_0

    iget-object v6, v5, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 291
    move v3, v4

    .line 292
    goto :goto_1

    .line 288
    .end local v5    # "record":Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 295
    .end local v4    # "i":I
    :cond_1
    :goto_1
    const/4 v4, -0x1

    if-le v3, v4, :cond_2

    .line 296
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mSDVisualizerListenerRecords:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 299
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 300
    .local v5, "pkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v6, "displayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v7, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mSDVisualizerListenerRecords:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;

    .line 302
    .local v8, "record":Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;
    iget v9, v8, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;->displayId:I

    if-eq v9, v4, :cond_3

    .line 303
    iget v9, v8, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;->displayId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_3
    iget-object v9, v8, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;->pkgName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 306
    iget-object v9, v8, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;->pkgName:Ljava/lang/String;

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    .end local v8    # "record":Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;
    :cond_4
    goto :goto_2

    .line 309
    :cond_5
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mSDVisualizerListenerRecords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 310
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mMediaCenterHal:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->stopVisualizer()V

    .line 312
    :cond_6
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mMediaCenterHal:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v4, v6, v5}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->updateVisualizerRequest(Ljava/util/List;Ljava/util/List;)V

    .line 313
    .end local v3    # "findTargetIndex":I
    .end local v5    # "pkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "displayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    monitor-exit v2

    .line 314
    return-void

    .line 313
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public unRegisterVisualizerViewEnableListener(Lcom/xiaopeng/xuimanager/mediacenter/IVisualizerViewEnableListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/mediacenter/IVisualizerViewEnableListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 425
    return-void
.end method

.method public unregisterListener(Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenterEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenterEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    return-void
.end method

.method public unregisterLyricInfoListener(Lcom/xiaopeng/xuimanager/mediacenter/lyric/ILyricInfoListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/mediacenter/lyric/ILyricInfoListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 770
    const-string v0, "XUIManager.MEDIACENTER.MediaCenterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterLyricInfoListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->lyricInfoListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->unregisterListener(Landroid/os/IInterface;)Z

    .line 772
    return-void
.end method

.method public vendorMediaInfoNotify(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    const-string v0, "XUIManager.MEDIACENTER.MediaCenterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vendorMediaInfoNotify "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mMediaCenterHal:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->vendorMediaInfoNotify(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V

    .line 132
    return-void
.end method

.method public vendorRegister()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    return-void
.end method

.method public vendorSetControlListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackControlListener;)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackControlListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    const-string v0, "XUIManager.MEDIACENTER.MediaCenterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vendorSetControlListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->playbackControlListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0, p2}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->registerListener(Landroid/os/IInterface;)Z

    .line 139
    return-void
.end method

.method public vendorStartAudioSession(IILjava/lang/String;)V
    .locals 1
    .param p1, "audioSession"    # I
    .param p2, "usage"    # I
    .param p3, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mMediaCenterHal:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->vendorStartAudioSession(IILjava/lang/String;)V

    .line 152
    return-void
.end method

.method public vendorStopAudioSession(ILjava/lang/String;)V
    .locals 1
    .param p1, "audioSession"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mMediaCenterHal:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->vendorStopAudioSession(ILjava/lang/String;)V

    .line 158
    return-void
.end method

.method public vendorUnRegister()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    return-void
.end method

.method public vendorUnSetControlListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackControlListener;)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackControlListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    const-string v0, "XUIManager.MEDIACENTER.MediaCenterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vendorUnSetControlListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->playbackControlListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0, p2}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->unregisterListener(Landroid/os/IInterface;)Z

    .line 146
    return-void
.end method

.method public vendorUpdatePlaybackStatus(I)V
    .locals 3
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    const-string v0, "XUIManager.MEDIACENTER.MediaCenterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vendorUpdatePlaybackStatus status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mMediaCenterHal:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->vendorUpdatePlaybackStatus(I)V

    .line 121
    return-void
.end method

.method public vendorUpdatePosition(JJ)V
    .locals 1
    .param p1, "position"    # J
    .param p3, "duration"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->mMediaCenterHal:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->vendorUpdatePosition(JJ)V

    .line 126
    return-void
.end method
