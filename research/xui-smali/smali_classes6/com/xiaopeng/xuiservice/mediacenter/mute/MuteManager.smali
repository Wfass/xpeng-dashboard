.class public Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;
.super Ljava/lang/Object;
.source "MuteManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager$MuteDetail;
    }
.end annotation


# static fields
.field private static final DURATION_MUTE:I = 0xfa

.field private static final MSG_WHAT_MUTE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MuteManager"

.field private static volatile mInstance:Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;


# instance fields
.field private delayResumePlay:Ljava/lang/Runnable;

.field private mAudioChangeObserver:Lcom/xiaopeng/xuiservice/mediacenter/mute/AudioChangeObserver;

.field private mAudioManager:Landroid/media/AudioManager;

.field mAudioStatusChangedListener:Lcom/xiaopeng/xuiservice/mediacenter/mute/AudioChangeObserver$AudioStatusChangedListener;

.field private mContext:Landroid/content/Context;

.field private mLastPauseSessionId:I

.field private mMediaCenterService:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

.field private mMuteHandler:Landroid/os/Handler;

.field private volatile mReplyToUnMute:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->mLastPauseSessionId:I

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->mReplyToUnMute:Z

    .line 160
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager$2;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->delayResumePlay:Ljava/lang/Runnable;

    .line 176
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager$3;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->mAudioStatusChangedListener:Lcom/xiaopeng/xuiservice/mediacenter/mute/AudioChangeObserver$AudioStatusChangedListener;

    .line 45
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->mContext:Landroid/content/Context;

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->mAudioManager:Landroid/media/AudioManager;

    .line 47
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/mute/AudioChangeObserver;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->mAudioStatusChangedListener:Lcom/xiaopeng/xuiservice/mediacenter/mute/AudioChangeObserver$AudioStatusChangedListener;

    invoke-direct {v0, p1, v1, v2}, Lcom/xiaopeng/xuiservice/mediacenter/mute/AudioChangeObserver;-><init>(Landroid/content/Context;Landroid/media/AudioManager;Lcom/xiaopeng/xuiservice/mediacenter/mute/AudioChangeObserver$AudioStatusChangedListener;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->mAudioChangeObserver:Lcom/xiaopeng/xuiservice/mediacenter/mute/AudioChangeObserver;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->playOrPause(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;
    .param p1, "x1"    # I

    .line 17
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->isMusicPlay(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;)Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;

    .line 17
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->mMediaCenterService:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;

    .line 17
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->mMuteHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 34
    sget-object v0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->mInstance:Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;

    if-nez v0, :cond_1

    .line 35
    const-class v0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->mInstance:Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->mInstance:Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;

    .line 39
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 41
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->mInstance:Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;

    return-object v0
.end method

.method private getStreamType(I)I
    .locals 2
    .param p1, "displayId"    # I

    .line 102
    const/4 v0, 0x3

    .line 103
    .local v0, "streamType":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 104
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->isDeviceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    const/16 v0, 0xd

    .line 107
    :cond_0
    return v0
.end method

.method private initMuteHandler(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .line 58
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager$1;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->mMuteHandler:Landroid/os/Handler;

    .line 72
    return-void
.end method

.method private isMusicPlay(I)Z
    .locals 2
    .param p1, "displayId"    # I

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->mMediaCenterService:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getCurrentPlayStatus(I)I

    move-result v0

    .line 157
    .local v0, "currentPlayStatus":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isOtherPlaying()Z
    .locals 7

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getOtherMusicPlayingPkgs()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "otherPlayPackages":Ljava/lang/String;
    const-string v1, "MuteManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOtherPlayPackages:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 137
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "packages":[Ljava/lang/String;
    array-length v3, v1

    .line 139
    .local v3, "packageLength":I
    if-lez v3, :cond_2

    .line 140
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 141
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->mMediaCenterService:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v5, v2}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getCurrentMediaInfo(I)Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    move-result-object v5

    .line 142
    .local v5, "mediaInfo":Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    if-nez v5, :cond_0

    .line 143
    return v4

    .line 145
    :cond_0
    invoke-virtual {v5}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 146
    .local v6, "currentPackage":Ljava/lang/String;
    aget-object v2, v1, v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v4

    return v2

    .line 148
    .end local v5    # "mediaInfo":Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    .end local v6    # "currentPackage":Ljava/lang/String;
    :cond_1
    return v4

    .line 150
    :cond_2
    return v2

    .line 152
    .end local v1    # "packages":[Ljava/lang/String;
    .end local v3    # "packageLength":I
    :cond_3
    return v2
.end method

.method private playOrPause(ZLjava/lang/String;)V
    .locals 6
    .param p1, "mute"    # Z
    .param p2, "otherPlayPackages"    # Ljava/lang/String;

    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->isMusicPlay(I)Z

    move-result v1

    .line 117
    .local v1, "isMusicPlay":Z
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->mMediaCenterService:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getCurrentAudioSession()I

    move-result v2

    .line 118
    .local v2, "currentSessionId":I
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->mMediaCenterService:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->delayResumePlay:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 119
    const-string v3, "MuteManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playOrPause, isMusicPlay:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " &mute:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " &mReplyToUnMute"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->mReplyToUnMute:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " &otherPlayPackages:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const/4 v3, 0x2

    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    .line 123
    iput v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->mLastPauseSessionId:I

    .line 124
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->mReplyToUnMute:Z

    .line 125
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->mMediaCenterService:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v4, v0, v3, v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->playbackControl(III)I

    goto :goto_0

    .line 126
    :cond_0
    if-nez p1, :cond_1

    if-nez v1, :cond_1

    iget-boolean v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->mReplyToUnMute:Z

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->isOtherPlaying()Z

    move-result v4

    if-nez v4, :cond_1

    .line 127
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->resetPauseSessionId()V

    .line 128
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->mReplyToUnMute:Z

    .line 129
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->mMediaCenterService:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v4, v0, v3, v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->playbackControl(III)I

    .line 131
    :cond_1
    :goto_0
    return-void
.end method

.method private resetPauseSessionId()V
    .locals 1

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->mLastPauseSessionId:I

    .line 113
    return-void
.end method


# virtual methods
.method public init()V
    .locals 1

    .line 52
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->mMediaCenterService:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->mAudioChangeObserver:Lcom/xiaopeng/xuiservice/mediacenter/mute/AudioChangeObserver;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/mute/AudioChangeObserver;->register()V

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->mMediaCenterService:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->initMuteHandler(Landroid/os/Looper;)V

    .line 55
    return-void
.end method

.method public notifyIgStatus(Z)V
    .locals 1
    .param p1, "isIgOff"    # Z

    .line 171
    if-eqz p1, :cond_0

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->mReplyToUnMute:Z

    .line 174
    :cond_0
    return-void
.end method

.method public unMute(I)V
    .locals 7
    .param p1, "displayId"    # I

    .line 78
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 79
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->isDeviceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    return-void

    .line 82
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->getStreamType(I)I

    move-result v0

    .line 83
    .local v0, "streamType":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    .line 84
    .local v1, "isMute":Z
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 85
    .local v2, "currentVolume":I
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->isMusicPlay(I)Z

    move-result v3

    .line 86
    .local v3, "isMusicPlay":Z
    if-eqz v3, :cond_1

    .line 87
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->mReplyToUnMute:Z

    .line 89
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->resetPauseSessionId()V

    .line 90
    const-string v4, "MuteManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unMute displayId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " &isMute:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " &isMusicPlay:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " &currentVolume:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    if-nez v1, :cond_2

    if-nez v2, :cond_4

    :cond_2
    if-eqz v3, :cond_4

    .line 93
    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    .line 94
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->restoreMusicVolume()V

    goto :goto_0

    .line 95
    :cond_3
    nop

    .line 99
    :cond_4
    :goto_0
    return-void
.end method
